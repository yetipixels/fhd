"use client";

import React, { createContext, useContext, useEffect, useState } from "react";
import { User } from "@supabase/supabase-js";
import { createClient } from "@/lib/supabase/client";
import { Profile } from "@/lib/types";
import { isAdminEmail } from "@/lib/utils";

interface AuthContextType {
  user: User | null;
  profile: Profile | null;
  isAdmin: boolean;
  isApprovedBuyer: boolean;
  loading: boolean;
  signOut: () => Promise<void>;
  refreshProfile: () => Promise<void>;
}

const AuthContext = createContext<AuthContextType | undefined>(undefined);

export function AuthProvider({ children }: { children: React.ReactNode }) {
  const [user, setUser] = useState<User | null>(null);
  const [profile, setProfile] = useState<Profile | null>(null);
  const [loading, setLoading] = useState(true);
  const supabase = createClient();

  const fetchProfile = async (userId: string) => {
    try {
      const { data, error } = await supabase
        .from("profiles")
        .select("*")
        .eq("id", userId)
        .single();

      if (!error && data) {
        const isSuperAdmin = isAdminEmail(data.email || user?.email);
        const isOfficialFHD = (data.email || user?.email || "").toLowerCase().endsWith("@fairhomedecor.com");
        const companyName = isOfficialFHD && data.company_name === "Yeti Pixels"
          ? "Fair Home Decor HQ"
          : data.company_name || (isSuperAdmin ? "Fair Home Decor HQ" : "");

        const resolvedProfile: Profile = isSuperAdmin
          ? { ...(data as Profile), company_name: companyName, role: "admin", is_approved: true }
          : (data as Profile);

        setProfile(resolvedProfile);

        // Self-heal in Supabase if not yet stamped as admin or has mismatch company name
        if (isSuperAdmin && (data.role !== "admin" || (isOfficialFHD && data.company_name === "Yeti Pixels"))) {
          supabase
            .from("profiles")
            .update({ role: "admin", is_approved: true, company_name: companyName })
            .eq("id", userId)
            .then(() => {});
        }
      } else {
        // Fallback profile if row is not created yet
        const isSuperAdmin = isAdminEmail(user?.email);
        const isOfficialFHD = (user?.email || "").toLowerCase().endsWith("@fairhomedecor.com");
        setProfile({
          id: userId,
          email: user?.email || "",
          company_name: isOfficialFHD || isSuperAdmin ? "Fair Home Decor HQ" : "",
          role: isSuperAdmin ? "admin" : "buyer",
          is_approved: isSuperAdmin,
        });

        if (isSuperAdmin) {
          supabase
            .from("profiles")
            .upsert({
              id: userId,
              email: user?.email || "",
              company_name: "Fair Home Decor HQ",
              role: "admin",
              is_approved: true,
            })
            .then(() => {});
        }
      }
    } catch (err) {
      console.warn("Could not fetch profile from Supabase:", err);
    }
  };

  useEffect(() => {
    const initializeAuth = async () => {
      try {
        const {
          data: { session },
        } = await supabase.auth.getSession();

        if (session?.user) {
          setUser(session.user);
          await fetchProfile(session.user.id);
        } else {
          setUser(null);
          setProfile(null);
        }
      } catch (err) {
        console.warn("Auth initialization error:", err);
      } finally {
        setLoading(false);
      }
    };

    initializeAuth();

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange(async (event, session) => {
      if (session?.user) {
        setUser(session.user);
        await fetchProfile(session.user.id);
      } else {
        setUser(null);
        setProfile(null);
      }
      setLoading(false);
    });

    return () => {
      subscription.unsubscribe();
    };
  }, []);

  const refreshProfile = async () => {
    if (user) {
      await fetchProfile(user.id);
    }
  };

  const signOut = async () => {
    await supabase.auth.signOut();
    setUser(null);
    setProfile(null);
    window.location.href = "/";
  };

  const isAdmin = Boolean(profile?.role === "admin" || isAdminEmail(user?.email));
  const isApprovedBuyer = Boolean(profile?.is_approved || profile?.role === "admin" || isAdminEmail(user?.email));

  return (
    <AuthContext.Provider
      value={{
        user,
        profile,
        isAdmin,
        isApprovedBuyer,
        loading,
        signOut,
        refreshProfile,
      }}
    >
      {children}
    </AuthContext.Provider>
  );
}

export function useAuth() {
  const context = useContext(AuthContext);
  if (!context) {
    throw new Error("useAuth must be used within an AuthProvider");
  }
  return context;
}

