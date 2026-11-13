"use client";

import React, { useState, useEffect } from "react";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { Profile } from "@/lib/types";
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
  Users,
  Search,
  CheckCircle2,
  XCircle,
  Building,
  Mail,
  ShieldCheck,
  Clock,
  Trash2,
  Eye,
  Phone,
  FileCheck,
  AlertCircle,
} from "lucide-react";
import { toast } from "sonner";

const isValidUuid = (id?: string) =>
  Boolean(id && /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(id));

const DEFAULT_MOCK_BUYERS: Profile[] = [
  {
    id: "buyer-1",
    email: "procurement@atelierwest.com",
    company_name: "Atelier West Interior Architecture",
    tax_vat_number: "US-EIN-98765432",
    phone: "+1 (415) 890-1234",
    role: "buyer",
    is_approved: true,
    created_at: new Date(Date.now() - 86400000 * 2).toISOString(),
  },
  {
    id: "buyer-2",
    email: "purchasing@havenhotels.com",
    company_name: "Haven Boutique Hotel Resorts",
    tax_vat_number: "US-EIN-44129871",
    phone: "+1 (212) 555-8822",
    role: "buyer",
    is_approved: false,
    created_at: new Date(Date.now() - 86400000).toISOString(),
  },
  {
    id: "buyer-3",
    email: "procurement@soholux.co.uk",
    company_name: "Soho Living Retail Group",
    tax_vat_number: "GB-VAT-90182746",
    phone: "+44 20 7946 0991",
    role: "buyer",
    is_approved: false,
    created_at: new Date().toISOString(),
  },
];

export default function AdminBuyersPage() {
  const [buyers, setBuyers] = useState<Profile[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedBuyer, setSelectedBuyer] = useState<Profile | null>(null);
  const [updatingId, setUpdatingId] = useState<string | null>(null);

  const supabase = createClient();

  const fetchBuyers = async () => {
    try {
      // 1. Read deleted IDs set so deleted records never reappear
      let deletedIds = new Set<string>();
      try {
        const storedDeleted = localStorage.getItem("fhd_deleted_buyers");
        if (storedDeleted) {
          deletedIds = new Set(JSON.parse(storedDeleted));
        }
      } catch {}

      // 2. Fetch canonical buyer profiles from Supabase
      const { data, error } = await supabase
        .from("profiles")
        .select("*")
        .eq("role", "buyer")
        .order("created_at", { ascending: false });

      if (!error && data && data.length > 0) {
        // 3. Deduplicate exact and duplicate accounts by normalized email
        const uniqueByEmail = new Map<string, Profile>();
        const duplicateIdsToDelete: string[] = [];

        for (const buyer of data as Profile[]) {
          // If deleted previously by admin, mark for deletion from DB
          if (deletedIds.has(buyer.id)) {
            if (isValidUuid(buyer.id)) duplicateIdsToDelete.push(buyer.id);
            continue;
          }

          const normEmail = (buyer.email || "").trim().toLowerCase();
          if (!normEmail) continue;

          if (!uniqueByEmail.has(normEmail)) {
            uniqueByEmail.set(normEmail, buyer);
          } else {
            // Found a duplicate account with the same email!
            const existing = uniqueByEmail.get(normEmail)!;

            // Prioritize the entry that has approval, company details, or valid UUID
            const shouldReplace =
              (!existing.is_approved && buyer.is_approved) ||
              (!existing.company_name && buyer.company_name) ||
              (!existing.tax_vat_number && buyer.tax_vat_number) ||
              (!isValidUuid(existing.id) && isValidUuid(buyer.id));

            if (shouldReplace) {
              if (isValidUuid(existing.id)) duplicateIdsToDelete.push(existing.id);
              uniqueByEmail.set(normEmail, buyer);
            } else {
              if (isValidUuid(buyer.id)) duplicateIdsToDelete.push(buyer.id);
            }
          }
        }

        // Silently purge confirmed duplicate rows from Supabase in the background
        if (duplicateIdsToDelete.length > 0) {
          for (const dupId of duplicateIdsToDelete) {
            supabase.from("profiles").delete().eq("id", dupId).then(() => {});
          }
        }

        const cleanList = Array.from(uniqueByEmail.values());
        setBuyers(cleanList);
        localStorage.setItem("fhd_admin_buyers", JSON.stringify(cleanList));
      } else {
        // Fallback: check localStorage cache, else fallback to mock buyers
        try {
          const cached = localStorage.getItem("fhd_admin_buyers");
          if (cached) {
            const parsed = JSON.parse(cached);
            if (Array.isArray(parsed) && parsed.length > 0) {
              const active = parsed.filter((b: Profile) => !deletedIds.has(b.id));
              setBuyers(active);
              return;
            }
          }
        } catch {}

        const activeMocks = DEFAULT_MOCK_BUYERS.filter((b) => !deletedIds.has(b.id));
        setBuyers(activeMocks);
      }
    } catch (err) {
      console.warn("Could not load buyers from Supabase:", err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchBuyers();
    window.addEventListener("fhd_buyers_updated", fetchBuyers);
    return () => {
      window.removeEventListener("fhd_buyers_updated", fetchBuyers);
    };
  }, []);

  const handleToggleApproval = async (buyer: Profile) => {
    const nextStatus = !buyer.is_approved;
    setUpdatingId(buyer.id);

    // 1. Optimistic UI update
    const updatedBuyers = buyers.map((b) =>
      b.id === buyer.id ? { ...b, is_approved: nextStatus } : b
    );
    setBuyers(updatedBuyers);
    if (selectedBuyer?.id === buyer.id) {
      setSelectedBuyer({ ...selectedBuyer, is_approved: nextStatus });
    }
    localStorage.setItem("fhd_admin_buyers", JSON.stringify(updatedBuyers));
    window.dispatchEvent(new Event("fhd_buyers_updated"));

    // 2. Persist to Supabase if valid UUID
    try {
      if (isValidUuid(buyer.id)) {
        const { error } = await supabase
          .from("profiles")
          .update({
            is_approved: nextStatus,
            updated_at: new Date().toISOString(),
          })
          .eq("id", buyer.id);

        if (error) {
          console.warn("Supabase approval update notice:", error.message);
        }
      }

      toast.success(
        `${buyer.company_name || buyer.email} is now ${
          nextStatus ? "Approved for Wholesale Pricing" : "Approval Revoked"
        }!`
      );
    } catch (err: any) {
      toast.info(`Updated status to ${nextStatus ? "Approved" : "Pending"}`);
    } finally {
      setUpdatingId(null);
    }
  };

  const handleDeleteBuyer = async (buyerId: string, email: string) => {
    if (!window.confirm(`Are you sure you want to permanently delete the buyer account for "${email}"? This will eliminate any duplicate records.`)) {
      return;
    }

    // 1. Optimistic removal from state
    const remaining = buyers.filter((b) => b.id !== buyerId);
    setBuyers(remaining);
    if (selectedBuyer?.id === buyerId) {
      setSelectedBuyer(null);
    }

    // 2. Save to local deleted list & cache
    try {
      const storedDeleted = localStorage.getItem("fhd_deleted_buyers");
      const deletedSet = new Set(storedDeleted ? JSON.parse(storedDeleted) : []);
      deletedSet.add(buyerId);
      localStorage.setItem("fhd_deleted_buyers", JSON.stringify(Array.from(deletedSet)));
      localStorage.setItem("fhd_admin_buyers", JSON.stringify(remaining));
    } catch {}

    // 3. Delete from Supabase if valid UUID
    if (isValidUuid(buyerId)) {
      try {
        const { error } = await supabase.from("profiles").delete().eq("id", buyerId);
        if (error) {
          console.warn("Supabase buyer delete notice:", error.message);
        }
      } catch (e) {
        console.warn("Could not delete buyer from Supabase:", e);
      }
    }

    window.dispatchEvent(new Event("fhd_buyers_updated"));
    toast.success(`Buyer account for ${email} has been removed.`);
  };

  const filteredBuyers = buyers.filter((b) => {
    if (!searchQuery.trim()) return true;
    const q = searchQuery.toLowerCase();
    return (
      b.company_name?.toLowerCase().includes(q) ||
      b.email?.toLowerCase().includes(q) ||
      b.tax_vat_number?.toLowerCase().includes(q) ||
      b.phone?.toLowerCase().includes(q)
    );
  });

  return (
    <div className="flex-1 space-y-8 pb-12">
      <AdminHeader
        title="B2B Buyer Approvals"
        subtitle="Verify corporate credentials, Tax/VAT reseller certificates, and grant wholesale trade pricing privileges."
      />

      <div className="px-6 sm:px-8 space-y-6">
        {/* Search & Actions Bar */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div className="relative flex-1 max-w-md">
            <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-stone-400" />
            <Input
              placeholder="Search by Company, Email, Tax/VAT ID..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-10 bg-white border-fhd-border focus-visible:ring-fhd-sage"
            />
          </div>
          <div className="flex items-center space-x-3">
            <span className="text-xs text-stone-600 font-medium">
              {filteredBuyers.length} Verified Buyer Account{filteredBuyers.length === 1 ? "" : "s"}
            </span>
            <Button
              variant="outline"
              size="sm"
              onClick={() => fetchBuyers()}
              className="text-xs"
            >
              Refresh
            </Button>
          </div>
        </div>

        {/* Buyers Table */}
        <div className="rounded-lg border border-fhd-border bg-white shadow-xs overflow-hidden">
          <Table>
            <TableHeader>
              <TableRow className="bg-stone-50/75 border-b border-fhd-border">
                <TableHead className="font-semibold text-fhd-dark">Company Legal Entity</TableHead>
                <TableHead className="font-semibold text-fhd-dark">Contact Email</TableHead>
                <TableHead className="font-semibold text-fhd-dark">Phone</TableHead>
                <TableHead className="font-semibold text-fhd-dark">Tax / VAT Reseller ID</TableHead>
                <TableHead className="font-semibold text-fhd-dark">Registered</TableHead>
                <TableHead className="font-semibold text-fhd-dark">Wholesale Status</TableHead>
                <TableHead className="text-right font-semibold text-fhd-dark">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {loading ? (
                <TableRow>
                  <TableCell colSpan={7} className="text-center py-12 text-xs text-stone-500">
                    Loading verified trade buyer accounts...
                  </TableCell>
                </TableRow>
              ) : filteredBuyers.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={7} className="text-center py-12 text-xs text-stone-500">
                    No buyer accounts matching your criteria.
                  </TableCell>
                </TableRow>
              ) : (
                filteredBuyers.map((buyer) => (
                  <TableRow key={buyer.id} className="hover:bg-stone-50/50 transition-colors">
                    <TableCell>
                      <div className="flex items-center space-x-2.5">
                        <div className="w-8 h-8 rounded-full bg-stone-100 border border-stone-200 flex items-center justify-center flex-shrink-0 text-fhd-sage">
                          <Building className="w-4 h-4" />
                        </div>
                        <div>
                          <p className="font-semibold text-fhd-dark text-sm">
                            {buyer.company_name || "Unspecified Entity"}
                          </p>
                          <p className="text-[10px] text-stone-400 font-mono">
                            ID: {buyer.id.slice(0, 8)}...
                          </p>
                        </div>
                      </div>
                    </TableCell>

                    <TableCell className="text-xs font-mono text-stone-700">
                      <div className="flex items-center space-x-1">
                        <Mail className="w-3.5 h-3.5 text-stone-400 inline" />
                        <span>{buyer.email}</span>
                      </div>
                    </TableCell>

                    <TableCell className="text-xs text-stone-600">
                      {buyer.phone || "—"}
                    </TableCell>

                    <TableCell className="text-xs font-mono font-medium text-stone-700">
                      {buyer.tax_vat_number ? (
                        <span className="px-2 py-0.5 rounded bg-stone-100 border border-stone-200 text-stone-800">
                          {buyer.tax_vat_number}
                        </span>
                      ) : (
                        <span className="text-stone-400 italic">Not provided</span>
                      )}
                    </TableCell>

                    <TableCell className="text-xs text-stone-500">
                      {new Date(buyer.created_at || Date.now()).toLocaleDateString("en-US", {
                        month: "short",
                        day: "numeric",
                        year: "numeric",
                      })}
                    </TableCell>

                    <TableCell>
                      {buyer.is_approved ? (
                        <Badge variant="success" className="flex items-center space-x-1 w-fit">
                          <CheckCircle2 className="w-3 h-3 mr-1" />
                          <span>Approved</span>
                        </Badge>
                      ) : (
                        <Badge variant="gold" className="flex items-center space-x-1 w-fit">
                          <Clock className="w-3 h-3 mr-1" />
                          <span>Pending Review</span>
                        </Badge>
                      )}
                    </TableCell>

                    <TableCell className="text-right">
                      <div className="flex items-center justify-end space-x-2">
                        {/* Inspect Details Button */}
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={() => setSelectedBuyer(buyer)}
                          className="h-8 w-8 p-0 text-stone-600 hover:text-fhd-dark"
                          title="Inspect Buyer Details"
                        >
                          <Eye className="w-4 h-4" />
                        </Button>

                        {/* Toggle Approval Button */}
                        <Button
                          variant={buyer.is_approved ? "outline" : "sage"}
                          size="sm"
                          disabled={updatingId === buyer.id}
                          onClick={() => handleToggleApproval(buyer)}
                          className="text-xs h-8"
                        >
                          {buyer.is_approved ? "Revoke" : "Approve Buyer"}
                        </Button>

                        {/* Delete Buyer Button */}
                        <Button
                          variant="ghost"
                          size="sm"
                          onClick={() => handleDeleteBuyer(buyer.id, buyer.email)}
                          className="h-8 w-8 p-0 text-stone-400 hover:text-red-600 hover:bg-red-50"
                          title="Delete Buyer Account"
                        >
                          <Trash2 className="w-4 h-4" />
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

      {/* Buyer Details Inspection Dialog */}
      <Dialog open={!!selectedBuyer} onOpenChange={(open) => !open && setSelectedBuyer(null)}>
        {selectedBuyer && (
          <>
            <DialogHeader className="border-b border-fhd-border pb-4">
              <div className="flex items-center justify-between">
                <div>
                  <DialogTitle className="text-xl font-serif text-fhd-dark flex items-center space-x-2">
                    <span>{selectedBuyer.company_name || "Buyer Account Inspection"}</span>
                  </DialogTitle>
                  <DialogDescription className="text-xs text-stone-500 font-mono mt-1">
                    System UUID: {selectedBuyer.id}
                  </DialogDescription>
                </div>
                {selectedBuyer.is_approved ? (
                  <Badge variant="success" className="text-xs">
                    Wholesale Access Granted
                  </Badge>
                ) : (
                  <Badge variant="gold" className="text-xs">
                    Pending Trade Review
                  </Badge>
                )}
              </div>
            </DialogHeader>

            <div className="space-y-6 py-4">
              {/* Corporate Credentials Grid */}
              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div className="p-3.5 rounded-lg border border-fhd-border/60 bg-stone-50/50 space-y-1">
                  <span className="text-[11px] font-semibold text-stone-500 uppercase tracking-wider block">
                    Contact Email
                  </span>
                  <p className="text-sm font-mono font-medium text-fhd-dark break-all">
                    {selectedBuyer.email}
                  </p>
                </div>

                <div className="p-3.5 rounded-lg border border-fhd-border/60 bg-stone-50/50 space-y-1">
                  <span className="text-[11px] font-semibold text-stone-500 uppercase tracking-wider block">
                    Phone / WhatsApp
                  </span>
                  <p className="text-sm font-mono font-medium text-fhd-dark">
                    {selectedBuyer.phone || "Not provided"}
                  </p>
                </div>

                <div className="p-3.5 rounded-lg border border-fhd-border/60 bg-stone-50/50 space-y-1">
                  <span className="text-[11px] font-semibold text-stone-500 uppercase tracking-wider block">
                    Tax / Resale EIN ID
                  </span>
                  <p className="text-sm font-mono font-semibold text-stone-800">
                    {selectedBuyer.tax_vat_number || "No certificate on file"}
                  </p>
                </div>

                <div className="p-3.5 rounded-lg border border-fhd-border/60 bg-stone-50/50 space-y-1">
                  <span className="text-[11px] font-semibold text-stone-500 uppercase tracking-wider block">
                    Application Date
                  </span>
                  <p className="text-sm text-stone-700">
                    {new Date(selectedBuyer.created_at || Date.now()).toLocaleDateString("en-US", {
                      weekday: "long",
                      year: "numeric",
                      month: "long",
                      day: "numeric",
                    })}
                  </p>
                </div>
              </div>

              {/* Status & Privileges Notice */}
              <div className="p-4 rounded-lg bg-stone-50 border border-stone-200 flex items-start space-x-3">
                <ShieldCheck className="w-5 h-5 text-fhd-sage flex-shrink-0 mt-0.5" />
                <div className="text-xs text-stone-600 space-y-1">
                  <p className="font-semibold text-fhd-dark">Wholesale Trade Privileges</p>
                  <p>
                    {selectedBuyer.is_approved
                      ? "This buyer is verified. They can see container-load wholesale pricing, volume discount brackets, and submit direct RFQs."
                      : "This buyer is currently under review. Approving will grant access to trade tier discounts and pro-forma invoice ordering."}
                  </p>
                </div>
              </div>
            </div>

            <DialogFooter className="flex items-center justify-between sm:justify-between w-full border-t border-fhd-border pt-4">
              <Button
                variant="destructive"
                size="sm"
                onClick={() => handleDeleteBuyer(selectedBuyer.id, selectedBuyer.email)}
                className="text-xs"
              >
                <Trash2 className="w-3.5 h-3.5 mr-1" />
                Delete Buyer
              </Button>

              <div className="flex items-center space-x-2">
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setSelectedBuyer(null)}
                  className="text-xs"
                >
                  Close
                </Button>
                <Button
                  variant={selectedBuyer.is_approved ? "outline" : "sage"}
                  size="sm"
                  onClick={() => handleToggleApproval(selectedBuyer)}
                  className="text-xs"
                >
                  {selectedBuyer.is_approved ? "Revoke Approval" : "Grant Wholesale Approval"}
                </Button>
              </div>
            </DialogFooter>
          </>
        )}
      </Dialog>
    </div>
  );
}


