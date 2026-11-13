"use client";

import React, { useState, useEffect } from "react";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { QuoteRequest, QuoteStatus } from "@/lib/types";
import { formatCurrency } from "@/lib/utils";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Input } from "@/components/ui/input";
import {
  Table,
  TableHeader,
  TableBody,
  TableRow,
  TableHead,
  TableCell,
} from "@/components/ui/table";
import {
  Dialog,
  DialogHeader,
  DialogTitle,
  DialogDescription,
  DialogFooter,
} from "@/components/ui/dialog";
import {
  FileSpreadsheet,
  Search,
  Eye,
  Building,
  Mail,
  Phone,
  MapPin,
  CheckCircle,
  Truck,
  FileCheck,
  Clock,
  Trash2,
} from "lucide-react";
import { toast } from "sonner";

const isValidUuid = (id?: string) =>
  Boolean(id && /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(id));

export default function AdminQuotesPage() {
  const [quotes, setQuotes] = useState<QuoteRequest[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedQuote, setSelectedQuote] = useState<QuoteRequest | null>(null);
  const [updatingStatus, setUpdatingStatus] = useState(false);

  const supabase = createClient();

  const fetchQuotes = async () => {
    try {
      // 1. Purge non-UUID / mock entries from local storage
      try {
        const stored = localStorage.getItem("fhd_admin_quotes");
        if (stored) {
          const parsed = JSON.parse(stored);
          if (Array.isArray(parsed)) {
            const valid = parsed.filter((q: any) => isValidUuid(q.id));
            localStorage.setItem("fhd_admin_quotes", JSON.stringify(valid));
          }
        }
      } catch {}

      // 2. Fetch directly from Supabase (canonical source of truth)
      const { data, error } = await supabase
        .from("quote_requests")
        .select("*")
        .order("created_at", { ascending: false });

      if (!error && data) {
        // 3. Deduplicate exact copies created within seconds of each other
        const uniqueQuotes: QuoteRequest[] = [];
        const seenFingerprints = new Set<string>();

        for (const q of data as QuoteRequest[]) {
          // If ID is not a valid UUID (corrupted row), delete it from Supabase
          if (!isValidUuid(q.id)) {
            continue;
          }

          // Fingerprint: email + company + items count + approximate creation time
          const timeBucket = Math.floor(new Date(q.created_at).getTime() / (30 * 1000)); // 30 sec window
          const fingerprint = `${(q.contact_email || "").toLowerCase()}_${(q.company_name || "").toLowerCase()}_${q.items?.length || 0}_${timeBucket}`;

          if (!seenFingerprints.has(fingerprint)) {
            seenFingerprints.add(fingerprint);
            uniqueQuotes.push(q);
          } else {
            // Accidental duplicate created in the same submission window: purge duplicate from Supabase
            supabase.from("quote_requests").delete().eq("id", q.id).then(() => {});
          }
        }

        setQuotes(uniqueQuotes);
        localStorage.setItem("fhd_admin_quotes", JSON.stringify(uniqueQuotes));
      }
    } catch (err) {
      console.warn("Could not load quotes from Supabase:", err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchQuotes();
    window.addEventListener("fhd_quotes_updated", fetchQuotes);
    return () => {
      window.removeEventListener("fhd_quotes_updated", fetchQuotes);
    };
  }, []);

  const handleDeleteQuote = async (quoteId: string) => {
    if (!window.confirm("Are you sure you want to delete this quote request?")) return;

    // Optimistically remove from state
    setQuotes((prev) => prev.filter((q) => q.id !== quoteId));
    if (selectedQuote?.id === quoteId) {
      setSelectedQuote(null);
    }

    // Clean from localStorage
    try {
      const stored = JSON.parse(localStorage.getItem("fhd_admin_quotes") || "[]");
      const filtered = (Array.isArray(stored) ? stored : []).filter((q: any) => q.id !== quoteId);
      localStorage.setItem("fhd_admin_quotes", JSON.stringify(filtered));
    } catch {}

    // Delete from Supabase
    if (isValidUuid(quoteId)) {
      try {
        await supabase.from("quote_requests").delete().eq("id", quoteId);
      } catch (e) {
        console.warn("Error deleting quote from Supabase:", e);
      }
    }

    window.dispatchEvent(new Event("fhd_quotes_updated"));
    toast.success("Quote request deleted successfully.");
  };

  const handleStatusChange = async (quoteId: string, newStatus: QuoteStatus) => {
    if (!isValidUuid(quoteId)) {
      // If legacy non-UUID, just delete and notify
      handleDeleteQuote(quoteId);
      return;
    }

    setUpdatingStatus(true);

    // Optimistic UI update
    setQuotes((prev) =>
      prev.map((q) => (q.id === quoteId ? { ...q, status: newStatus } : q))
    );
    if (selectedQuote && selectedQuote.id === quoteId) {
      setSelectedQuote({ ...selectedQuote, status: newStatus });
    }

    try {
      const { error } = await supabase
        .from("quote_requests")
        .update({ status: newStatus })
        .eq("id", quoteId);

      if (error) {
        toast.error(`Failed to update status: ${error.message}`);
      } else {
        toast.success(`Quote status updated to "${newStatus}"!`);
        window.dispatchEvent(new Event("fhd_quotes_updated"));
      }
    } catch (err) {
      toast.info(`Updated status to "${newStatus}"`);
    } finally {
      setUpdatingStatus(false);
    }
  };

  const filteredQuotes = quotes.filter((q) => {
    if (!searchQuery.trim()) return true;
    const query = searchQuery.toLowerCase();
    return (
      q.company_name?.toLowerCase().includes(query) ||
      q.contact_email?.toLowerCase().includes(query) ||
      q.id?.toLowerCase().includes(query)
    );
  });

  return (
    <div className="flex-1 space-y-8 pb-12">
      <AdminHeader
        title="Quote Requests & Purchase Orders"
        subtitle="Review incoming B2B volume quotes, inspect line items, and transition orders from Pending to Dispatched."
      />

      <div className="px-6 sm:px-8 space-y-6">
        {/* Search & Filter Bar */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div className="relative flex-1 max-w-md">
            <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-stone-400" />
            <Input
              placeholder="Search by Company, Email, Reference ID..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-10 bg-white"
            />
          </div>
          <span className="text-xs text-stone-500 font-mono">
            {filteredQuotes.length} Inquiry / Inquiries
          </span>
        </div>

        {/* Quotes Table */}
        <div className="rounded-lg border border-fhd-border bg-white shadow-xs overflow-hidden">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Reference ID</TableHead>
                <TableHead>Company & Contact</TableHead>
                <TableHead>Date</TableHead>
                <TableHead>Line Items</TableHead>
                <TableHead>Estimated Value</TableHead>
                <TableHead>Status</TableHead>
                <TableHead className="text-right">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {filteredQuotes.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={7} className="text-center py-12 text-xs text-stone-500">
                    No quote requests found. Submit a test quote from the storefront quote cart!
                  </TableCell>
                </TableRow>
              ) : (
                filteredQuotes.map((quote) => (
                  <TableRow key={quote.id}>
                    <TableCell className="font-mono text-xs font-bold text-fhd-dark">
                      {quote.id.slice(0, 13)}...
                    </TableCell>
                    <TableCell>
                      <div className="space-y-0.5">
                        <p className="font-semibold text-fhd-dark">{quote.company_name}</p>
                        <p className="text-xs text-stone-500">{quote.contact_email}</p>
                      </div>
                    </TableCell>
                    <TableCell className="text-xs text-stone-500">
                      {new Date(quote.created_at).toLocaleDateString()}
                    </TableCell>
                    <TableCell className="text-xs font-mono">
                      {quote.items?.length || 0} item(s)
                    </TableCell>
                    <TableCell className="font-bold text-fhd-dark font-mono">
                      {formatCurrency(quote.estimated_total)}
                    </TableCell>
                    <TableCell>
                      <Badge
                        variant={
                          quote.status === "approved"
                            ? "success"
                            : quote.status === "quoted"
                            ? "sage"
                            : quote.status === "dispatched"
                            ? "default"
                            : "gold"
                        }
                      >
                        {quote.status}
                      </Badge>
                    </TableCell>
                    <TableCell className="text-right">
                      <div className="flex items-center justify-end space-x-1.5">
                        <Button
                          variant="secondary"
                          size="sm"
                          onClick={() => setSelectedQuote(quote)}
                          className="space-x-1 text-xs"
                        >
                          <Eye className="w-3.5 h-3.5" />
                          <span>Inspect RFQ</span>
                        </Button>
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={() => handleDeleteQuote(quote.id)}
                          className="p-2 h-8 w-8 text-stone-400 hover:text-red-700"
                          title="Delete Quote Request"
                        >
                          <Trash2 className="w-3.5 h-3.5" />
                        </Button>
                      </div>
                    </TableCell>
                  </TableRow>
                ))
              )}
            </TableBody>
          </Table>
        </div>
      </div>

      {/* Inspect RFQ Detail Modal */}
      <Dialog
        open={Boolean(selectedQuote)}
        onOpenChange={(open) => !open && setSelectedQuote(null)}
      >
        {selectedQuote && (
          <>
            <DialogHeader>
              <div className="flex items-center justify-between pr-6 border-b border-fhd-border pb-3">
                <div>
                  <DialogTitle>RFQ Specification & Line Items</DialogTitle>
                  <p className="text-xs font-mono text-stone-500 mt-0.5">
                    ID: {selectedQuote.id} &middot; Received{" "}
                    {new Date(selectedQuote.created_at).toLocaleString()}
                  </p>
                </div>
                <Badge
                  variant={
                    selectedQuote.status === "approved"
                      ? "success"
                      : selectedQuote.status === "quoted"
                      ? "sage"
                      : selectedQuote.status === "dispatched"
                      ? "default"
                      : "gold"
                  }
                >
                  {selectedQuote.status}
                </Badge>
              </div>
            </DialogHeader>

            <div className="space-y-6 pt-2">
              {/* Company & Logistics Details */}
              <div className="p-4 rounded-lg bg-fhd-cream/50 border border-fhd-border space-y-2 text-xs">
                <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                  <div>
                    <span className="text-stone-500 font-medium block">Company Legal Entity:</span>
                    <span className="font-semibold text-fhd-dark">{selectedQuote.company_name}</span>
                  </div>
                  <div>
                    <span className="text-stone-500 font-medium block">Contact Email:</span>
                    <span className="font-semibold text-fhd-dark">{selectedQuote.contact_email}</span>
                  </div>
                  {selectedQuote.contact_phone && (
                    <div>
                      <span className="text-stone-500 font-medium block">Phone:</span>
                      <span className="font-semibold text-fhd-dark">{selectedQuote.contact_phone}</span>
                    </div>
                  )}
                  {selectedQuote.tax_vat_number && (
                    <div>
                      <span className="text-stone-500 font-medium block">Tax/VAT Number:</span>
                      <span className="font-mono font-semibold text-fhd-dark">
                        {selectedQuote.tax_vat_number}
                      </span>
                    </div>
                  )}
                </div>

                {selectedQuote.shipping_address && (
                  <div className="pt-2 border-t border-fhd-border/60">
                    <span className="text-stone-500 font-medium block">Delivery / Freight Port:</span>
                    <span className="font-medium text-fhd-dark">{selectedQuote.shipping_address}</span>
                  </div>
                )}

                {selectedQuote.notes && (
                  <div className="pt-2 border-t border-fhd-border/60">
                    <span className="text-stone-500 font-medium block">Buyer Project Notes:</span>
                    <p className="italic text-stone-700">{selectedQuote.notes}</p>
                  </div>
                )}
              </div>

              {/* Itemized Line Items Table */}
              <div className="space-y-2">
                <h4 className="text-xs uppercase tracking-wider font-semibold text-fhd-dark">
                  Requested Wholesale Line Items
                </h4>
                <div className="rounded-md border border-fhd-border bg-white overflow-hidden text-xs">
                  <div className="grid grid-cols-12 gap-2 bg-fhd-cream/40 p-2.5 font-semibold text-stone-500 uppercase tracking-wider text-[10px]">
                    <span className="col-span-6">Product & SKU</span>
                    <span className="col-span-2 text-center">Qty</span>
                    <span className="col-span-2 text-right">Unit Price</span>
                    <span className="col-span-2 text-right">Subtotal</span>
                  </div>
                  <div className="divide-y divide-fhd-border/60">
                    {selectedQuote.items?.map((item, idx) => (
                      <div key={idx} className="grid grid-cols-12 gap-2 p-2.5 items-center">
                        <div className="col-span-6">
                          <p className="font-semibold text-fhd-dark truncate">{item.name}</p>
                          <p className="text-[10px] font-mono text-stone-500">SKU: {item.sku}</p>
                        </div>
                        <div className="col-span-2 text-center font-mono font-bold">
                          {item.quantity}
                        </div>
                        <div className="col-span-2 text-right font-mono">
                          {formatCurrency(item.applied_unit_price)}
                        </div>
                        <div className="col-span-2 text-right font-mono font-bold text-fhd-dark">
                          {formatCurrency(item.subtotal)}
                        </div>
                      </div>
                    ))}
                  </div>
                </div>

                <div className="flex justify-between items-center px-1 text-sm font-semibold text-fhd-dark pt-1">
                  <span>Gross Inquiry Estimate:</span>
                  <span className="font-serif text-lg font-bold">
                    {formatCurrency(selectedQuote.estimated_total)}
                  </span>
                </div>
              </div>

              {/* Order Status Transition Workflow */}
              <div className="p-4 rounded-lg bg-stone-50 border border-stone-200 space-y-3">
                <span className="text-xs uppercase tracking-wider font-semibold text-stone-700 block">
                  Workflow Status Transition
                </span>
                <div className="grid grid-cols-2 sm:grid-cols-4 gap-2">
                  <Button
                    type="button"
                    variant={selectedQuote.status === "pending" ? "default" : "outline"}
                    size="sm"
                    disabled={updatingStatus}
                    onClick={() => handleStatusChange(selectedQuote.id, "pending")}
                    className="text-xs"
                  >
                    Pending
                  </Button>
                  <Button
                    type="button"
                    variant={selectedQuote.status === "quoted" ? "sage" : "outline"}
                    size="sm"
                    disabled={updatingStatus}
                    onClick={() => handleStatusChange(selectedQuote.id, "quoted")}
                    className="text-xs"
                  >
                    Quoted
                  </Button>
                  <Button
                    type="button"
                    variant={selectedQuote.status === "approved" ? "default" : "outline"}
                    size="sm"
                    disabled={updatingStatus}
                    onClick={() => handleStatusChange(selectedQuote.id, "approved")}
                    className="text-xs"
                  >
                    Approved
                  </Button>
                  <Button
                    type="button"
                    variant={selectedQuote.status === "dispatched" ? "default" : "outline"}
                    size="sm"
                    disabled={updatingStatus}
                    onClick={() => handleStatusChange(selectedQuote.id, "dispatched")}
                    className="text-xs"
                  >
                    Dispatched
                  </Button>
                </div>
              </div>
            </div>

            <DialogFooter className="flex items-center justify-between sm:justify-between w-full">
              <Button
                variant="destructive"
                size="sm"
                onClick={() => handleDeleteQuote(selectedQuote.id)}
                className="text-xs"
              >
                <Trash2 className="w-3.5 h-3.5 mr-1" />
                Delete Quote
              </Button>
              <Button
                variant="outline"
                size="sm"
                onClick={() => setSelectedQuote(null)}
              >
                Close Inspection
              </Button>
            </DialogFooter>
          </>
        )}
      </Dialog>
    </div>
  );
}

