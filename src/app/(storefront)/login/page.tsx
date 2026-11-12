"use client";

import React, { useState, Suspense } from "react";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import { useAuth } from "@/context/AuthContext";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Card, CardContent, CardFooter } from "@/components/ui/card";
import { Lock, Mail, AlertCircle } from "lucide-react";
import { toast } from "sonner";

function LoginForm() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const redirectPath = searchParams ? searchParams.get("redirect") || "/account" : "/account";
  const errorParam = searchParams ? searchParams.get("error") : null;

  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [loading, setLoading] = useState(false);
  const [errorMessage, setErrorMessage] = useState<string | null>(
    errorParam === "admin_required"
      ? "Admin access required. Please sign in with an administrator account."
      : null
  );

  const supabase = createClient();
  const { refreshProfile } = useAuth();

  const handleLogin = async (e: React.FormEvent) => {
    e.preventDefault();
    setLoading(true);
    setErrorMessage(null);

    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email: email.trim(),
        password: password,
      });

      if (error) {
        setErrorMessage(error.message);
        toast.error(error.message);
        return;
      }

      if (data.user) {
        toast.success("Signed in successfully!");
        await refreshProfile();

        // Check if user is admin
        const { data: profile } = await supabase
          .from("profiles")
          .select("role")
          .eq("id", data.user.id)
          .single();

        if (profile?.role === "admin") {
          router.push("/admin");
        } else {
          router.push(redirectPath);
        }
      }
    } catch (err: any) {
      setErrorMessage(err?.message || "An unexpected error occurred during login.");
    } finally {
      setLoading(false);
    }
  };

  return (
    <Card className="border-fhd-border shadow-xs">
      <form onSubmit={handleLogin}>
        <CardContent className="p-6 sm:p-8 space-y-4">
          {errorMessage && (
            <div className="p-3 rounded-md bg-red-50 border border-red-200 flex items-start space-x-2 text-xs text-red-700">
              <AlertCircle className="w-4 h-4 flex-shrink-0 mt-0.5" />
              <span>{errorMessage}</span>
            </div>
          )}

          <div className="space-y-1.5">
            <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
              <Mail className="w-3.5 h-3.5 text-fhd-sage" />
              <span>Work Email</span>
            </label>
            <Input
              type="email"
              required
              placeholder="procurement@company.com"
              value={email}
              onChange={(e) => setEmail(e.target.value)}
            />
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex items-center space-x-1.5">
              <Lock className="w-3.5 h-3.5 text-fhd-sage" />
              <span>Password</span>
            </label>
            <Input
              type="password"
              required
              placeholder="••••••••"
              value={password}
              onChange={(e) => setPassword(e.target.value)}
            />
          </div>

          <Button
            type="submit"
            disabled={loading}
            className="w-full justify-center text-xs uppercase tracking-wider font-semibold mt-2"
          >
            {loading ? "Authenticating..." : "Sign In to B2B Portal"}
          </Button>
        </CardContent>
      </form>

      <CardFooter className="px-6 py-4 bg-fhd-cream/40 border-t border-fhd-border flex flex-col space-y-2 text-center text-xs text-stone-600">
        <p>
          Need a verified wholesale trade account?{" "}
          <Link href="/register" className="font-semibold text-fhd-sage hover:underline">
            Apply Here &rarr;
          </Link>
        </p>
      </CardFooter>
    </Card>
  );
}

export default function LoginPage() {
  return (
    <div className="min-h-[75vh] flex items-center justify-center px-4 py-16">
      <div className="w-full max-w-md space-y-6">
        <div className="text-center space-y-2">
          <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
            B2B Commercial Portal
          </span>
          <h1 className="font-serif text-3xl font-normal text-fhd-dark">
            Wholesale Account Sign In
          </h1>
          <p className="text-xs text-stone-500">
            Access your volume pricing, approved credit terms, and purchase orders.
          </p>
        </div>

        <Suspense fallback={<div className="p-8 text-center text-xs text-stone-400">Loading sign-in...</div>}>
          <LoginForm />
        </Suspense>
      </div>
    </div>
  );
}
