"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { createClient } from "@/lib/supabase/client";
import allProductsData from "@/data/products.json";

interface HeaderProps {
  activePage?: "home" | "about" | "catalogue" | "cart" | "account" | "contact";
}

export function Header({ activePage }: HeaderProps) {
  const router = useRouter();
  const [isScrolled, setIsScrolled] = useState(false);
  const [mobNavOpen, setMobNavOpen] = useState(false);
  const [searchQuery, setSearchQuery] = useState("");
  const [cartCount, setCartCount] = useState(0);
  const [currentUser, setCurrentUser] = useState<{ email?: string; name?: string } | null>(null);
  const [wishlistCount, setWishlistCount] = useState(0);

  useEffect(() => {
    const handleScroll = () => {
      setIsScrolled(window.scrollY > 50);
    };
    window.addEventListener("scroll", handleScroll, { passive: true });
    handleScroll();

    return () => window.removeEventListener("scroll", handleScroll);
  }, []);

  const updateCartCount = () => {
    try {
      const cart = JSON.parse(localStorage.getItem("fhd_cart") || "[]");
      const count = cart.reduce((sum: number, item: any) => sum + (item.quantity || 1), 0);
      setCartCount(count);
    } catch {
      setCartCount(0);
    }
  };

  const updateWishlistCount = () => {
    try {
      const raw1 = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      const raw2 = JSON.parse(localStorage.getItem("fhd_favourites") || "[]");
      const list1 = Array.isArray(raw1) ? raw1 : [];
      const list2 = Array.isArray(raw2) ? raw2 : [];
      const allRaw = [...list1, ...list2];

      const cleanedCodes = Array.from(
        new Set(
          allRaw
            .map((item) =>
              typeof item === "string"
                ? item.trim()
                : (item?.code || item?.sku || item?.id || "").trim()
            )
            .filter((c) => Boolean(c) && c !== "undefined" && c !== "null" && c !== "[object Object]")
        )
      );

      // Validate against catalog products so phantom or deleted items are never counted
      const validCodes = cleanedCodes.filter((code) => {
        const upper = code.toUpperCase();
        return (allProductsData as any[]).some(
          (p) =>
            (p.code && p.code.toUpperCase() === upper) ||
            (p.sku && p.sku.toUpperCase() === upper) ||
            (p.id && String(p.id).toUpperCase() === upper)
        );
      });

      // Self-heal storage if phantom/empty items existed
      if (allRaw.length > 0 && validCodes.length !== allRaw.length) {
        if (validCodes.length === 0) {
          localStorage.removeItem("fhd_favorites");
          localStorage.removeItem("fhd_favourites");
        } else {
          localStorage.setItem("fhd_favorites", JSON.stringify(validCodes));
          localStorage.setItem("fhd_favourites", JSON.stringify(validCodes));
        }
      }

      setWishlistCount(validCodes.length);
    } catch {
      setWishlistCount(0);
    }
  };

  const handleAccountNav = (tab: "login" | "track" | "favourites" | "b2b") => {
    if (typeof window !== "undefined") {
      window.dispatchEvent(new CustomEvent("fhd_switch_account_tab", { detail: tab }));
      if (window.location.pathname === "/account") {
        window.history.replaceState(null, "", `/account?tab=${tab}#${tab}`);
      } else {
        router.push(`/account?tab=${tab}#${tab}`);
      }
    }
  };

  const handleHeaderSignOut = async () => {
    try {
      const supabase = createClient();
      await supabase.auth.signOut();
      setCurrentUser(null);
      localStorage.removeItem("fhd_favorites");
      localStorage.removeItem("fhd_favourites");
      setWishlistCount(0);
      window.dispatchEvent(new Event("fhd_favorites_updated"));
      handleAccountNav("login");
    } catch (e) {
      console.error("Sign out failed", e);
    }
  };

  useEffect(() => {
    updateCartCount();
    updateWishlistCount();

    window.addEventListener("storage", updateCartCount);
    window.addEventListener("fhd_cart_updated", updateCartCount);
    window.addEventListener("fhd_favorites_updated", updateWishlistCount);

    const supabase = createClient();
    supabase.auth.getSession().then(({ data: { session } }) => {
      if (session?.user) {
        setCurrentUser({
          email: session.user.email,
          name:
            session.user.user_metadata?.full_name ||
            session.user.user_metadata?.name ||
            session.user.email?.split("@")[0],
        });
      }
    });

    const {
      data: { subscription },
    } = supabase.auth.onAuthStateChange((_, session) => {
      if (session?.user) {
        setCurrentUser({
          email: session.user.email,
          name:
            session.user.user_metadata?.full_name ||
            session.user.user_metadata?.name ||
            session.user.email?.split("@")[0],
        });
      } else {
        setCurrentUser(null);
      }
    });

    return () => {
      window.removeEventListener("storage", updateCartCount);
      window.removeEventListener("fhd_cart_updated", updateCartCount);
      window.removeEventListener("fhd_favorites_updated", updateWishlistCount);
      subscription.unsubscribe();
    };
  }, []);

  const [announcement, setAnnouncement] = useState<{
    enabled: boolean;
    text: string;
    code: string;
    link: string;
  } | null>(null);

  useEffect(() => {
    const loadAnnouncement = () => {
      try {
        const stored = localStorage.getItem("fhd_banners_settings");
        if (stored) {
          const parsed = JSON.parse(stored);
          if (parsed.announcementEnabled && parsed.announcementText) {
            setAnnouncement({
              enabled: true,
              text: parsed.announcementText,
              code: parsed.announcementCode || "",
              link: parsed.announcementLink || "/catalogue",
            });
          } else {
            setAnnouncement(null);
          }
        }
      } catch {}
    };
    loadAnnouncement();
    window.addEventListener("fhd_banners_updated", loadAnnouncement);
    return () => window.removeEventListener("fhd_banners_updated", loadAnnouncement);
  }, []);

  const handleSearchSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (searchQuery.trim()) {
      router.push(`/catalogue?search=${encodeURIComponent(searchQuery.trim())}`);
    }
  };

  return (
    <>
      {announcement?.enabled && (
        <aside
          style={{
            background: "#2B2520",
            color: "#F5F2ED",
            fontSize: "0.68rem",
            padding: "8px 20px",
            textAlign: "center",
            letterSpacing: "0.08em",
            display: "flex",
            alignItems: "center",
            justifyContent: "center",
            gap: "10px",
            borderBottom: "1px solid rgba(255,255,255,0.1)",
            zIndex: 301,
            position: "relative",
          }}
        >
          <span>{announcement.text}</span>
          {announcement.code && (
            <span
              style={{
                background: "#C8BC9E",
                color: "#2B2520",
                fontWeight: 700,
                padding: "2px 7px",
                borderRadius: "3px",
                fontSize: "0.6rem",
                letterSpacing: "0.06em",
              }}
            >
              {announcement.code}
            </span>
          )}
          {announcement.link && (
            <Link
              href={announcement.link}
              style={{ textDecoration: "underline", opacity: 0.9, fontWeight: 600 }}
            >
              Shop &rarr;
            </Link>
          )}
        </aside>
      )}
      <header className={`hdr ${isScrolled ? "scrolled" : ""}`} id="hdr">
      <div className="hdr-inner">
        {/* 1. Logo */}
        <Link href="/" className="hdr-logo" aria-label="Fair Home Decor Home">
          <img
            src="/assets/images/logo.png"
            alt="Fair Home Decor"
            loading="eager"
            onError={(e) => {
              (e.target as HTMLImageElement).src = "/assets/images/logo-original.png";
            }}
          />
        </Link>

        {/* 2. About Us */}
        <Link
          href="/about"
          className={`hdr-about-link ${activePage === "about" ? "active" : ""}`}
        >
          About Us
        </Link>

        {/* 3. Search Bar */}
        <div className="hdr-search-wrap">
          <form className="hdr-search-form" onSubmit={handleSearchSubmit}>
            <svg
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
            >
              <circle cx="11" cy="11" r="8"></circle>
              <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
            </svg>
            <input
              type="search"
              name="q"
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              placeholder="Search for handcrafted furniture, decor..."
              aria-label="Search"
            />
          </form>
        </div>

        {/* Right Group */}
        <div className="hdr-right-group">
          {/* 4. My Account with Dropdown */}
          <div className="account-dropdown-wrap">
            <button className="account-btn" aria-haspopup="true" aria-expanded="false">
              <svg
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                <circle cx="12" cy="7" r="4"></circle>
              </svg>
              <span>{currentUser?.name ? currentUser.name.split(" ")[0] : "My Account"}</span>
              <svg
                className="chevron"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2.5"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <polyline points="6 9 12 15 18 9"></polyline>
              </svg>
            </button>
            <div className="account-menu">
              {currentUser ? (
                <>
                  <div
                    style={{
                      padding: "10px 14px",
                      borderBottom: "1px solid var(--tan)",
                      fontSize: "0.72rem",
                      color: "var(--dark)",
                    }}
                  >
                    <div style={{ fontWeight: 600, color: "var(--sage)" }}>
                      ✓ Member Active
                    </div>
                    <div
                      style={{
                        fontSize: "0.68rem",
                        opacity: 0.7,
                        overflow: "hidden",
                        textOverflow: "ellipsis",
                        whiteSpace: "nowrap",
                        maxWidth: "180px",
                      }}
                    >
                      {currentUser.email}
                    </div>
                  </div>

                  <Link
                    href="/account?tab=favourites#favourites"
                    onClick={(e) => {
                      e.preventDefault();
                      handleAccountNav("favourites");
                    }}
                  >
                    <svg
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                    </svg>
                    <span>My Wishlist ({wishlistCount})</span>
                  </Link>

                  <Link
                    href="/account?tab=login#login"
                    onClick={(e) => {
                      e.preventDefault();
                      handleAccountNav("login");
                    }}
                  >
                    <svg
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path>
                      <circle cx="12" cy="7" r="4"></circle>
                    </svg>
                    <span>Account Overview</span>
                  </Link>

                  <Link
                    href="/account?tab=track#track"
                    onClick={(e) => {
                      e.preventDefault();
                      handleAccountNav("track");
                    }}
                  >
                    <svg
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <rect x="1" y="3" width="15" height="13" rx="2"></rect>
                      <polygon points="16 8 20 8 23 11 23 16 16 16 8"></polygon>
                      <circle cx="5.5" cy="18.5" r="2.5"></circle>
                      <circle cx="18.5" cy="18.5" r="2.5"></circle>
                    </svg>
                    <span>Track My Order</span>
                  </Link>

                  <div className="menu-divider"></div>

                  <button
                    type="button"
                    onClick={handleHeaderSignOut}
                    style={{
                      display: "flex",
                      alignItems: "center",
                      gap: "10px",
                      width: "100%",
                      padding: "10px 14px",
                      background: "transparent",
                      border: "none",
                      fontSize: "0.74rem",
                      color: "#9B1C1C",
                      cursor: "pointer",
                      textAlign: "left",
                    }}
                  >
                    <svg
                      width="14"
                      height="14"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M9 21H5a2 2 0 0 1-2-2V5a2 2 0 0 1 2-2h4"></path>
                      <polyline points="16 17 21 12 16 7"></polyline>
                      <line x1="21" y1="12" x2="9" y2="12"></line>
                    </svg>
                    <span>Sign Out</span>
                  </button>
                </>
              ) : (
                <>
                  <Link
                    href="/account?tab=login#login"
                    onClick={(e) => {
                      e.preventDefault();
                      handleAccountNav("login");
                    }}
                  >
                    <svg
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M15 3h4a2 2 0 0 1 2 2v14a2 2 0 0 1-2 2h-4"></path>
                      <polyline points="10 17 15 12 10 7"></polyline>
                      <line x1="15" y1="12" x2="3" y2="12"></line>
                    </svg>
                    <span>Login / Register</span>
                  </Link>
                  <Link
                    href="/account?tab=favourites#favourites"
                    onClick={(e) => {
                      e.preventDefault();
                      handleAccountNav("favourites");
                    }}
                  >
                    <svg
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                    </svg>
                    <span>Favourites (Wishlist) {wishlistCount > 0 ? `(${wishlistCount})` : ""}</span>
                  </Link>
                  <Link
                    href="/account?tab=track#track"
                    onClick={(e) => {
                      e.preventDefault();
                      handleAccountNav("track");
                    }}
                  >
                    <svg
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <rect x="1" y="3" width="15" height="13" rx="2"></rect>
                      <polygon points="16 8 20 8 23 11 23 16 16 16 8"></polygon>
                      <circle cx="5.5" cy="18.5" r="2.5"></circle>
                      <circle cx="18.5" cy="18.5" r="2.5"></circle>
                    </svg>
                    <span>Track My Order</span>
                  </Link>
                  <div className="menu-divider"></div>
                  <Link
                    href="/account?tab=b2b#b2b"
                    onClick={(e) => {
                      e.preventDefault();
                      handleAccountNav("b2b");
                    }}
                  >
                    <svg
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path>
                      <polyline points="9 22 9 12 15 12 15 22"></polyline>
                    </svg>
                    <span>B2B Member Sign In</span>
                    <span className="b2b-badge">Trade</span>
                  </Link>
                </>
              )}
            </div>
          </div>

          {/* 5. Cart */}
          <Link href="/cart" className="hdr-cart-btn" aria-label="Cart">
            <svg
              viewBox="0 0 24 24"
              fill="none"
              stroke="currentColor"
              strokeWidth="2"
              strokeLinecap="round"
              strokeLinejoin="round"
            >
              <circle cx="9" cy="21" r="1"></circle>
              <circle cx="20" cy="21" r="1"></circle>
              <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
            </svg>
            <span>Cart</span>
            <span className="cart-count">{cartCount}</span>
          </Link>

          {/* 6. Contact Us */}
          <Link
            href="/contact"
            className={`hdr-contact-btn ${activePage === "contact" ? "active" : ""}`}
          >
            Contact Us
          </Link>

          {/* Hamburger for mobile */}
          <button
            className="hdr-burger"
            id="burger"
            aria-label="Menu"
            onClick={() => setMobNavOpen(!mobNavOpen)}
          >
            <span></span>
            <span></span>
            <span></span>
          </button>
        </div>
      </div>

      {/* Mobile Nav Drawer */}
      <nav className={`mob-nav ${mobNavOpen ? "open" : ""}`} id="mobNav">
        <Link href="/about" onClick={() => setMobNavOpen(false)}>
          About Us
        </Link>
        <Link href="/catalogue" onClick={() => setMobNavOpen(false)}>
          Shop Now
        </Link>
        <Link
          href="/account?tab=login#login"
          onClick={(e) => {
            e.preventDefault();
            setMobNavOpen(false);
            handleAccountNav("login");
          }}
        >
          Login / Register
        </Link>
        <Link
          href="/account?tab=track#track"
          onClick={(e) => {
            e.preventDefault();
            setMobNavOpen(false);
            handleAccountNav("track");
          }}
        >
          Track My Order
        </Link>
        <Link
          href="/account?tab=favourites#favourites"
          onClick={(e) => {
            e.preventDefault();
            setMobNavOpen(false);
            handleAccountNav("favourites");
          }}
        >
          Favourites {wishlistCount > 0 ? `(${wishlistCount})` : ""}
        </Link>
        <Link
          href="/account?tab=b2b#b2b"
          onClick={(e) => {
            e.preventDefault();
            setMobNavOpen(false);
            handleAccountNav("b2b");
          }}
        >
          B2B Trade Portal
        </Link>
        <Link href="/cart" onClick={() => setMobNavOpen(false)}>
          Shopping Cart (<span className="cart-count">{cartCount}</span>)
        </Link>
        <Link href="/contact" onClick={() => setMobNavOpen(false)}>
          Contact Us
        </Link>
      </nav>
    </header>
    </>
  );
}

