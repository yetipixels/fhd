"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { formatCurrency } from "@/lib/utils";
import { QuoteRequest, Product, Profile } from "@/lib/types";
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
  const [productsCount, setProductsCount] = useState<number>(6);
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
        const { count: pCount } = await supabase
          .from("products")
          .select("*", { count: "exact", head: true });
        if (pCount !== null) setProductsCount(pCount);

        // Quotes
        const { data: qData } = await supabase
          .from("quote_requests")
          .select("*")
          .order("created_at", { ascending: false });

        if (qData) {
          setRecentQuotes(qData as QuoteRequest[]);
          const pending = qData.filter((q) => q.status === "pending").length;
          setPendingQuotesCount(pending);
          const totalVal = qData.reduce((acc, q) => acc + Number(q.estimated_total || 0), 0);
          setPipelineTotal(totalVal);
        }

        // Buyers
        const { data: bData } = await supabase
          .from("profiles")
          .select("is_approved")
          .eq("role", "buyer");
        if (bData) {
          const approved = bData.filter((b) => b.is_approved).length;
          setApprovedBuyersCount(approved);
        }
      } catch (err) {
        console.warn("Could not load admin stats from Supabase:", err);
      } finally {
        setLoading(false);
      }
    }

    loadStats();
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

