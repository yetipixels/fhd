"use client";

import React, { useState, Suspense } from "react";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/context/AuthContext";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Card, CardHeader, CardContent } from "@/components/ui/card";
import { Shield, Lock, Mail, ArrowLeft, Loader2, Sparkles, Building, Phone } from "lucide-react";
import { toast } from "sonner";
import { isAdminEmail } from "@/lib/utils";

function AdminLoginContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const redirect = searchParams ? searchParams.get("redirect") || "/admin" : "/admin";
  const errorParam = searchParams ? searchParams.get("error") : null;

  const { refreshProfile } = useAuth();
  const supabase = createClient();

  const [mode, setMode] = useState<"login" | "register">("login");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [companyName, setCompanyName] = useState("Fair Home Decor HQ");
  const [phone, setPhone] = useState("+1 (732) 555-0199");
  const [loading, setLoading] = useState(false);

  // Handle Login
  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!email || !password) {
      toast.error("Please enter both email and password.");
      return;
    }

    setLoading(true);
    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email: email.trim(),
        password,
      });

      if (error) {
        throw error;
      }

      if (data.user) {
        // Verify role
        const { data: profile, error: pError } = await supabase
          .from("profiles")
          .select("role")
          .eq("id", data.user.id)
          .single();

        const isSuperAdmin = isAdminEmail(data.user.email);

        if (isSuperAdmin || profile?.role === "admin") {
          // Self-heal: ensure profiles table is explicitly stamped with role = 'admin' and is_approved = true
          if (profile?.role !== "admin") {
            try {
              await supabase
                .from("profiles")
                .upsert({
                  id: data.user.id,
                  email: data.user.email,
                  role: "admin",
                  is_approved: true,
                  updated_at: new Date().toISOString(),
                });
            } catch (e) {
              console.warn("Could not auto-stamp admin role:", e);
            }
          }

          await refreshProfile();
          toast.success("Welcome back, Administrator! Redirecting to Admin Console...");
          router.push(redirect);
          return;
        }

        toast.error("Access restricted: this account does not have administrator privileges.");
        await supabase.auth.signOut();
        return;
      }
    } catch (err: any) {
      toast.error(err.message || "Failed to sign in. Please verify your credentials.");
    } finally {
      setLoading(false);
    }
  };

  // Handle First-Time Admin Account Creation
  const handleRegisterAdmin = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!email || !password) {
      toast.error("Please provide email and password.");
      return;
    }
    if (password.length < 6) {
      toast.error("Password must be at least 6 characters long.");
      return;
    }

    setLoading(true);
    try {
      const { data, error } = await supabase.auth.signUp({
        email: email.trim(),
        password,
        options: {
          data: {
            role: "admin",
            company_name: companyName.trim() || "Fair Home Decor HQ",
            phone: phone.trim(),
          },
        },
      });

      if (error) {
        throw error;
      }

      if (data.user) {
        // Ensure profile is marked as admin
        await supabase
          .from("profiles")
          .upsert({
            id: data.user.id,
            email: data.user.email,
            company_name: companyName.trim() || "Fair Home Decor HQ",
            phone: phone.trim(),
            role: "admin",
            is_approved: true,
          });

        await refreshProfile();
        toast.success("Administrator account initialized! Logging you in...");
        router.push(redirect);
      }
    } catch (err: any) {
      toast.error(err.message || "Failed to create administrator account.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <div className="min-h-screen bg-[#1A1611] flex flex-col justify-between py-12 px-4 sm:px-6 lg:px-8 relative overflow-hidden">
      {/* Decorative ambient subtle glow */}
      <div className="absolute top-0 left-1/2 -translate-x-1/2 w-[700px] h-[360px] bg-[#7C8C6E]/10 rounded-full blur-[140px] pointer-events-none" />

      {/* Top Bar / Back to store */}
      <div className="max-w-md w-full mx-auto flex items-center justify-between text-xs tracking-wider uppercase text-stone-400">
        <Link
          href="/"
          className="inline-flex items-center gap-2 hover:text-white transition-colors"
        >
          <ArrowLeft className="w-4 h-4" />
          <span>Return to Storefront</span>
        </Link>
        <span className="text-[#C8BC9E] font-medium flex items-center gap-1.5">
          <Shield className="w-3.5 h-3.5 text-[#7C8C6E]" />
          Secure SSL Console
        </span>
      </div>

      {/* Central Login Card */}
      <div className="max-w-md w-full mx-auto my-auto relative z-10">
        <div className="text-center mb-8">
          <Link href="/" className="inline-block">
            <span
              style={{ fontFamily: "var(--serif)" }}
              className="text-3xl sm:text-4xl tracking-widest text-[#F5F2ED] uppercase font-normal block"
            >
              Fair Home Decor
            </span>
            <span className="text-[11px] tracking-[0.24em] text-[#7C8C6E] uppercase font-semibold mt-1 block">
              B2B Administration &amp; Operations
            </span>
          </Link>
        </div>

        {errorParam === "admin_required" && (
          <div className="mb-6 p-4 rounded-md bg-amber-950/60 border border-amber-800/60 text-amber-200 text-xs text-center">
            Administrator credentials are required to access this console.
          </div>
        )}

        <Card className="bg-[#231E18] border-stone-800 shadow-2xl backdrop-blur-md">
          {/* Mode Switcher */}
          <div className="grid grid-cols-2 border-b border-stone-800/80 text-xs font-semibold uppercase tracking-wider">
            <button
              type="button"
              onClick={() => setMode("login")}
              className={`py-3.5 text-center transition-colors ${
                mode === "login"
                  ? "text-[#F5F2ED] bg-[#2B2520] border-b-2 border-[#7C8C6E]"
                  : "text-stone-400 hover:text-stone-200 bg-transparent"
              }`}
            >
              Admin Sign In
            </button>
            <button
              type="button"
              onClick={() => setMode("register")}
              className={`py-3.5 text-center transition-colors ${
                mode === "register"
                  ? "text-[#F5F2ED] bg-[#2B2520] border-b-2 border-[#7C8C6E]"
                  : "text-stone-400 hover:text-stone-200 bg-transparent"
              }`}
            >
              First-Time Setup
            </button>
          </div>

          <CardContent className="p-6 sm:p-8 space-y-6">
            {mode === "login" ? (
              <form onSubmit={handleLogin} className="space-y-5">
                <div className="space-y-1.5">
                  <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-300">
                    Administrator Email
                  </label>
                  <div className="relative">
                    <Mail className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-stone-400" />
                    <Input
                      type="email"
                      value={email}
                      onChange={(e) => setEmail(e.target.value)}
                      placeholder="admin@fairhomedecor.com"
                      required
                      className="pl-10 bg-[#1A1611] border-stone-700 text-stone-100 placeholder:text-stone-500 focus-visible:ring-[#7C8C6E]"
                    />
                  </div>
                </div>

                <div className="space-y-1.5">
                  <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-300">
                    Password
                  </label>
                  <div className="relative">
                    <Lock className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-stone-400" />
                    <Input
                      type="password"
                      value={password}
                      onChange={(e) => setPassword(e.target.value)}
                      placeholder="••••••••••••"
                      required
                      className="pl-10 bg-[#1A1611] border-stone-700 text-stone-100 placeholder:text-stone-500 focus-visible:ring-[#7C8C6E]"
                    />
                  </div>
                </div>

                <Button
                  type="submit"
                  disabled={loading}
                  className="w-full bg-[#7C8C6E] hover:bg-[#5A6B4E] text-white font-semibold text-xs uppercase tracking-widest py-6 transition-all"
                >
                  {loading ? (
                    <span className="flex items-center gap-2">
                      <Loader2 className="w-4 h-4 animate-spin" />
                      Authenticating...
                    </span>
                  ) : (
                    <span>Sign In to Admin Console</span>
                  )}
                </Button>
              </form>
            ) : (
              <form onSubmit={handleRegisterAdmin} className="space-y-4">
                <div className="p-3 bg-[#1A1611]/80 rounded border border-stone-800 text-[11px] text-stone-300 flex items-start gap-2.5">
                  <Sparkles className="w-4 h-4 text-[#C8BC9E] shrink-0 mt-0.5" />
                  <span>
                    Initialize the primary administrator account for this instance. Your account will automatically be granted full operational privileges.
                  </span>
                </div>

                <div className="space-y-1.5">
                  <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-300">
                    Administrator Email
                  </label>
                  <div className="relative">
                    <Mail className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-stone-400" />
                    <Input
                      type="email"
                      value={email}
                      onChange={(e) => setEmail(e.target.value)}
                      placeholder="admin@fairhomedecor.com"
                      required
                      className="pl-10 bg-[#1A1611] border-stone-700 text-stone-100 placeholder:text-stone-500 focus-visible:ring-[#7C8C6E]"
                    />
                  </div>
                </div>

                <div className="space-y-1.5">
                  <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-300">
                    Password (min. 6 characters)
                  </label>
                  <div className="relative">
                    <Lock className="w-4 h-4 absolute left-3.5 top-1/2 -translate-y-1/2 text-stone-400" />
                    <Input
                      type="password"
                      value={password}
                      onChange={(e) => setPassword(e.target.value)}
                      placeholder="Create a strong password"
                      required
                      minLength={6}
                      className="pl-10 bg-[#1A1611] border-stone-700 text-stone-100 placeholder:text-stone-500 focus-visible:ring-[#7C8C6E]"
                    />
                  </div>
                </div>

                <div className="grid grid-cols-1 sm:grid-cols-2 gap-3">
                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-300">
                      Organization
                    </label>
                    <div className="relative">
                      <Building className="w-3.5 h-3.5 absolute left-3 top-1/2 -translate-y-1/2 text-stone-400" />
                      <Input
                        type="text"
                        value={companyName}
                        onChange={(e) => setCompanyName(e.target.value)}
                        className="pl-9 bg-[#1A1611] border-stone-700 text-stone-100 text-xs"
                      />
                    </div>
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-300">
                      Contact Phone
                    </label>
                    <div className="relative">
                      <Phone className="w-3.5 h-3.5 absolute left-3 top-1/2 -translate-y-1/2 text-stone-400" />
                      <Input
                        type="text"
                        value={phone}
                        onChange={(e) => setPhone(e.target.value)}
                        className="pl-9 bg-[#1A1611] border-stone-700 text-stone-100 text-xs"
                      />
                    </div>
                  </div>
                </div>

                <Button
                  type="submit"
                  disabled={loading}
                  className="w-full bg-[#7C8C6E] hover:bg-[#5A6B4E] text-white font-semibold text-xs uppercase tracking-widest py-6 mt-2"
                >
                  {loading ? (
                    <span className="flex items-center gap-2">
                      <Loader2 className="w-4 h-4 animate-spin" />
                      Creating Account...
                    </span>
                  ) : (
                    <span>Initialize Primary Admin</span>
                  )}
                </Button>
              </form>
            )}
          </CardContent>
        </Card>

        <p className="text-center text-[11px] text-stone-500 mt-6">
          Fair Home Decor &middot; 1 Auer Ct, East Brunswick, NJ 08816 &middot; Protected by Supabase Row Level Security
        </p>
      </div>

      <div className="max-w-md w-full mx-auto text-center text-[10px] uppercase tracking-widest text-stone-600">
        &copy; {new Date().getFullYear()} Fair Home Decor Inc. All rights reserved.
      </div>
    </div>
  );
}

export default function AdminLoginPage() {
  return (
    <Suspense
      fallback={
        <div className="min-h-screen bg-[#1A1611] flex items-center justify-center text-stone-400 text-xs tracking-wider uppercase">
          Loading Admin Security Gateway...
        </div>
      }
    >
      <AdminLoginContent />
    </Suspense>
  );
}

