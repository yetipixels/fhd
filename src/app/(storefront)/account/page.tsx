"use client";

import React, { useEffect, useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { useAuth } from "@/context/AuthContext";
import { createClient } from "@/lib/supabase/client";
import { QuoteRequest } from "@/lib/types";
import { formatCurrency } from "@/lib/utils";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import {
  Building,
  Mail,
  Phone,
  FileBadge,
  LogOut,
  ShoppingBag,
  Clock,
  CheckCircle,
  FileText,
  AlertCircle,
} from "lucide-react";

export default function AccountPage() {
  const router = useRouter();
  const { user, profile, loading: authLoading, signOut } = useAuth();
  const [quotes, setQuotes] = useState<QuoteRequest[]>([]);
  const [loadingQuotes, setLoadingQuotes] = useState(true);
  const supabase = createClient();

  useEffect(() => {
    if (!authLoading && !user) {
      router.push("/login?redirect=/account");
    }
  }, [user, authLoading, router]);

  useEffect(() => {
    async function loadQuotes() {
      if (!user) return;
      try {
        const { data, error } = await supabase
          .from("quote_requests")
          .select("*")
          .eq("buyer_id", user.id)
          .order("created_at", { ascending: false });

        if (!error && data) {
          setQuotes(data as QuoteRequest[]);
        }
      } catch (err) {
        console.warn("Could not load past quotes:", err);
      } finally {
        setLoadingQuotes(false);
      }
    }

    if (user) {
      loadQuotes();
    }
  }, [user]);

  if (authLoading || !user) {
    return (
      <div className="max-w-7xl mx-auto px-4 py-20 text-center space-y-4">
        <div className="w-10 h-10 border-4 border-fhd-border border-t-fhd-sage rounded-full animate-spin mx-auto" />
        <p className="text-xs uppercase tracking-widest text-stone-500">
          Loading B2B Account Profile...
        </p>
      </div>
    );
  }

  const isApproved = profile?.is_approved || profile?.role === "admin";

  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-10">
      {/* Account Header */}
      <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 border-b border-fhd-border pb-6">
        <div>
          <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
            B2B Buyer Portal
          </span>
          <h1 className="font-serif text-3xl sm:text-4xl font-normal text-fhd-dark">
            {profile?.company_name || "Wholesale Account"}
          </h1>
          <p className="text-xs text-stone-600 font-sans mt-0.5">
            Member since: {new Date(profile?.created_at || Date.now()).toLocaleDateString()}
          </p>
        </div>

        <div className="flex items-center space-x-3">
          <Button
            variant="outline"
            size="sm"
            onClick={signOut}
            className="flex items-center space-x-1.5"
          >
            <LogOut className="w-3.5 h-3.5" />
            <span>Sign Out</span>
          </Button>
        </div>
      </div>

      <div className="grid grid-cols-1 lg:grid-cols-12 gap-8">
        {/* Left Column: Profile Card */}
        <div className="lg:col-span-4 space-y-6">
          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="pb-3 border-b border-fhd-border">
              <div className="flex items-center justify-between">
                <CardTitle className="text-xl">Business Profile</CardTitle>
                {isApproved ? (
                  <Badge variant="success" className="flex items-center space-x-1">
                    <CheckCircle className="w-3 h-3 mr-1" />
                    <span>Approved Partner</span>
                  </Badge>
                ) : (
                  <Badge variant="gold" className="flex items-center space-x-1">
                    <Clock className="w-3 h-3 mr-1" />
                    <span>Pending Approval</span>
                  </Badge>
                )}
              </div>
            </CardHeader>
            <CardContent className="pt-4 space-y-3 text-xs">
              <div className="flex items-center space-x-2 text-stone-600">
                <Building className="w-4 h-4 text-fhd-sage" />
                <span className="font-semibold text-fhd-dark">{profile?.company_name || "N/A"}</span>
              </div>
              <div className="flex items-center space-x-2 text-stone-600">
                <Mail className="w-4 h-4 text-fhd-sage" />
                <span>{user.email}</span>
              </div>
              {profile?.phone && (
                <div className="flex items-center space-x-2 text-stone-600">
                  <Phone className="w-4 h-4 text-fhd-sage" />
                  <span>{profile.phone}</span>
                </div>
              )}
              {profile?.tax_vat_number && (
                <div className="flex items-center space-x-2 text-stone-600">
                  <FileBadge className="w-4 h-4 text-fhd-sage" />
                  <span>Tax ID: {profile.tax_vat_number}</span>
                </div>
              )}
            </CardContent>
          </Card>

          <div className="p-4 rounded-lg bg-fhd-cream/50 border border-fhd-border text-xs text-stone-600 space-y-2">
            <h4 className="font-semibold text-fhd-dark">Need Contract Terms or Swatches?</h4>
            <p>
              Contact your dedicated trade representative at{" "}
              <a href="mailto:info@fairhomedecor.com" className="text-fhd-sage font-semibold underline">
                info@fairhomedecor.com
              </a>{" "}
              for volume pro-forma adjustments or expedited freight.
            </p>
          </div>
        </div>

        {/* Right Column: Quotes History */}
        <div className="lg:col-span-8 space-y-6">
          <div className="flex items-center justify-between pb-2 border-b border-fhd-border">
            <h2 className="font-serif text-2xl text-fhd-dark font-normal">
              Purchase Inquiries & Quote Requests
            </h2>
            <Link href="/products">
              <Button variant="default" size="sm">
                New RFQ
              </Button>
            </Link>
          </div>

          {loadingQuotes ? (
            <div className="py-12 text-center text-xs text-stone-500">
              Loading past quote history...
            </div>
          ) : quotes.length === 0 ? (
            <div className="p-10 text-center rounded-lg border border-fhd-border bg-white space-y-4">
              <ShoppingBag className="w-10 h-10 mx-auto text-stone-300" />
              <div className="space-y-1">
                <h3 className="font-serif text-lg text-fhd-dark">No Quote Requests Yet</h3>
                <p className="text-xs text-stone-500 max-w-sm mx-auto">
                  Add items from our catalog to your RFQ cart to submit your first commercial purchase inquiry.
                </p>
              </div>
              <Link href="/products">
                <Button variant="outline" size="sm">
                  Explore B2B Catalog
                </Button>
              </Link>
            </div>
          ) : (
            <div className="space-y-4">
              {quotes.map((quote) => (
                <div
                  key={quote.id}
                  className="p-5 rounded-lg border border-fhd-border bg-white shadow-xs space-y-3"
                >
                  <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2 border-b border-fhd-border/60 pb-3">
                    <div>
                      <span className="text-[10px] font-mono uppercase tracking-wider text-stone-400 block">
                        Reference ID
                      </span>
                      <span className="font-mono text-xs font-bold text-fhd-dark">
                        {quote.id}
                      </span>
                    </div>

                    <div className="flex items-center space-x-3">
                      <span className="text-xs text-stone-500">
                        {new Date(quote.created_at).toLocaleDateString()}
                      </span>
                      <Badge
                        variant={
                          quote.status === "approved"
                            ? "success"
                            : quote.status === "quoted"
                            ? "sage"
                            : quote.status === "dispatched"
                            ? "default"
                            : "secondary"
                        }
                      >
                        {quote.status}
                      </Badge>
                    </div>
                  </div>

                  {/* Items Summary */}
                  <div className="text-xs text-stone-600 space-y-1.5">
                    <p className="font-semibold text-fhd-dark">
                      {quote.items?.length || 0} line item(s) &middot; Estimated Subtotal:{" "}
                      <span className="font-bold text-fhd-dark">
                        {formatCurrency(quote.estimated_total)}
                      </span>
                    </p>
                    <div className="pl-3 border-l-2 border-fhd-sage/40 space-y-1 pt-1">
                      {quote.items?.slice(0, 3).map((item, idx) => (
                        <p key={idx} className="text-[11px] text-stone-500">
                          &bull; {item.name} ({item.quantity} units @ {formatCurrency(item.applied_unit_price)})
                        </p>
                      ))}
                      {(quote.items?.length || 0) > 3 && (
                        <p className="text-[11px] text-stone-400 italic">
                          + {(quote.items?.length || 0) - 3} more items
                        </p>
                      )}
                    </div>
                  </div>
                </div>
              ))}
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

