"use client";

import React, { useState } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/context/AuthContext";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Card, CardHeader, CardTitle, CardDescription, CardContent, CardFooter } from "@/components/ui/card";
import { Building, Lock, Mail, Phone, FileBadge, AlertCircle, CheckCircle } from "lucide-react";
import { toast } from "sonner";

export default function RegisterPage() {
  const router = useRouter();
  const supabase = createClient();
  const { refreshProfile } = useAuth();

  const [companyName, setCompanyName] = useState("");
  const [taxVatNumber, setTaxVatNumber] = useState("");
  const [email, setEmail] = useState("");
  const [phone, setPhone] = useState("");
  const [password, setPassword] = useState("");
  const [confirmPassword, setConfirmPassword] = useState("");
  const [loading, setLoading] = useState(false);
  const [errorMessage, setErrorMessage] = useState<string | null>(null);
  const [registeredSuccess, setRegisteredSuccess] = useState(false);

  const handleRegister = async (e: React.FormEvent) => {
    e.preventDefault();
    setErrorMessage(null);

    if (password !== confirmPassword) {
      setErrorMessage("Passwords do not match.");
      return;
    }

    if (password.length < 6) {
      setErrorMessage("Password must be at least 6 characters.");
      return;
    }

    setLoading(true);

    try {
      const { data, error } = await supabase.auth.signUp({
        email: email.trim(),
        password: password,
        options: {
          data: {
            company_name: companyName.trim(),
            tax_vat_number: taxVatNumber.trim(),
            phone: phone.trim(),
            role: "buyer",
          },
        },
      });

      if (error) {
        setErrorMessage(error.message);
        toast.error(error.message);
        return;
      }

      setRegisteredSuccess(true);
      toast.success("Trade application registered!");
      await refreshProfile();
    } catch (err: any) {
      setErrorMessage(err?.message || "An unexpected error occurred.");
    } finally {
      setLoading(false);
    }
  };

  if (registeredSuccess) {
    return (
      <div className="min-h-[75vh] flex items-center justify-center px-4 py-16">
        <div className="w-full max-w-md text-center space-y-6">
          <div className="w-16 h-16 rounded-full bg-emerald-50 text-emerald-700 flex items-center justify-center mx-auto border border-emerald-200">
            <CheckCircle className="w-10 h-10" />
          </div>
          <div className="space-y-2">
            <h1 className="font-serif text-3xl font-normal text-fhd-dark">
              Application Received!
            </h1>
            <p className="text-xs text-stone-600 leading-relaxed max-w-sm mx-auto">
              Welcome to Fair Home Decor Wholesale, <span className="font-semibold text-fhd-dark">{companyName}</span>. Your business profile has been initialized.
            </p>
          </div>
          <div className="pt-2 flex justify-center space-x-3">
            <Link href="/account">
              <Button variant="default" size="default">
                Go to Buyer Portal
              </Button>
            </Link>
            <Link href="/products">
              <Button variant="outline" size="default">
                Browse Products
              </Button>
            </Link>
          </div>
        </div>
      </div>
    );
  }

  return (
    <div className="min-h-[80vh] flex items-center justify-center px-4 py-16">
      <div className="w-full max-w-lg space-y-6">
        <div className="text-center space-y-2">
          <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
            B2B Commercial Procurement
          </span>
          <h1 className="font-serif text-3xl sm:text-4xl font-normal text-fhd-dark">
            Apply for a Wholesale Account
          </h1>
          <p className="text-xs text-stone-500 max-w-md mx-auto">
            Interior design studios, hospitality operators, and boutique stockists enjoy tiered trade discounts and dedicated RFQ logistics.
          </p>
        </div>

        <Card className="border-fhd-border shadow-xs">
          <form onSubmit={handleRegister}>
            <CardContent className="p-6 sm:p-8 space-y-4">
              {errorMessage && (
                <div className="p-3 rounded-md bg-red-50 border border-red-200 flex items-start space-x-2 text-xs text-red-700">
                  <AlertCircle className="w-4 h-4 flex-shrink-0 mt-0.5" />
                  <span>{errorMessage}</span>
                </div>
              )}

              <div className="space-y-1.5">
                <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
                  <Building className="w-3.5 h-3.5 text-fhd-sage" />
                  <span>Company / Studio Legal Entity *</span>
                </label>
                <Input
                  required
                  placeholder="e.g. Atelier West Interior Architecture"
                  value={companyName}
                  onChange={(e) => setCompanyName(e.target.value)}
                />
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div className="space-y-1.5">
                  <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
                    <FileBadge className="w-3.5 h-3.5 text-fhd-sage" />
                    <span>Reseller / Tax / VAT ID</span>
                  </label>
                  <Input
                    placeholder="e.g. US-EIN-12345678"
                    value={taxVatNumber}
                    onChange={(e) => setTaxVatNumber(e.target.value)}
                  />
                </div>

                <div className="space-y-1.5">
                  <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
                    <Phone className="w-3.5 h-3.5 text-fhd-sage" />
                    <span>Direct Phone</span>
                  </label>
                  <Input
                    type="tel"
                    placeholder="+1 (555) 000-0000"
                    value={phone}
                    onChange={(e) => setPhone(e.target.value)}
                  />
                </div>
              </div>

              <div className="space-y-1.5">
                <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
                  <Mail className="w-3.5 h-3.5 text-fhd-sage" />
                  <span>Corporate Email *</span>
                </label>
                <Input
                  type="email"
                  required
                  placeholder="procurement@company.com"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                />
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div className="space-y-1.5">
                  <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
                    <Lock className="w-3.5 h-3.5 text-fhd-sage" />
                    <span>Password *</span>
                  </label>
                  <Input
                    type="password"
                    required
                    placeholder="Min. 6 characters"
                    value={password}
                    onChange={(e) => setPassword(e.target.value)}
                  />
                </div>

                <div className="space-y-1.5">
                  <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
                    <Lock className="w-3.5 h-3.5 text-fhd-sage" />
                    <span>Confirm Password *</span>
                  </label>
                  <Input
                    type="password"
                    required
                    placeholder="Re-enter password"
                    value={confirmPassword}
                    onChange={(e) => setConfirmPassword(e.target.value)}
                  />
                </div>
              </div>

              <Button
                type="submit"
                disabled={loading}
                className="w-full justify-center text-xs uppercase tracking-wider font-semibold mt-4"
              >
                {loading ? "Registering Application..." : "Submit Wholesale Application"}
              </Button>
            </CardContent>
          </form>

          <CardFooter className="px-6 py-4 bg-fhd-cream/40 border-t border-fhd-border flex justify-center text-xs text-stone-600">
            <p>
              Already registered?{" "}
              <Link href="/login" className="font-semibold text-fhd-sage hover:underline">
                Sign in to your account &rarr;
              </Link>
            </p>
          </CardFooter>
        </Card>
      </div>
    </div>
  );
}

