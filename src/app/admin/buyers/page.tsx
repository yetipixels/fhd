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
  Users,
  Search,
  CheckCircle2,
  XCircle,
  Building,
  Mail,
  ShieldCheck,
  Clock,
} from "lucide-react";
import { toast } from "sonner";

export default function AdminBuyersPage() {
  const [buyers, setBuyers] = useState<Profile[]>([]);
  const [loading, setLoading] = useState(true);
  const [searchQuery, setSearchQuery] = useState("");

  const supabase = createClient();

  const fetchBuyers = async () => {
    try {
      const { data, error } = await supabase
        .from("profiles")
        .select("*")
        .eq("role", "buyer")
        .order("created_at", { ascending: false });

      if (!error && data) {
        setBuyers(data as Profile[]);
      } else {
        // Sample mock buyers for instant dashboard preview if empty
        setBuyers([
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
        ]);
      }
    } catch (err) {
      console.warn("Could not load buyers from Supabase:", err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchBuyers();
  }, []);

  const handleToggleApproval = async (buyer: Profile) => {
    const nextStatus = !buyer.is_approved;

    // Optimistic update
    setBuyers((prev) =>
      prev.map((b) => (b.id === buyer.id ? { ...b, is_approved: nextStatus } : b))
    );

    try {
      const { error } = await supabase
        .from("profiles")
        .update({ is_approved: nextStatus })
        .eq("id", buyer.id);

      if (error) {
        toast.error(`Failed to update approval: ${error.message}`);
        setBuyers((prev) =>
          prev.map((b) => (b.id === buyer.id ? { ...b, is_approved: !nextStatus } : b))
        );
      } else {
        toast.success(
          `${buyer.company_name || buyer.email} is now ${
            nextStatus ? "Approved for Wholesale" : "Approval Revoked"
          }!`
        );
      }
    } catch (err) {
      toast.info(
        `Updated local status to ${nextStatus ? "Approved" : "Pending"}`
      );
    }
  };

  const filteredBuyers = buyers.filter((b) => {
    if (!searchQuery.trim()) return true;
    const q = searchQuery.toLowerCase();
    return (
      b.company_name?.toLowerCase().includes(q) ||
      b.email?.toLowerCase().includes(q) ||
      b.tax_vat_number?.toLowerCase().includes(q)
    );
  });

  return (
    <div className="flex-1 space-y-8 pb-12">
      <AdminHeader
        title="B2B Buyer Approvals"
        subtitle="Verify corporate credentials, Tax/VAT reseller certificates, and grant wholesale trade pricing privileges."
      />

      <div className="px-6 sm:px-8 space-y-6">
        {/* Search Bar */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div className="relative flex-1 max-w-md">
            <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-stone-400" />
            <Input
              placeholder="Search by Company, Email, Tax/VAT ID..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-10 bg-white"
            />
          </div>
          <span className="text-xs text-stone-500 font-mono">
            {filteredBuyers.length} Registered Account(s)
          </span>
        </div>

        {/* Buyers Table */}
        <div className="rounded-lg border border-fhd-border bg-white shadow-xs overflow-hidden">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead>Company Legal Entity</TableHead>
                <TableHead>Contact Email</TableHead>
                <TableHead>Phone</TableHead>
                <TableHead>Tax / VAT Reseller ID</TableHead>
                <TableHead>Registration Date</TableHead>
                <TableHead>Status</TableHead>
                <TableHead className="text-right">Action</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {filteredBuyers.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={7} className="text-center py-12 text-xs text-stone-500">
                    No buyer accounts found.
                  </TableCell>
                </TableRow>
              ) : (
                filteredBuyers.map((buyer) => (
                  <TableRow key={buyer.id}>
                    <TableCell>
                      <div className="flex items-center space-x-2">
                        <Building className="w-4 h-4 text-fhd-sage flex-shrink-0" />
                        <span className="font-semibold text-fhd-dark">
                          {buyer.company_name || "Unspecified Entity"}
                        </span>
                      </div>
                    </TableCell>

                    <TableCell className="text-xs font-mono text-stone-600">
                      {buyer.email}
                    </TableCell>

                    <TableCell className="text-xs text-stone-600">
                      {buyer.phone || "—"}
                    </TableCell>

                    <TableCell className="text-xs font-mono font-medium text-stone-700">
                      {buyer.tax_vat_number || "—"}
                    </TableCell>

                    <TableCell className="text-xs text-stone-500">
                      {new Date(buyer.created_at || Date.now()).toLocaleDateString()}
                    </TableCell>

                    <TableCell>
                      {buyer.is_approved ? (
                        <Badge variant="success" className="flex items-center space-x-1">
                          <CheckCircle2 className="w-3 h-3 mr-1" />
                          <span>Approved</span>
                        </Badge>
                      ) : (
                        <Badge variant="gold" className="flex items-center space-x-1">
                          <Clock className="w-3 h-3 mr-1" />
                          <span>Pending Review</span>
                        </Badge>
                      )}
                    </TableCell>

                    <TableCell className="text-right">
                      <Button
                        variant={buyer.is_approved ? "outline" : "sage"}
                        size="sm"
                        onClick={() => handleToggleApproval(buyer)}
                        className="text-xs"
                      >
                        {buyer.is_approved ? "Revoke Approval" : "Approve Buyer"}
                      </Button>
                    </TableCell>
                  </TableRow>
                ))
              )}
            </TableBody>
          </Table>
        </div>
      </div>
    </div>
  );
}

