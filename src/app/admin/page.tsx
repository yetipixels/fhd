"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { formatCurrency } from "@/lib/utils";
import { QuoteRequest, Product, Profile } from "@/lib/types";
import { MOCK_PRODUCTS } from "@/lib/mock-data";
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  Table,
  TableHeader,
  TableBody,
  TableRow,
  TableHead,
  TableCell,
} from "@/components/ui/table";
import {
  Package,
  FileSpreadsheet,
  Users,
  DollarSign,
  Plus,
  ArrowRight,
  Clock,
  CheckCircle,
} from "lucide-react";

export default function AdminDashboardPage() {
  const [productsCount, setProductsCount] = useState<number>(MOCK_PRODUCTS.length);
  const [pendingQuotesCount, setPendingQuotesCount] = useState<number>(0);
  const [approvedBuyersCount, setApprovedBuyersCount] = useState<number>(0);
  const [pipelineTotal, setPipelineTotal] = useState<number>(0);
  const [recentQuotes, setRecentQuotes] = useState<QuoteRequest[]>([]);
  const [loading, setLoading] = useState(true);

  const supabase = createClient();

  useEffect(() => {
    async function loadStats() {
      try {
        // Products count
        let totalCount = MOCK_PRODUCTS.length;
        try {
          const stored = localStorage.getItem("fhd_admin_products");
          if (stored) {
            const parsed = JSON.parse(stored);
            if (Array.isArray(parsed) && parsed.length > 0) {
              totalCount = parsed.length;
            }
          }
        } catch {}

        const { count: pCount } = await supabase
          .from("products")
          .select("*", { count: "exact", head: true });
        if (pCount !== null && pCount > totalCount) {
          totalCount = pCount;
        }
        setProductsCount(totalCount);

        // Quotes - fetch directly from Supabase and deduplicate
        const { data: qData } = await supabase
          .from("quote_requests")
          .select("*")
          .order("created_at", { ascending: false });

        if (qData) {
          const uniqueQuotes: QuoteRequest[] = [];
          const seen = new Set<string>();

          (qData as QuoteRequest[]).forEach((q) => {
            const isUuid = /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(q.id);
            if (!isUuid) return;
            const timeBucket = Math.floor(new Date(q.created_at).getTime() / (30 * 1000));
            const fp = `${(q.contact_email || "").toLowerCase()}_${q.items?.length || 0}_${timeBucket}`;
            if (!seen.has(fp)) {
              seen.add(fp);
              uniqueQuotes.push(q);
            }
          });

          setRecentQuotes(uniqueQuotes);
          const pending = uniqueQuotes.filter((q) => q.status === "pending").length;
          setPendingQuotesCount(pending);
          const totalVal = uniqueQuotes.reduce((acc, q) => acc + Number(q.estimated_total || 0), 0);
          setPipelineTotal(totalVal);
        }

        // Clean local storage cache
        try {
          const stored = localStorage.getItem("fhd_admin_quotes");
          if (stored) {
            const parsed = JSON.parse(stored);
            if (Array.isArray(parsed)) {
              const valid = parsed.filter((q: any) =>
                q.id && /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(q.id)
              );
              localStorage.setItem("fhd_admin_quotes", JSON.stringify(valid));
            }
          }
        } catch {}

        // 3. Verified Trade Buyers (Deduplicated by Email & Synchronized with Admin Approvals)
        let deletedBuyerIds = new Set<string>();
        try {
          const storedDeleted = localStorage.getItem("fhd_deleted_buyers");
          if (storedDeleted) deletedBuyerIds = new Set(JSON.parse(storedDeleted));
        } catch {}

        const { data: bData } = await supabase
          .from("profiles")
          .select("id, email, is_approved")
          .eq("role", "buyer");

        if (bData && bData.length > 0) {
          const uniqueBuyers = new Map<string, boolean>();
          for (const b of bData) {
            if (deletedBuyerIds.has(b.id)) continue;
            const normEmail = (b.email || "").trim().toLowerCase();
            if (normEmail) {
              const current = uniqueBuyers.get(normEmail) || false;
              uniqueBuyers.set(normEmail, current || Boolean(b.is_approved));
            }
          }
          const approved = Array.from(uniqueBuyers.values()).filter(Boolean).length;
          setApprovedBuyersCount(approved);
        } else {
          // Check cached admin buyers
          try {
            const cached = localStorage.getItem("fhd_admin_buyers");
            if (cached) {
              const parsed = JSON.parse(cached);
              if (Array.isArray(parsed)) {
                const active = parsed.filter((b: any) => !deletedBuyerIds.has(b.id));
                const approved = active.filter((b: any) => b.is_approved).length;
                setApprovedBuyersCount(approved);
              }
            }
          } catch {}
        }
      } catch (err) {
        console.warn("Could not load admin stats from Supabase:", err);
      } finally {
        setLoading(false);
      }
    }

    loadStats();
    window.addEventListener("fhd_quotes_updated", loadStats);
    window.addEventListener("fhd_buyers_updated", loadStats);
    return () => {
      window.removeEventListener("fhd_quotes_updated", loadStats);
      window.removeEventListener("fhd_buyers_updated", loadStats);
    };
  }, []);

  return (
    <div className="flex-1 space-y-8 pb-12">
      <AdminHeader
        title="Dashboard Overview"
        subtitle="Wholesale catalog performance, pending RFQ inquiries, and buyer account management."
      />

      <div className="px-6 sm:px-8 space-y-8">
        {/* KPI Cards Row */}
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-4 gap-6">
          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="flex flex-row items-center justify-between pb-2 space-y-0">
              <span className="text-xs uppercase tracking-wider font-semibold text-stone-500">
                Total Products
              </span>
              <Package className="w-4 h-4 text-fhd-sage" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold font-serif text-fhd-dark">
                {productsCount}
              </div>
              <p className="text-[11px] text-stone-500 mt-1">
                Active catalog SKUs in Supabase
              </p>
            </CardContent>
          </Card>

          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="flex flex-row items-center justify-between pb-2 space-y-0">
              <span className="text-xs uppercase tracking-wider font-semibold text-stone-500">
                Pending Quotes
              </span>
              <FileSpreadsheet className="w-4 h-4 text-amber-600" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold font-serif text-fhd-dark">
                {pendingQuotesCount}
              </div>
              <p className="text-[11px] text-amber-700 mt-1">
                Awaiting pro-forma pricing review
              </p>
            </CardContent>
          </Card>

          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="flex flex-row items-center justify-between pb-2 space-y-0">
              <span className="text-xs uppercase tracking-wider font-semibold text-stone-500">
                Approved Buyers
              </span>
              <Users className="w-4 h-4 text-fhd-sage" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold font-serif text-fhd-dark">
                {approvedBuyersCount}
              </div>
              <p className="text-[11px] text-stone-500 mt-1">
                Verified B2B wholesale partners
              </p>
            </CardContent>
          </Card>

          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="flex flex-row items-center justify-between pb-2 space-y-0">
              <span className="text-xs uppercase tracking-wider font-semibold text-stone-500">
                Pipeline Value
              </span>
              <DollarSign className="w-4 h-4 text-fhd-sage" />
            </CardHeader>
            <CardContent>
              <div className="text-2xl font-bold font-serif text-fhd-dark">
                {formatCurrency(pipelineTotal)}
              </div>
              <p className="text-[11px] text-stone-500 mt-1">
                Gross estimated RFQ inquiries
              </p>
            </CardContent>
          </Card>
        </div>

        {/* Quick Actions Bar */}
        <div className="flex flex-wrap items-center gap-3 p-4 rounded-lg bg-fhd-cream/40 border border-fhd-border">
          <span className="text-xs uppercase tracking-wider font-semibold text-fhd-dark mr-2">
            Quick Actions:
          </span>
          <Link href="/admin/products/new">
            <Button variant="default" size="sm" className="space-x-1.5">
              <Plus className="w-3.5 h-3.5" />
              <span>Add New Product</span>
            </Button>
          </Link>
          <Link href="/admin/quotes">
            <Button variant="secondary" size="sm">
              Manage Quote Requests
            </Button>
          </Link>
          <Link href="/admin/buyers">
            <Button variant="secondary" size="sm">
              Review Trade Buyers
            </Button>
          </Link>
          <Link href="/admin/categories">
            <Button variant="outline" size="sm">
              Taxonomy Categories
            </Button>
          </Link>
          <Link href="/admin/banners">
            <Button variant="outline" size="sm" className="space-x-1.5">
              <span>Banner &amp; Offer</span>
            </Button>
          </Link>
        </div>

        {/* Recent Quote Inquiries Table */}
        <Card className="border-fhd-border shadow-xs">
          <CardHeader className="flex flex-row items-center justify-between border-b border-fhd-border pb-4">
            <div>
              <CardTitle className="text-xl">Recent Wholesale Purchase Inquiries</CardTitle>
              <p className="text-xs text-stone-500 mt-0.5">
                Incoming purchase orders and requests for quote submitted through the portal.
              </p>
            </div>
            <Link href="/admin/quotes">
              <Button variant="outline" size="sm">
                View All Quotes &rarr;
              </Button>
            </Link>
          </CardHeader>
          <CardContent className="p-0">
            {recentQuotes.length === 0 ? (
              <div className="p-8 text-center text-xs text-stone-500">
                No quote requests submitted yet. Test by adding products to your quote cart in the storefront!
              </div>
            ) : (
              <Table>
                <TableHeader>
                  <TableRow>
                    <TableHead>Company & Contact</TableHead>
                    <TableHead>Date</TableHead>
                    <TableHead>Items</TableHead>
                    <TableHead>Estimated Value</TableHead>
                    <TableHead>Status</TableHead>
                    <TableHead className="text-right">Actions</TableHead>
                  </TableRow>
                </TableHeader>
                <TableBody>
                  {recentQuotes.slice(0, 5).map((quote) => (
                    <TableRow key={quote.id}>
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
                        {quote.items?.length || 0} line items
                      </TableCell>
                      <TableCell className="font-semibold text-fhd-dark">
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
                        <Link href="/admin/quotes">
                          <Button variant="ghost" size="sm" className="text-xs">
                            Review &rarr;
                          </Button>
                        </Link>
                      </TableCell>
                    </TableRow>
                  ))}
                </TableBody>
              </Table>
            )}
          </CardContent>
        </Card>
      </div>
    </div>
  );
}

