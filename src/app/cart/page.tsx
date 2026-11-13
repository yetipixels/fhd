"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { useRouter } from "next/navigation";
import { Header } from "@/components/common/Header";
import { Footer } from "@/components/common/Footer";
import { createClient } from "@/lib/supabase/client";
import allProductsData from "@/data/products.json";
import "@/styles/cart.css";

interface CartItem {
  id: string;
  code: string;
  name: string;
  dimensions: string;
  material: string;
  image: string;
  quantity: number;
  price?: string;
}

export default function CartPage() {
  const router = useRouter();
  const [cart, setCart] = useState<CartItem[]>([]);
  const [isLoaded, setIsLoaded] = useState(false);
  const [currentUser, setCurrentUser] = useState<{ email?: string; name?: string } | null>(null);
  const [wishlistCount, setWishlistCount] = useState(0);

  // Inquiry Submission Modal & Form State
  const [isInquiryModalOpen, setIsInquiryModalOpen] = useState(false);
  const [isSubmittingInquiry, setIsSubmittingInquiry] = useState(false);
  const [inquiryName, setInquiryName] = useState("");
  const [inquiryEmail, setInquiryEmail] = useState("");
  const [inquiryPhone, setInquiryPhone] = useState("");
  const [inquiryCompany, setInquiryCompany] = useState("");
  const [inquiryNotes, setInquiryNotes] = useState("");
  const [inquiryError, setInquiryError] = useState<string | null>(null);

  // Send Ready Success State
  const [inquirySubmitted, setInquirySubmitted] = useState(false);
  const [submittedRef, setSubmittedRef] = useState("");
  const [submittedName, setSubmittedName] = useState("");
  const [submittedEmail, setSubmittedEmail] = useState("");
  const [submittedPiecesCount, setSubmittedPiecesCount] = useState(0);

  useEffect(() => {
    try {
      const stored = JSON.parse(localStorage.getItem("fhd_cart") || "[]");
      setCart(Array.isArray(stored) ? stored : []);
    } catch {
      setCart([]);
    }
    setIsLoaded(true);

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

    const updateWishlist = () => {
      try {
        const raw1 = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
        const raw2 = JSON.parse(localStorage.getItem("fhd_favourites") || "[]");
        const list = Array.isArray(raw1) ? raw1 : [];
        const list2 = Array.isArray(raw2) ? raw2 : [];
        const cleaned = Array.from(
          new Set(
            [...list, ...list2]
              .map((item) =>
                typeof item === "string"
                  ? item.trim()
                  : (item?.code || item?.sku || item?.id || "").trim()
              )
              .filter((c) => Boolean(c) && c !== "undefined" && c !== "null" && c !== "[object Object]")
          )
        );
        const valid = cleaned.filter((code) => {
          const upper = code.toUpperCase();
          return (allProductsData as any[]).some(
            (p) =>
              (p.code && p.code.toUpperCase() === upper) ||
              (p.sku && p.sku.toUpperCase() === upper) ||
              (p.id && String(p.id).toUpperCase() === upper)
          );
        });
        setWishlistCount(valid.length);
      } catch {
        setWishlistCount(0);
      }
    };

    updateWishlist();
    window.addEventListener("fhd_favorites_updated", updateWishlist);

    return () => {
      subscription.unsubscribe();
      window.removeEventListener("fhd_favorites_updated", updateWishlist);
    };
  }, []);

  const saveCart = (newCart: CartItem[]) => {
    setCart(newCart);
    localStorage.setItem("fhd_cart", JSON.stringify(newCart));
    window.dispatchEvent(new Event("fhd_cart_updated"));
  };

  const changeQty = (index: number, delta: number) => {
    const updated = [...cart];
    const newQty = (updated[index].quantity || 1) + delta;
    if (newQty <= 0) {
      updated.splice(index, 1);
    } else {
      updated[index].quantity = newQty;
    }
    saveCart(updated);
  };

  const removeItem = (index: number) => {
    const updated = [...cart];
    updated.splice(index, 1);
    saveCart(updated);
  };

  const clearCart = () => {
    if (window.confirm("Are you sure you want to clear all items from your bag?")) {
      saveCart([]);
    }
  };

  const totalPieces = cart.reduce((sum, item) => sum + (item.quantity || 1), 0);

  useEffect(() => {
    if (currentUser) {
      if (currentUser.name && !inquiryName) setInquiryName(currentUser.name);
      if (currentUser.email && !inquiryEmail) setInquiryEmail(currentUser.email);
    }
  }, [currentUser]);

  const proceedToCheckout = () => {
    if (cart.length === 0) return;
    if (currentUser) {
      if (!inquiryName && currentUser.name) setInquiryName(currentUser.name);
      if (!inquiryEmail && currentUser.email) setInquiryEmail(currentUser.email);
    }
    setInquiryError(null);
    setIsInquiryModalOpen(true);
  };

  const handleSendInquiry = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!inquiryEmail.trim()) {
      setInquiryError("Please enter your contact email for order confirmation.");
      return;
    }
    setIsSubmittingInquiry(true);
    setInquiryError(null);

    const ref = `FHD-Q-${Date.now().toString().slice(-6)}`;
    const finalName = inquiryName.trim() || (currentUser?.name ? currentUser.name : "Wholesale Partner");
    const finalEmail = inquiryEmail.trim();
    const finalCompany = inquiryCompany.trim() || finalName;
    const piecesCount = totalPieces;

    try {
      // 1. Submit to API route: logs & prepares email to info@fairhomedecor.com, inserts once into Supabase
      const res = await fetch("/api/inquiry", {
        method: "POST",
        headers: { "Content-Type": "application/json" },
        body: JSON.stringify({
          referenceId: ref,
          customerName: finalName,
          contactEmail: finalEmail,
          contactPhone: inquiryPhone.trim(),
          companyName: finalCompany,
          notes: inquiryNotes.trim(),
          items: cart,
          totalPieces: piecesCount,
          type: "cart_order_inquiry",
        }),
      });

      const apiResult = await res.json().catch(() => null);

      // 2. Only if the API route failed to insert to Supabase, fallback to direct client insert
      if (!apiResult?.dbRecordId || apiResult.dbError) {
        const supabase = createClient();
        const formattedItems = cart.map((i) => ({
          product_id: i.id || i.code || ref,
          sku: i.code || i.id,
          name: i.name,
          dimensions: i.dimensions,
          quantity: i.quantity || 1,
          applied_unit_price: 0,
          subtotal: 0,
          moq: 1,
          image: i.image || "",
        }));

        await supabase.from("quote_requests").insert({
          company_name: finalCompany,
          contact_email: finalEmail.toLowerCase(),
          contact_phone: inquiryPhone.trim() || null,
          notes: `[Inquiry Ref: ${ref}]\n${inquiryNotes.trim() ? `Notes: ${inquiryNotes.trim()}\n` : ""}Contact Name: ${finalName}`,
          items: formattedItems,
          estimated_total: 0,
          status: "pending",
        });
      }

      // 3. Clear non-UUID items from local cache and trigger refresh event
      try {
        const storedQuotes = JSON.parse(localStorage.getItem("fhd_admin_quotes") || "[]");
        if (Array.isArray(storedQuotes)) {
          const validOnly = storedQuotes.filter(
            (q: any) => q.id && /^[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}$/i.test(q.id)
          );
          localStorage.setItem("fhd_admin_quotes", JSON.stringify(validOnly));
        }
        window.dispatchEvent(new Event("fhd_quotes_updated"));
      } catch {}

      // 4. Clear the cart
      localStorage.removeItem("fhd_cart");
      setCart([]);
      window.dispatchEvent(new Event("fhd_cart_updated"));

      // 5. Switch to Send Ready message view
      setSubmittedRef(ref);
      setSubmittedName(finalName);
      setSubmittedEmail(finalEmail);
      setSubmittedPiecesCount(piecesCount);
      setIsInquiryModalOpen(false);
      setInquirySubmitted(true);
      window.scrollTo({ top: 0, behavior: "smooth" });
    } catch (err: any) {
      console.error("Order inquiry error:", err);
      setInquiryError(err.message || "Failed to submit inquiry. Please try again or email info@fairhomedecor.com directly.");
    } finally {
      setIsSubmittingInquiry(false);
    }
  };

  const getImgSrc = (img?: string) => {
    if (!img) return "/assets/images/logo.png";
    if (img.startsWith("http://") || img.startsWith("https://")) return img;
    if (img.startsWith("/http://") || img.startsWith("/https://")) return img.substring(1);
    return img.startsWith("/") ? img : "/" + img;
  };

  return (
    <>
      <Header activePage="cart" />

      {/* Category sub-bar */}
      <div className="cat-bar">
        <div className="cat-bar-inner wrap">
          <Link href="/catalogue?dept=furnishing">Furnishing</Link>
          <Link href="/catalogue?dept=lighting">Lighting</Link>
          <Link href="/catalogue?dept=seating">Seating</Link>
          <Link href="/catalogue?dept=accessories">Accessories &amp; Decor</Link>
          <Link href="/catalogue?dept=art">Art &amp; Sculpture</Link>
        </div>
      </div>

      <main className="cart-main">
        <div className="wrap">
          {/* Send Ready Confirmation Message Card */}
          {inquirySubmitted && (
            <div className="inquiry-success-card" style={{ display: "block" }}>
              <div className="inquiry-success-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5" strokeLinecap="round" strokeLinejoin="round">
                  <polyline points="20 6 9 17 4 12" />
                </svg>
              </div>

              <span className="inquiry-success-badge">Inquiry Sent &amp; Logged</span>
              <h1 className="inquiry-success-title">Order Inquiry Sent Successfully!</h1>

              <div className="inquiry-ref-box">
                <span>Quotation Reference:</span>
                <strong>{submittedRef}</strong>
              </div>

              <p className="inquiry-success-desc">
                Thank you, <strong>{submittedName}</strong>! Your order inquiry for{" "}
                <strong>{submittedPiecesCount} {submittedPiecesCount === 1 ? "piece" : "pieces"}</strong> has been
                successfully delivered directly to <strong>info@fairhomedecor.com</strong> and registered in our wholesale dashboard.
              </p>

              <div className="inquiry-next-steps">
                <div className="next-step-item">
                  <span>1</span>
                  <p>Our team in East Brunswick, NJ will review your piece specifications, availability, and container loading details.</p>
                </div>
                <div className="next-step-item">
                  <span>2</span>
                  <p>We will prepare your trade quotation and reply to <strong>{submittedEmail}</strong> within 24 hours.</p>
                </div>
              </div>

              <div className="inquiry-success-actions">
                <a
                  href={`mailto:info@fairhomedecor.com?subject=${encodeURIComponent(
                    `[Order Inquiry Copy - ${submittedRef}] ${submittedName}`
                  )}&body=${encodeURIComponent(
                    `Hello Fair Home Decor Wholesale Team,\n\nI have submitted an order inquiry for ${submittedPiecesCount} pieces under Reference ID: ${submittedRef}.\n\nPlease find my contact details below:\nName: ${submittedName}\nEmail: ${submittedEmail}\n\nLooking forward to your quotation.`
                  )}`}
                  className="btn-mailto-copy"
                >
                  <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                    <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z" />
                    <polyline points="22,6 12,13 2,6" />
                  </svg>
                  <span>Open Email Copy (info@fairhomedecor.com)</span>
                </a>

                <Link href="/catalogue" className="btn-browse-more">
                  Browse Catalogue
                </Link>

                <Link href="/account?tab=favourites#favourites" className="btn-view-wishlist">
                  View My Wishlist
                </Link>
              </div>
            </div>
          )}

          {/* Empty Cart Card */}
          {isLoaded && !inquirySubmitted && cart.length === 0 && (
            <div className="empty-cart-card" style={{ display: "block" }}>
              <div className="empty-cart-icon">
                <svg viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeLinecap="round" strokeLinejoin="round">
                  <circle cx="9" cy="21" r="1"></circle>
                  <circle cx="20" cy="21" r="1"></circle>
                  <path d="M1 1h4l2.68 13.39a2 2 0 0 0 2 1.61h9.72a2 2 0 0 0 2-1.61L23 6H6"></path>
                </svg>
              </div>

              {currentUser && (
                <div
                  style={{
                    display: "inline-flex",
                    alignItems: "center",
                    gap: "6px",
                    padding: "5px 14px",
                    background: "#EAF0E5",
                    color: "#3F5135",
                    border: "1px solid #D5CDC0",
                    borderRadius: "100px",
                    fontSize: "0.74rem",
                    fontWeight: 600,
                    marginBottom: "16px",
                  }}
                >
                  <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                    <polyline points="20 6 9 17 4 12" />
                  </svg>
                  <span>Signed in as {currentUser.name ? currentUser.name.split(" ")[0] : currentUser.email} · Unlimited Wishlist Active</span>
                </div>
              )}

              <h1 className="empty-cart-title">Your Cart is Empty</h1>
              <p className="empty-cart-desc">
                {currentUser
                  ? `Welcome back! You have active access to your saved wishlist with unlimited handcrafted pieces. Explore our collection or review your saved items.`
                  : `Looks like you haven't added anything to your cart yet. Explore our handcrafted solid wood furniture and curated home decor pieces to start crafting your space.`}
              </p>

              <div className="cart-actions">
                <Link href="/catalogue" className="btn-start-shopping">
                  <span>Start Shopping</span>
                  <svg
                    width="15"
                    height="15"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12"></line>
                    <polyline points="12 5 19 12 12 19"></polyline>
                  </svg>
                </Link>

                {currentUser ? (
                  <Link
                    href="/account?tab=favourites#favourites"
                    className="btn-sign-in"
                    style={{
                      display: "inline-flex",
                      alignItems: "center",
                      gap: "10px",
                    }}
                  >
                    <svg
                      width="15"
                      height="15"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2"
                      strokeLinecap="round"
                      strokeLinejoin="round"
                    >
                      <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z"></path>
                    </svg>
                    <span>
                      {wishlistCount > 0 ? `View Saved Wishlist (${wishlistCount})` : "View My Wishlist"}
                    </span>
                  </Link>
                ) : (
                  <Link href="/account?tab=login#login" className="btn-sign-in">
                    <svg
                      width="15"
                      height="15"
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
                    <span>Sign In to Your Account</span>
                  </Link>
                )}
              </div>

              <div className="cart-perks">
                <div className="perk-item">
                  <svg
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <rect x="1" y="3" width="15" height="13" rx="2"></rect>
                    <polygon points="16 8 20 8 23 11 23 16 16 16 16 8"></polygon>
                    <circle cx="5.5" cy="18.5" r="2.5"></circle>
                    <circle cx="18.5" cy="18.5" r="2.5"></circle>
                  </svg>
                  <div className="perk-text">
                    <h4>Nationwide USA Shipping</h4>
                    <p>Reliable freight &amp; parcel delivery to all 50 states.</p>
                  </div>
                </div>

                <div className="perk-item">
                  <svg
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <path d="M12 22s8-4 8-10V5l-8-3-8 3v7c0 6 8 10 8 10z"></path>
                  </svg>
                  <div className="perk-text">
                    <h4>Solid Wood Guarantee</h4>
                    <p>Authentic hardwoods built with generational joinery.</p>
                  </div>
                </div>

                <div className="perk-item">
                  <svg
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <circle cx="12" cy="12" r="10"></circle>
                    <polyline points="12 6 12 12 16 14"></polyline>
                  </svg>
                  <div className="perk-text">
                    <h4>Personalized Support</h4>
                    <p>Direct assistance from our team in East Brunswick, NJ.</p>
                  </div>
                </div>
              </div>
            </div>
          )}

          {/* Filled Cart Container */}
          {isLoaded && !inquirySubmitted && cart.length > 0 && (
            <div className="cart-filled-container" style={{ display: "block" }}>
              <div className="cart-filled-layout">
                <div className="cart-items-section">
                  <div className="cart-section-header">
                    <h1 className="cart-page-title">Your Shopping Bag</h1>
                    <span className="cart-item-count-label">
                      {totalPieces} {totalPieces === 1 ? "item" : "items"}
                    </span>
                  </div>

                  <div className="cart-items-table">
                    <div className="cart-table-head">
                      <span>Piece / Specifications</span>
                      <span style={{ textAlign: "center" }}>Quantity</span>
                      <span style={{ textAlign: "right" }}>Availability</span>
                      <span></span>
                    </div>

                    <div id="cartItemsList">
                      {cart.map((item, idx) => (
                        <div key={item.code + idx} className="cart-item-row">
                          <div className="cart-item-info">
                            <img
                              src={getImgSrc(item.image)}
                              alt={item.name}
                              className="cart-item-img"
                              onError={(e) => {
                                (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                              }}
                            />
                            <div>
                              <h4 className="cart-item-title">{item.name}</h4>
                              <div className="cart-item-meta">
                                <span>
                                  <strong>Code:</strong> {item.code}
                                </span>{" "}
                                &middot;{" "}
                                <span>
                                  <strong>Dimensions:</strong> {item.dimensions}
                                </span>
                                <div style={{ marginTop: "2px", color: "var(--olive)" }}>
                                  Solid Wood &middot; Handcrafted
                                </div>
                              </div>
                            </div>
                          </div>

                          <div className="cart-item-qty">
                            <button
                              type="button"
                              className="qty-btn"
                              onClick={() => changeQty(idx, -1)}
                              aria-label="Decrease"
                            >
                              &minus;
                            </button>
                            <span className="qty-val">{item.quantity || 1}</span>
                            <button
                              type="button"
                              className="qty-btn"
                              onClick={() => changeQty(idx, 1)}
                              aria-label="Increase"
                            >
                              &#43;
                            </button>
                          </div>

                          <div className="cart-item-status">
                            <span>Ready for Order</span>
                          </div>

                          <button
                            type="button"
                            className="cart-remove-btn"
                            onClick={() => removeItem(idx)}
                            title="Remove piece"
                          >
                            &times;
                          </button>
                        </div>
                      ))}
                    </div>
                  </div>

                  <div className="cart-action-links">
                    <Link href="/catalogue" className="btn-continue-shopping">
                      <svg
                        width="14"
                        height="14"
                        viewBox="0 0 24 24"
                        fill="none"
                        stroke="currentColor"
                        strokeWidth="2.5"
                      >
                        <line x1="19" y1="12" x2="5" y2="12"></line>
                        <polyline points="12 19 5 12 12 5"></polyline>
                      </svg>
                      Continue Shopping
                    </Link>
                    <button type="button" className="btn-clear-cart" onClick={clearCart}>
                      Clear Bag
                    </button>
                  </div>
                </div>

                <div className="cart-order-summary">
                  <h3>Order Summary</h3>
                  <div className="summary-row">
                    <span>Total Items Selected</span>
                    <strong>
                      {totalPieces} {totalPieces === 1 ? "Piece" : "Pieces"}
                    </strong>
                  </div>
                  <div className="summary-row">
                    <span>Collection Type</span>
                    <strong>Handcrafted Solid Wood</strong>
                  </div>
                  <div className="summary-row">
                    <span>Freight / Transit</span>
                    <span style={{ color: "var(--color-sage-dark)", fontWeight: 600 }}>Direct Freight / LTL</span>
                  </div>
                  <div className="summary-row">
                    <span>Container Load (HC40)</span>
                    <span>Eligible</span>
                  </div>
                  <div className="summary-divider"></div>
                  <p style={{ fontSize: "0.75rem", color: "rgba(43,37,32,0.65)", lineHeight: 1.6, marginBottom: "18px" }}>
                    Review your order selection. You can instantly submit your order inquiry with product codes and custom
                    finishing specifications directly to our East Brunswick, NJ team.
                  </p>
                  <button type="button" className="btn-checkout" onClick={proceedToCheckout}>
                    Proceed with Order Inquiry
                    <svg
                      width="14"
                      height="14"
                      viewBox="0 0 24 24"
                      fill="none"
                      stroke="currentColor"
                      strokeWidth="2.5"
                    >
                      <line x1="5" y1="12" x2="19" y2="12"></line>
                      <polyline points="12 5 19 12 12 19"></polyline>
                    </svg>
                  </button>
                  <a
                    href="tel:+17857131584"
                    style={{
                      display: "block",
                      textAlign: "center",
                      fontSize: "0.72rem",
                      color: "var(--color-brown)",
                      marginTop: "14px",
                    }}
                  >
                    Need help? Call +1 785-713-1584
                  </a>
                </div>
              </div>
            </div>
          )}

          {/* Curated Pieces Preview */}
          <section className="recom-section">
            <div className="recom-head">
              <div>
                <span
                  style={{
                    fontSize: "0.65rem",
                    fontWeight: 600,
                    letterSpacing: "0.22em",
                    textTransform: "uppercase",
                    color: "var(--color-olive)",
                    display: "block",
                    marginBottom: "6px",
                  }}
                >
                  Handpicked Pieces
                </span>
                <h3>Popular in Our Collection</h3>
              </div>
              <Link href="/catalogue">
                <span>Explore All 430+ Items</span>
                <svg
                  width="14"
                  height="14"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2.5"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <line x1="5" y1="12" x2="19" y2="12"></line>
                  <polyline points="12 5 19 12 12 19"></polyline>
                </svg>
              </Link>
            </div>

            <div className="recom-grid">
              <div className="recom-card" onClick={() => router.push("/catalogue?dept=accessories")}>
                <div className="recom-card-img">
                  <img
                    src="/assets/images/landing/crackle-glass-vanity-set.jpg"
                    alt="Crackle-Glass Bathroom Vanity Set"
                    loading="lazy"
                  />
                </div>
                <div className="recom-card-info">
                  <div className="recom-cat">Bath &amp; Wellness &middot; Handcrafted</div>
                  <div className="recom-title">Crackle-Glass Vanity Set</div>
                  <div className="recom-link">
                    <span>View Details</span>
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                      <polyline points="9 18 15 12 9 6" />
                    </svg>
                  </div>
                </div>
              </div>

              <div className="recom-card" onClick={() => router.push("/catalogue?dept=furnishing")}>
                <div className="recom-card-img">
                  <img
                    src="/assets/images/landing/crescent-nesting-tables.jpg"
                    alt="Crescent Nesting Coffee & Side Tables"
                    loading="lazy"
                  />
                </div>
                <div className="recom-card-info">
                  <div className="recom-cat">Furnishing &middot; Natural Agate Stone</div>
                  <div className="recom-title">Crescent Nesting Tables</div>
                  <div className="recom-link">
                    <span>View Details</span>
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                      <polyline points="9 18 15 12 9 6" />
                    </svg>
                  </div>
                </div>
              </div>

              <div className="recom-card" onClick={() => router.push("/catalogue?dept=furnishing")}>
                <div className="recom-card-img">
                  <img
                    src="/assets/images/landing/new-arrival-carved-cabinet.jpg"
                    alt="Geometric Carved Solid Wood Accent Cabinet"
                    loading="lazy"
                  />
                </div>
                <div className="recom-card-info">
                  <div className="recom-cat">Furnishing &middot; Solid Teak &amp; Oak</div>
                  <div className="recom-title">Geometric Accent Cabinet</div>
                  <div className="recom-link">
                    <span>View Details</span>
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                      <polyline points="9 18 15 12 9 6" />
                    </svg>
                  </div>
                </div>
              </div>

              <div className="recom-card" onClick={() => router.push("/catalogue?dept=accessories")}>
                <div className="recom-card-img">
                  <img
                    src="/assets/images/landing/brass-candle-holder.jpg"
                    alt="Solid Cast Brass Candelabra Candle Holder"
                    loading="lazy"
                  />
                </div>
                <div className="recom-card-info">
                  <div className="recom-cat">Accessories &amp; Decor &middot; Solid Brass</div>
                  <div className="recom-title">Ornate Brass Candelabra</div>
                  <div className="recom-link">
                    <span>View Details</span>
                    <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                      <polyline points="9 18 15 12 9 6" />
                    </svg>
                  </div>
                </div>
              </div>
            </div>
          </section>
        </div>
      </main>

      {/* Inquiry Submission Modal */}
      {isInquiryModalOpen && (
        <div className="inquiry-modal-overlay" onClick={() => setIsInquiryModalOpen(false)}>
          <div className="inquiry-modal-card" onClick={(e) => e.stopPropagation()}>
            <button
              type="button"
              className="inquiry-modal-close"
              onClick={() => setIsInquiryModalOpen(false)}
              aria-label="Close"
            >
              &times;
            </button>

            <div className="inquiry-modal-head">
              <h2>Submit Order Inquiry</h2>
              <p>
                Send your quotation inquiry for {totalPieces} {totalPieces === 1 ? "piece" : "pieces"} directly to our
                East Brunswick, NJ wholesale team.
              </p>
            </div>

            {currentUser && (
              <div className="inquiry-active-member-pill">
                <svg width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                  <polyline points="20 6 9 17 4 12" />
                </svg>
                <span>
                  Active Member: {currentUser.name ? currentUser.name.split(" ")[0] : "Verified"} ({currentUser.email})
                </span>
              </div>
            )}

            {inquiryError && (
              <div
                style={{
                  padding: "10px 14px",
                  background: "#FDE8E8",
                  color: "#9B1C1C",
                  borderRadius: "4px",
                  fontSize: "0.76rem",
                  marginBottom: "16px",
                }}
              >
                {inquiryError}
              </div>
            )}

            {/* Cart Items Preview */}
            <div className="inquiry-items-preview">
              <div className="inquiry-preview-title">
                Selected Pieces ({totalPieces} items):
              </div>
              {cart.map((item, idx) => (
                <div key={item.code + idx} className="inquiry-item-chip">
                  <span style={{ fontWeight: 600 }}>
                    {item.name} ({item.code})
                  </span>
                  <span style={{ fontVariantNumeric: "tabular-nums" }}>Qty: {item.quantity || 1}</span>
                </div>
              ))}
            </div>

            <form onSubmit={handleSendInquiry}>
              <div className="inquiry-form-group">
                <label>Your Name *</label>
                <input
                  type="text"
                  placeholder="e.g. Eleanor Vance"
                  value={inquiryName}
                  onChange={(e) => setInquiryName(e.target.value)}
                  required
                />
              </div>

              <div className="inquiry-form-group">
                <label>Email Address * (Quotation Destination)</label>
                <input
                  type="email"
                  placeholder="name@example.com"
                  value={inquiryEmail}
                  onChange={(e) => setInquiryEmail(e.target.value)}
                  required
                />
              </div>

              <div className="inquiry-form-group">
                <label>Company / Studio Name (Optional)</label>
                <input
                  type="text"
                  placeholder="e.g. Studio Arch Design LLC"
                  value={inquiryCompany}
                  onChange={(e) => setInquiryCompany(e.target.value)}
                />
              </div>

              <div className="inquiry-form-group">
                <label>Phone / WhatsApp (Optional)</label>
                <input
                  type="tel"
                  placeholder="+1 (785) 713-1584"
                  value={inquiryPhone}
                  onChange={(e) => setInquiryPhone(e.target.value)}
                />
              </div>

              <div className="inquiry-form-group">
                <label>Project Notes &amp; Custom Finishing Specs (Optional)</label>
                <textarea
                  rows={3}
                  placeholder="e.g. Prefer Natural Walnut finish, delivery required by Q4, container load inquiry..."
                  value={inquiryNotes}
                  onChange={(e) => setInquiryNotes(e.target.value)}
                />
              </div>

              <div
                style={{
                  fontSize: "0.72rem",
                  color: "rgba(43,37,32,0.65)",
                  marginBottom: "16px",
                  lineHeight: 1.5,
                }}
              >
                ✓ Directly connects to the Fair Home Decor B2B Admin Console &amp; sends a copy to{" "}
                <strong>info@fairhomedecor.com</strong>.
              </div>

              <button type="submit" className="btn-submit-inquiry" disabled={isSubmittingInquiry}>
                {isSubmittingInquiry ? (
                  <span>Submitting Inquiry...</span>
                ) : (
                  <>
                    <span>Send Order Inquiry to info@fairhomedecor.com</span>
                    <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
                      <line x1="22" y1="2" x2="11" y2="13"></line>
                      <polygon points="22 2 15 22 11 13 2 9 22 2"></polygon>
                    </svg>
                  </>
                )}
              </button>
            </form>
          </div>
        </div>
      )}

      <Footer />
    </>
  );
}

