"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { Header } from "@/components/common/Header";
import { Footer } from "@/components/common/Footer";
import allProductsData from "@/data/products.json";
import { createClient } from "@/lib/supabase/client";
import type { User } from "@supabase/supabase-js";
import "@/styles/account.css";

interface Product {
  id: string;
  code: string;
  sku?: string;
  name: string;
  tag?: string;
  dimensions?: string;
  material?: string;
  image?: string;
}

export default function AccountPage() {
  const router = useRouter();
  const supabase = createClient();

  const [activeTab, setActiveTab] = useState<"login" | "track" | "favourites" | "b2b">("login");
  const [favoritesList, setFavoritesList] = useState<Product[]>([]);
  const [trackFound, setTrackFound] = useState(false);
  const [b2bSubmitted, setB2bSubmitted] = useState(false);
  const [b2bName, setB2bName] = useState("");

  // Authentication State
  const [user, setUser] = useState<User | null>(null);
  const [initialAuthChecked, setInitialAuthChecked] = useState(false);
  const [authLoading, setAuthLoading] = useState(false);
  const [authMode, setAuthMode] = useState<"login" | "register">("login");
  const [email, setEmail] = useState("");
  const [password, setPassword] = useState("");
  const [fullName, setFullName] = useState("");
  const [authError, setAuthError] = useState<string | null>(null);
  const [authSuccess, setAuthSuccess] = useState<string | null>(null);

  const allProducts: Product[] = allProductsData as Product[];

  // Helper to sanitize wishlist codes and ensure only valid products exist
  const sanitizeWishlist = (raw: any[]): string[] => {
    if (!Array.isArray(raw)) return [];
    const validSet = new Set<string>();
    raw.forEach((item) => {
      const code = typeof item === "string" ? item.trim() : (item?.code || item?.sku || item?.id || "").trim();
      if (!code || code === "undefined" || code === "null" || code === "[object Object]") return;
      const upper = code.toUpperCase();
      const exists = allProducts.some(
        (p) =>
          (p.code && p.code.toUpperCase() === upper) ||
          (p.sku && p.sku.toUpperCase() === upper) ||
          (p.id && String(p.id).toUpperCase() === upper)
      );
      if (exists) {
        validSet.add(code);
      }
    });
    return Array.from(validSet);
  };

  const handleTabChange = (tab: "login" | "track" | "favourites" | "b2b") => {
    setActiveTab(tab);
    if (typeof window !== "undefined") {
      window.history.replaceState(null, "", `/account?tab=${tab}#${tab}`);
    }
  };

  // Sync tab with URL search params (?tab=), hash (#tab), or custom event
  useEffect(() => {
    const syncTabFromUrl = () => {
      if (typeof window === "undefined") return;
      const urlParams = new URLSearchParams(window.location.search);
      const tabParam = urlParams.get("tab");
      if (tabParam && ["login", "track", "favourites", "b2b"].includes(tabParam)) {
        setActiveTab(tabParam as any);
        return;
      }
      const hash = window.location.hash.replace("#", "");
      if (["track", "favourites", "b2b", "login"].includes(hash)) {
        setActiveTab(hash as any);
      }
    };

    syncTabFromUrl();

    const handleCustomTab = (e: any) => {
      const targetTab = e?.detail;
      if (["login", "track", "favourites", "b2b"].includes(targetTab)) {
        setActiveTab(targetTab);
      }
    };

    window.addEventListener("hashchange", syncTabFromUrl);
    window.addEventListener("popstate", syncTabFromUrl);
    window.addEventListener("fhd_switch_account_tab", handleCustomTab);

    return () => {
      window.removeEventListener("hashchange", syncTabFromUrl);
      window.removeEventListener("popstate", syncTabFromUrl);
      window.removeEventListener("fhd_switch_account_tab", handleCustomTab);
    };
  }, []);

  // Listen to Supabase Auth session & changes
  useEffect(() => {
    const checkSession = async () => {
      try {
        const { data: { session } } = await supabase.auth.getSession();
        if (session?.user) {
          setUser(session.user);
          await syncWishlistWithAccount(session.user);
        }
      } catch (err) {
        console.warn("Error fetching Supabase auth session:", err);
      } finally {
        setInitialAuthChecked(true);
      }
    };

    checkSession();

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange(async (event, session) => {
      if (session?.user) {
        setUser(session.user);
        await syncWishlistWithAccount(session.user);
      } else {
        setUser(null);
        localStorage.removeItem("fhd_favorites");
        localStorage.removeItem("fhd_favourites");
        setFavoritesList([]);
        window.dispatchEvent(new Event("fhd_favorites_updated"));
      }
      setInitialAuthChecked(true);
    });

    return () => {
      subscription.unsubscribe();
    };
  }, []);

  // Sync Wishlist with Supabase user metadata
  const syncWishlistWithAccount = async (currentUser: User) => {
    try {
      const remoteRaw: any[] = Array.isArray(currentUser.user_metadata?.wishlist)
        ? currentUser.user_metadata.wishlist
        : [];
      const remoteWishlist = sanitizeWishlist(remoteRaw);

      const rawFavs1 = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      const rawFavs2 = JSON.parse(localStorage.getItem("fhd_favourites") || "[]");
      const localCodes = sanitizeWishlist([...rawFavs1, ...rawFavs2]);

      // Merge remote and local (unlimited items allowed)
      const merged = Array.from(new Set([...remoteWishlist, ...localCodes]));

      localStorage.setItem("fhd_favorites", JSON.stringify(merged));
      localStorage.setItem("fhd_favourites", JSON.stringify(merged));
      window.dispatchEvent(new Event("fhd_favorites_updated"));

      // If remote had invalid items or differs from merged, update user metadata
      if (merged.length !== remoteRaw.length) {
        await supabase.auth.updateUser({
          data: { wishlist: merged },
        });
      }

      loadFavorites();
    } catch (e) {
      console.warn("Could not sync wishlist with Supabase user:", e);
      loadFavorites();
    }
  };

  const loadFavorites = () => {
    try {
      const rawFavs1 = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      const rawFavs2 = JSON.parse(localStorage.getItem("fhd_favourites") || "[]");
      const validCodes = sanitizeWishlist([...rawFavs1, ...rawFavs2]);

      // Self-heal: purge ghost/invisible entries from localStorage
      localStorage.setItem("fhd_favorites", JSON.stringify(validCodes));
      localStorage.setItem("fhd_favourites", JSON.stringify(validCodes));

      const upperSet = new Set(validCodes.map((c) => c.toUpperCase()));
      const matched = allProducts.filter((p) => {
        const pCode = (p.code || "").toUpperCase();
        const pSku = (p.sku || "").toUpperCase();
        const pId = (p.id || "").toUpperCase();
        return upperSet.has(pCode) || upperSet.has(pSku) || upperSet.has(pId);
      });
      setFavoritesList(matched);
    } catch {
      setFavoritesList([]);
    }
  };

  useEffect(() => {
    loadFavorites();
  }, [activeTab]);

  // Remove Favorite & sync with Supabase if logged in
  const removeFavorite = async (code: string) => {
    try {
      const rawFavs1 = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      const sanitized = sanitizeWishlist(rawFavs1);
      const updated = sanitized.filter((c) => c !== code);

      localStorage.setItem("fhd_favorites", JSON.stringify(updated));
      localStorage.setItem("fhd_favourites", JSON.stringify(updated));
      window.dispatchEvent(new Event("fhd_favorites_updated"));

      if (user) {
        await supabase.auth.updateUser({
          data: { wishlist: updated },
        });
      }

      loadFavorites();
    } catch (e) {
      console.error(e);
    }
  };

  const addFavToCart = (product: Product) => {
    try {
      const cart = JSON.parse(localStorage.getItem("fhd_cart") || "[]");
      const targetCode = product.code || product.sku || product.id;
      const existing = cart.find((i: any) => i.code === targetCode || i.sku === targetCode);
      if (existing) {
        existing.quantity = (existing.quantity || 1) + 1;
      } else {
        cart.push({
          id: product.id,
          code: targetCode,
          sku: product.sku || targetCode,
          name: product.name,
          dimensions: product.dimensions || "Solid Wood · Handcrafted",
          material: product.material || "Hardwood",
          image: product.image,
          quantity: 1,
          price: "Inquire / Trade",
        });
      }
      localStorage.setItem("fhd_cart", JSON.stringify(cart));
      window.dispatchEvent(new Event("fhd_cart_updated"));
      alert(`Added ${targetCode} to your Cart!`);
    } catch (e) {
      console.error(e);
    }
  };

  // Email / Password Sign In
  const handleEmailSignIn = async (e: React.FormEvent) => {
    e.preventDefault();
    setAuthError(null);
    setAuthSuccess(null);
    setAuthLoading(true);

    try {
      const { data, error } = await supabase.auth.signInWithPassword({
        email: email.trim(),
        password,
      });

      if (error) {
        setAuthError(error.message);
      } else if (data.user) {
        setUser(data.user);
        setAuthSuccess("Welcome back! Your saved wishlist has been restored.");
        await syncWishlistWithAccount(data.user);
      }
    } catch (err: any) {
      setAuthError(err.message || "Failed to sign in. Please verify your credentials.");
    } finally {
      setAuthLoading(false);
    }
  };

  // Email / Password Registration
  const handleEmailSignUp = async (e: React.FormEvent) => {
    e.preventDefault();
    setAuthError(null);
    setAuthSuccess(null);
    setAuthLoading(true);

    try {
      const rawFavs = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      const currentWishlist = Array.isArray(rawFavs) ? rawFavs : [];

      const { data, error } = await supabase.auth.signUp({
        email: email.trim(),
        password,
        options: {
          data: {
            full_name: fullName.trim(),
            role: "buyer",
            account_type: "member",
            wishlist: currentWishlist,
          },
          emailRedirectTo: `${window.location.origin}/account`,
        },
      });

      if (error) {
        if (error.message.toLowerCase().includes("rate limit")) {
          setAuthError(
            "Email rate limit exceeded: Supabase free tier limits confirmation emails to 3-4 per hour. To remove this limit completely, turn OFF 'Confirm email' in Supabase Dashboard (Authentication > Providers > Email)."
          );
        } else {
          setAuthError(error.message);
        }
      } else if (data.session?.user) {
        setUser(data.session.user);
        setAuthSuccess("Member account created! Unlimited wishlist saving is now unlocked.");
        await syncWishlistWithAccount(data.session.user);
      } else if (data.user) {
        setAuthSuccess(
          "Account created successfully! Please check your email inbox to confirm your account, then sign in."
        );
        setAuthMode("login");
      }
    } catch (err: any) {
      setAuthError(err.message || "Failed to register new member account.");
    } finally {
      setAuthLoading(false);
    }
  };

  // Sign Out
  const handleSignOut = async () => {
    try {
      await supabase.auth.signOut();
      setUser(null);
      // Clean local storage completely on sign out so wishlist does not persist for guests
      localStorage.removeItem("fhd_favorites");
      localStorage.removeItem("fhd_favourites");
      setFavoritesList([]);
      window.dispatchEvent(new Event("fhd_favorites_updated"));
      setAuthSuccess("You have been signed out. Wishlist session ended.");
    } catch (err: any) {
      console.error("Sign out error:", err);
    }
  };

  const handleTrackSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    setTrackFound(true);
  };

  const handleB2bSubmit = async (e: React.FormEvent<HTMLFormElement>) => {
    e.preventDefault();
    const formData = new FormData(e.currentTarget);
    const businessName = (formData.get("businessName") as string) || "";
    const contactName = (formData.get("contactName") as string) || "Partner";
    const tradeEmail = (formData.get("email") as string) || user?.email || "";
    const phone = (formData.get("phone") as string) || "";
    const businessType = (formData.get("businessType") as string) || "";
    const taxId = (formData.get("taxId") as string) || "";

    setB2bName(contactName);
    setB2bSubmitted(true);

    try {
      // 1. If user is currently signed in, update their profile record in Supabase (NEVER create duplicate)
      if (user?.id) {
        await supabase
          .from("profiles")
          .upsert({
            id: user.id,
            email: tradeEmail.trim().toLowerCase(),
            company_name: businessName.trim(),
            phone: phone.trim(),
            tax_vat_number: taxId.trim(),
            role: "buyer",
            is_approved: false,
            updated_at: new Date().toISOString(),
          });
      }

      // 2. Dispatch application to inquiry pipeline & send structured notification to info@fairhomedecor.com
      await fetch("/api/inquiry", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          customerName: contactName,
          contactEmail: tradeEmail.trim().toLowerCase(),
          contactPhone: phone,
          companyName: businessName,
          taxVatNumber: taxId,
          notes: `[B2B Wholesale Application]\nBusiness Type: ${businessType}\nReseller ID: ${taxId || "Not provided"}`,
          type: "trade_application",
        }),
      });

      // 3. Notify dashboard overview and buyer approvals table
      window.dispatchEvent(new Event("fhd_buyers_updated"));
    } catch (err) {
      console.warn("B2B application submission error:", err);
    }
  };

  const getImgSrc = (img?: string) => {
    if (!img) return "/assets/images/logo.png";
    if (img.startsWith("http://") || img.startsWith("https://")) return img;
    if (img.startsWith("/http://") || img.startsWith("/https://")) return img.substring(1);
    return img.startsWith("/") ? img : "/" + img;
  };

  const displayName =
    user?.user_metadata?.full_name ||
    user?.user_metadata?.name ||
    user?.email?.split("@")[0] ||
    "Member";

  const userAvatar =
    user?.user_metadata?.avatar_url ||
    user?.user_metadata?.picture ||
    null;

  return (
    <>
      <Header activePage="account" />

      <main className="portal-main">
        <div className="wrap">
          <div className="portal-container">
            {/* Tabs */}
            <div className="portal-tabs">
              <button
                className={`portal-tab ${activeTab === "login" ? "active" : ""}`}
                onClick={() => handleTabChange("login")}
              >
                {user ? "My Account" : "Login / Register"}
              </button>
              <button
                className={`portal-tab ${activeTab === "track" ? "active" : ""}`}
                onClick={() => handleTabChange("track")}
              >
                Track Order
              </button>
              <button
                className={`portal-tab ${activeTab === "favourites" ? "active" : ""}`}
                onClick={() => handleTabChange("favourites")}
              >
                Favourites ({favoritesList.length})
              </button>
              <button
                className={`portal-tab ${activeTab === "b2b" ? "active" : ""}`}
                onClick={() => handleTabChange("b2b")}
              >
                B2B Trade Member
              </button>
            </div>

            {/* 1. LOGIN / REGISTER / MEMBER ACCOUNT */}
            {activeTab === "login" && (
              <div className="portal-panel active">
                {user ? (
                  /* LOGGED IN MEMBER DASHBOARD */
                  <div className="member-overview">
                    <div className="panel-head">
                      <h2>Welcome Back, {displayName}</h2>
                      <p>Your member account is active with unlimited Wishlist storage.</p>
                    </div>

                    <div className="member-header-card">
                      <div className="member-avatar">
                        {userAvatar ? (
                          <img src={userAvatar} alt={displayName} />
                        ) : (
                          displayName.charAt(0).toUpperCase()
                        )}
                      </div>
                      <div className="member-info">
                        <h3 className="member-name">{displayName}</h3>
                        <p className="member-email">{user.email}</p>
                        <span className="member-badge">
                          <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                            <path d="M20 6L9 17l-5-5"/>
                          </svg>
                          Member Account · Unlimited Wishlist
                        </span>
                      </div>
                    </div>

                    <div className="member-facility-box">
                      <div className="member-facility-title">
                        <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                          <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                        </svg>
                        Your Member Facility: Unlimited Saved Products
                      </div>
                      <p className="member-facility-desc">
                        As a registered member, your account grants you <strong>unlimited wishlist storage</strong>. Every handcrafted piece you save while exploring our catalogue is linked to your account and immediately visible whenever and wherever you log in.
                      </p>
                      <p className="member-facility-note">
                        Need wholesale volume pricing, lower trade MOQs, or custom container shipping? Apply anytime in the{" "}
                        <a onClick={() => handleTabChange("b2b")}>B2B Trade Member</a> tab.
                      </p>
                    </div>

                    <div className="member-actions-row">
                      <button
                        type="button"
                        className="btn-member-action btn-member-primary"
                        onClick={() => handleTabChange("favourites")}
                      >
                        <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                          <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                        </svg>
                        View My Wishlist ({favoritesList.length})
                      </button>

                      <Link href="/catalogue" className="btn-member-action btn-member-secondary">
                        Browse Catalogue
                      </Link>

                      <button
                        type="button"
                        className="btn-member-action btn-member-signout"
                        onClick={handleSignOut}
                      >
                        Sign Out
                      </button>
                    </div>
                  </div>
                ) : (
                  /* LOGGED OUT: SOCIAL & EMAIL AUTHENTICATION */
                  <div>
                    <div className="panel-head">
                      <h2>{authMode === "login" ? "Welcome Back" : "Create Member Account"}</h2>
                      <p>
                        {authMode === "login"
                          ? "Sign in to access your saved wishlist across all devices."
                          : "Join as a member to save unlimited handcrafted pieces to your personal wishlist."}
                      </p>
                    </div>

                    {authError && (
                      <div className="auth-alert-error">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                          <circle cx="12" cy="12" r="10" />
                          <line x1="12" y1="8" x2="12" y2="12" />
                          <line x1="12" y1="16" x2="12.01" y2="16" />
                        </svg>
                        <span>{authError}</span>
                      </div>
                    )}

                    {authSuccess && (
                      <div className="auth-alert-success">
                        <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                          <polyline points="20 6 9 17 4 12" />
                        </svg>
                        <span>{authSuccess}</span>
                      </div>
                    )}

                    {/* Mode Switcher */}
                    <div className="auth-mode-switch">
                      <button
                        type="button"
                        className={`auth-mode-btn ${authMode === "login" ? "active" : ""}`}
                        onClick={() => {
                          setAuthMode("login");
                          setAuthError(null);
                        }}
                      >
                        Sign In
                      </button>
                      <button
                        type="button"
                        className={`auth-mode-btn ${authMode === "register" ? "active" : ""}`}
                        onClick={() => {
                          setAuthMode("register");
                          setAuthError(null);
                        }}
                      >
                        Create Account
                      </button>
                    </div>

                    {/* Email Form */}
                    <form onSubmit={authMode === "login" ? handleEmailSignIn : handleEmailSignUp}>
                      {authMode === "register" && (
                        <div className="form-group">
                          <label>Full Name *</label>
                          <input
                            type="text"
                            placeholder="e.g. Eleanor Vance"
                            value={fullName}
                            onChange={(e) => setFullName(e.target.value)}
                            required
                          />
                        </div>
                      )}

                      <div className="form-group">
                        <label>Email Address *</label>
                        <input
                          type="email"
                          placeholder="name@example.com"
                          value={email}
                          onChange={(e) => setEmail(e.target.value)}
                          required
                        />
                      </div>

                      <div className="form-group">
                        <label>Password *</label>
                        <input
                          type="password"
                          placeholder="••••••••"
                          value={password}
                          onChange={(e) => setPassword(e.target.value)}
                          minLength={6}
                          required
                        />
                        {authMode === "register" && (
                          <p style={{ fontSize: "0.72rem", color: "rgba(43,37,32,0.55)", marginTop: "4px" }}>
                            Must be at least 6 characters.
                          </p>
                        )}
                      </div>

                      {authMode === "register" && (
                        <div
                          style={{
                            padding: "12px 14px",
                            background: "var(--bg)",
                            border: "1px solid var(--tan)",
                            borderRadius: "4px",
                            marginBottom: "18px",
                            fontSize: "0.76rem",
                            color: "rgba(43,37,32,0.7)",
                            lineHeight: 1.5,
                          }}
                        >
                          <strong>Member Perk:</strong> Your account unlocks unlimited wishlist saving. You can save as many handcrafted pieces as you like and view them anytime on any device.
                        </div>
                      )}

                      <button type="submit" className="btn-submit" disabled={authLoading}>
                        {authLoading
                          ? "Processing..."
                          : authMode === "login"
                          ? "Sign In"
                          : "Create Member Account"}
                      </button>

                      <p
                        style={{
                          textAlign: "center",
                          fontSize: "0.78rem",
                          marginTop: "18px",
                          color: "rgba(43,37,32,0.6)",
                        }}
                      >
                        {authMode === "login" ? (
                          <>
                            Don&apos;t have an account yet?{" "}
                            <a
                              href="#"
                              onClick={(e) => {
                                e.preventDefault();
                                setAuthMode("register");
                                setAuthError(null);
                              }}
                              style={{ color: "var(--dark)", fontWeight: 600, textDecoration: "underline" }}
                            >
                              Create free member account
                            </a>
                          </>
                        ) : (
                          <>
                            Already have an account?{" "}
                            <a
                              href="#"
                              onClick={(e) => {
                                e.preventDefault();
                                setAuthMode("login");
                                setAuthError(null);
                              }}
                              style={{ color: "var(--dark)", fontWeight: 600, textDecoration: "underline" }}
                            >
                              Sign in here
                            </a>
                          </>
                        )}
                      </p>
                    </form>
                  </div>
                )}
              </div>
            )}

            {/* 2. TRACK ORDER */}
            {activeTab === "track" && (
              <div className="portal-panel active">
                <div className="panel-head">
                  <h2>Track Your Shipment</h2>
                  <p>Enter your order tracking details for real-time status across the USA.</p>
                </div>
                <form onSubmit={handleTrackSubmit}>
                  <div className="form-group">
                    <label>Order Number</label>
                    <input type="text" placeholder="e.g. FHD-84920" required />
                  </div>
                  <div className="form-group">
                    <label>Billing Email</label>
                    <input type="email" placeholder="name@example.com" required />
                  </div>
                  <button type="submit" className="btn-submit">
                    Track Order
                  </button>
                </form>
                {trackFound && (
                  <div
                    style={{
                      marginTop: "24px",
                      padding: "20px",
                      background: "var(--bg)",
                      border: "1px solid var(--tan)",
                      borderRadius: "4px",
                      textAlign: "center",
                    }}
                  >
                    <p style={{ fontWeight: 600, color: "var(--color-sage-dark)" }}>
                      Order Found: Processing for Dispatch
                    </p>
                    <p style={{ fontSize: "0.8rem", marginTop: "6px", color: "rgba(43,37,32,0.65)" }}>
                      Your handcrafted items are being carefully inspected and prepared in East Brunswick, NJ.
                    </p>
                  </div>
                )}
              </div>
            )}

            {/* 3. FAVOURITES / WISHLIST */}
            {activeTab === "favourites" && (
              <div className="portal-panel active">
                <div className="panel-head">
                  <h2>Your Saved Pieces</h2>
                  <p>Keep track of your favorite handcrafted furniture and decor pieces.</p>
                </div>

                {/* Cloud Sync Status Banner */}
                {user ? (
                  <div className="wishlist-sync-banner synced">
                    <span>
                      ✓ <strong>Synced to Member Account:</strong> {user.email} (Unlimited items supported)
                    </span>
                    <span style={{ fontSize: "0.72rem", opacity: 0.8 }}>Auto-saved to cloud</span>
                  </div>
                ) : initialAuthChecked ? (
                  <div className="wishlist-sync-banner guest">
                    <span>
                      💡 <strong>Guest Mode:</strong> Sign in to sync your unlimited saved pieces across all your devices.
                    </span>
                    <button type="button" onClick={() => handleTabChange("login")}>
                      Sign In / Register
                    </button>
                  </div>
                ) : null}

                {favoritesList.length === 0 ? (
                  <div className="fav-empty" style={{ display: "block" }}>
                    <div className="fav-empty-icon">
                      <svg width="28" height="28" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                        <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                      </svg>
                    </div>
                    <h3 style={{ fontFamily: "var(--serif)", fontSize: "1.5rem", marginBottom: "8px" }}>
                      No Favourites Saved Yet
                    </h3>
                    <p style={{ fontSize: "0.85rem", color: "rgba(43,37,32,0.65)", maxWidth: "440px", margin: "0 auto 24px" }}>
                      Browse our catalogue of handcrafted pieces and save as many items as you love for your interior design projects.
                    </p>
                    <Link
                      href="/catalogue"
                      className="btn-submit"
                      style={{ display: "inline-block", width: "auto", padding: "13px 32px" }}
                    >
                      Browse Catalogue
                    </Link>
                  </div>
                ) : (
                  <div className="fav-grid" style={{ display: "grid" }}>
                    {favoritesList.map((item) => (
                      <div key={item.code || item.id} className="fav-card">
                        <div
                          className="fav-card-img-wrap"
                          onClick={() => router.push(`/catalogue?search=${encodeURIComponent(item.code || item.id)}`)}
                        >
                          <span className="fav-card-badge">{item.tag || "Handcrafted"}</span>
                          <span className="fav-card-code">{item.code || item.id}</span>
                          <img
                            src={getImgSrc(item.image)}
                            alt={item.name}
                            onError={(e) => {
                              (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                            }}
                          />
                        </div>
                        <div className="fav-card-body">
                          <h4 className="fav-card-title">{item.name}</h4>
                          <p className="fav-card-dims">{item.dimensions || "Handcrafted Solid Wood"}</p>
                          <div className="fav-card-price-row">
                            <span className="fav-card-price">$XXX</span>
                            <span className="fav-card-price-note">Trade / Wholesale</span>
                          </div>
                          <div className="fav-card-actions">
                            <button
                              type="button"
                              className="btn-fav-add-cart"
                              onClick={() => addFavToCart(item)}
                            >
                              <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                                <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
                                <line x1="3" y1="6" x2="21" y2="6" />
                                <path d="M16 10a4 4 0 0 1-8 0" />
                              </svg>
                              Add to Cart
                            </button>
                            <button
                              type="button"
                              className="btn-fav-remove"
                              onClick={() => removeFavorite(item.code || item.id)}
                              title="Remove piece"
                            >
                              &times;
                            </button>
                          </div>
                        </div>
                      </div>
                    ))}
                  </div>
                )}
              </div>
            )}

            {/* 4. B2B TRADE PORTAL */}
            {activeTab === "b2b" && (
              <div className="portal-panel active">
                <div className="panel-head">
                  <h2>B2B Trade &amp; Wholesale Portal</h2>
                  <p>
                    Exclusive access for interior designers, architects, and retail partners. Applications are reviewed
                    directly by our wholesale team.
                  </p>
                </div>

                {!b2bSubmitted ? (
                  <form onSubmit={handleB2bSubmit}>
                    <div className="form-group">
                      <label>Business / Studio Name *</label>
                      <input
                        type="text"
                        name="businessName"
                        placeholder="e.g. Studio Arch Design LLC"
                        required
                      />
                    </div>
                    <div className="form-group">
                      <label>Contact Person Name *</label>
                      <input type="text" name="contactName" placeholder="Full name" required />
                    </div>
                    <div className="form-group">
                      <label>Professional Email *</label>
                      <input type="email" name="email" placeholder="trade@company.com" required />
                    </div>
                    <div className="form-group">
                      <label>Phone / WhatsApp *</label>
                      <input type="tel" name="phone" placeholder="+1 (785) 713-1584" required />
                    </div>
                    <div className="form-group">
                      <label>Business Type *</label>
                      <select name="businessType" required defaultValue="">
                        <option value="" disabled>
                          Select your business type
                        </option>
                        <option value="Interior Designer / Decorator">Interior Designer / Decorator</option>
                        <option value="Architect / Firm">Architect / Firm</option>
                        <option value="Hospitality / Developer">Hospitality / Developer</option>
                        <option value="Retail Furniture Store">Retail Furniture Store</option>
                        <option value="Wholesale Container Buyer">Wholesale Container Buyer</option>
                      </select>
                    </div>
                    <div className="form-group">
                      <label>Resale Certificate / Tax ID (Optional)</label>
                      <input type="text" name="taxId" placeholder="State Tax ID or Federal EIN" />
                    </div>
                    <button type="submit" className="btn-submit">
                      <span>Send</span>
                      <svg
                        className="send-icon"
                        width="15"
                        height="15"
                        viewBox="0 0 24 24"
                        fill="none"
                        stroke="currentColor"
                        strokeWidth="2"
                        strokeLinecap="round"
                        strokeLinejoin="round"
                      >
                        <line x1="22" y1="2" x2="11" y2="13"></line>
                        <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
                      </svg>
                    </button>
                  </form>
                ) : (
                  <div className="success-msg" style={{ display: "block", textAlign: "center", padding: "36px 20px" }}>
                    <div
                      className="success-icon"
                      style={{
                        width: "58px",
                        height: "58px",
                        borderRadius: "50%",
                        background: "#EAF0E5",
                        color: "var(--dark)",
                        display: "flex",
                        alignItems: "center",
                        justifyContent: "center",
                        margin: "0 auto 20px",
                      }}
                    >
                      <svg
                        width="30"
                        height="30"
                        viewBox="0 0 24 24"
                        fill="none"
                        stroke="currentColor"
                        strokeWidth="2.5"
                        strokeLinecap="round"
                        strokeLinejoin="round"
                      >
                        <polyline points="20 6 9 17 4 12" />
                      </svg>
                    </div>
                    <h3
                      style={{
                        fontFamily: "var(--serif)",
                        fontSize: "1.8rem",
                        fontWeight: 400,
                        color: "var(--dark)",
                        marginBottom: "12px",
                      }}
                    >
                      Thank You, {b2bName}!
                    </h3>
                    <p
                      style={{
                        fontSize: "0.88rem",
                        color: "rgba(43,37,32,0.7)",
                        maxWidth: "440px",
                        margin: "0 auto 24px",
                        lineHeight: 1.6,
                      }}
                    >
                      Your trade application has been delivered directly to{" "}
                      <strong>info@fairhomedecor.com</strong>. Our wholesale team will verify your credentials and send trade
                      catalogue access within 24 hours.
                    </p>
                    <button
                      type="button"
                      className="btn-submit"
                      style={{ display: "inline-block", width: "auto", padding: "12px 28px" }}
                      onClick={() => setB2bSubmitted(false)}
                    >
                      Submit Another Application
                    </button>
                  </div>
                )}
              </div>
            )}
          </div>
        </div>
      </main>

      <Footer />
    </>
  );
}
