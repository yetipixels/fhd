"use client";

import React, { useState, useEffect, useMemo } from "react";
import Link from "next/link";
import { useParams, useRouter } from "next/navigation";
import { Header } from "@/components/common/Header";
import { Footer } from "@/components/common/Footer";
import allProductsData from "@/data/products.json";
import { Product } from "@/app/catalogue/page";
import { TreePine, Hammer, Truck } from "lucide-react";
import { createClient } from "@/lib/supabase/client";
import "@/styles/catalogue.css";

export default function ProductDetailPage() {
  const params = useParams();
  const router = useRouter();
  const rawId = params?.id as string;
  const decodedId = rawId ? decodeURIComponent(rawId).toLowerCase() : "";

  const [customProducts, setCustomProducts] = useState<any[]>([]);
  const [loading, setLoading] = useState<boolean>(true);
  const [quantity, setQuantity] = useState<number>(5);
  const [favorites, setFavorites] = useState<string[]>([]);
  const [addedNotice, setAddedNotice] = useState<string | null>(null);
  const [recommended, setRecommended] = useState<Product[]>([]);
  const [selectedImage, setSelectedImage] = useState<string | null>(null);

  // Sync Products from Supabase & Local Admin Cache
  useEffect(() => {
    const syncProducts = async () => {
      let localProds: any[] = [];
      try {
        const stored = localStorage.getItem("fhd_admin_products");
        if (stored) {
          const parsed = JSON.parse(stored);
          if (Array.isArray(parsed)) {
            const legacyDummyIds = new Set(["prod-1", "prod-2", "prod-3", "prod-4", "prod-5", "prod-6"]);
            localProds = parsed.filter((p: any) => !legacyDummyIds.has(p.id) && !p.id?.startsWith("legacy-"));
          }
        }
      } catch {}

      try {
        const supabase = createClient();
        const { data: prodData } = await supabase
          .from("products")
          .select("*, category:categories(*)")
          .order("created_at", { ascending: false });

        const rawList = [...localProds];
        if (prodData && prodData.length > 0) {
          prodData.forEach((sp: any) => {
            if (!rawList.some((rp) => rp.id === sp.id || (rp.sku && sp.sku && rp.sku.toUpperCase() === sp.sku.toUpperCase()))) {
              rawList.push(sp);
            }
          });
        }

        const formatted: any[] = rawList.map((p: any) => {
          const catName =
            p.category?.name ||
            p.specifications?.Category ||
            p.category_name ||
            p.category ||
            "Furnishing & Decor";
          const subcatSlug =
            p.category?.slug ||
            p.specifications?.Subcategory ||
            p.subcategory ||
            "accent-cabinets";
          const dept =
            p.category?.department ||
            p.department ||
            p.specifications?.Department ||
            "furnishing";
          const dim =
            p.specifications?.Dimensions ||
            p.specifications?.Dimension ||
            p.dimensions ||
            p.dimension ||
            "30 x 14 x 30 in";
          const mat =
            p.specifications?.Material ||
            p.material ||
            "Solid Wood · Handcrafted";
          const fin =
            p.specifications?.Finish ||
            p.finish ||
            "Natural Satin Finish";
          const allImages = Array.isArray(p.images) && p.images.length > 0
            ? p.images
            : [p.image || "/assets/images/logo.png"];
          const img = allImages[0] || "/assets/images/logo.png";

          return {
            id: p.id,
            sku: p.sku || p.code || p.id,
            code: p.sku || p.code || p.id,
            name: p.name,
            category: catName,
            dimension: dim,
            dimensions: dim,
            material: mat,
            finish: fin,
            moq: p.moq || 5,
            description: p.description || "Handcrafted solid wood heirloom furniture piece, tailored for luxury residential and hospitality trade projects.",
            image: img,
            images: allImages,
            department: dept,
            subcategory: subcatSlug,
            subcatTitle: catName,
            slug: p.slug || "",
            bulk_tiers: p.bulk_tiers || [],
            base_price: p.base_price,
            specifications: p.specifications || {},
          };
        });

        setCustomProducts(formatted);
      } catch (err) {
        console.warn("Could not fetch products from Supabase, using local fallback:", err);
        if (localProds.length > 0) {
          const formattedLocal = localProds.map((p: any) => ({
            id: p.id,
            sku: p.sku || p.code || p.id,
            code: p.sku || p.code || p.id,
            name: p.name,
            category: p.category_name || p.category || "Furnishing & Decor",
            dimension: p.dimensions || p.dimension || "30 x 14 x 30 in",
            dimensions: p.dimensions || p.dimension || "30 x 14 x 30 in",
            material: p.material || "Solid Wood · Handcrafted",
            finish: p.finish || "Natural Satin Finish",
            moq: p.moq || 5,
            description: p.description || "",
            image: (p.images && p.images[0]) || p.image || "/assets/images/logo.png",
            images: p.images || [p.image || "/assets/images/logo.png"],
            slug: p.slug || "",
            bulk_tiers: p.bulk_tiers || [],
            base_price: p.base_price,
            specifications: p.specifications || {},
          }));
          setCustomProducts(formattedLocal);
        }
      } finally {
        setLoading(false);
      }
    };

    syncProducts();
    window.addEventListener("fhd_products_updated", syncProducts);
    return () => {
      window.removeEventListener("fhd_products_updated", syncProducts);
    };
  }, []);

  // Merge static catalogue data with live custom database products
  const allProducts = useMemo(() => {
    const staticList = (allProductsData as any[]) || [];
    if (customProducts.length === 0) return staticList;

    // Custom products override static duplicates if matching SKU
    const customSkus = new Set(
      customProducts.map((p) => (p.sku || p.code || p.id || "").toLowerCase())
    );
    const filteredStatic = staticList.filter(
      (p) => !customSkus.has((p.sku || p.code || p.id || "").toLowerCase())
    );

    return [...customProducts, ...filteredStatic];
  }, [customProducts]);

  // Find product by SKU, code, ID, or slug
  const product = useMemo(() => {
    if (!decodedId) return null;
    const clean = decodedId.trim().toLowerCase();

    // 1. Direct match on sku, code, id, or slug
    let found = allProducts.find(
      (p) =>
        (p.sku && p.sku.toLowerCase() === clean) ||
        (p.code && p.code.toLowerCase() === clean) ||
        (p.id && p.id.toLowerCase() === clean) ||
        (p.slug && p.slug.toLowerCase() === clean)
    );

    // 2. Alphanumeric match (handles hyphens, underscores, or URL slug variations)
    if (!found) {
      const strippedClean = clean.replace(/[^a-z0-9]/g, "");
      found = allProducts.find((p) => {
        const sSku = (p.sku || "").replace(/[^a-z0-9]/g, "").toLowerCase();
        const sCode = (p.code || "").replace(/[^a-z0-9]/g, "").toLowerCase();
        const sSlug = (p.slug || "").replace(/[^a-z0-9]/g, "").toLowerCase();
        const sId = (p.id || "").replace(/[^a-z0-9]/g, "").toLowerCase();
        return (
          (sSku && sSku === strippedClean) ||
          (sCode && sCode === strippedClean) ||
          (sSlug && sSlug === strippedClean) ||
          (sId && sId === strippedClean)
        );
      });
    }

    return found || null;
  }, [allProducts, decodedId]);

  // Initialize quantity to product MOQ
  useEffect(() => {
    if (product) {
      setQuantity(product.moq || 5);
      setSelectedImage(null);
    }
  }, [product]);

  // Load favorites
  useEffect(() => {
    try {
      const favs = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      setFavorites(Array.isArray(favs) ? favs : []);
    } catch {
      setFavorites([]);
    }
  }, []);

  // Compute RANDOM recommendations from the same category
  useEffect(() => {
    if (!product) return;
    const currentCategory = (product.category || "").toLowerCase();
    const sameCat = allProducts.filter(
      (p) =>
        (p.category || "").toLowerCase() === currentCategory &&
        (p.sku || p.code || p.id) !== (product.sku || product.code || product.id)
    );
    // Shuffle randomly every time
    const shuffled = [...sameCat].sort(() => 0.5 - Math.random());
    setRecommended(shuffled.slice(0, 4));
  }, [product, allProducts]);

  const toggleFavorite = (sku: string) => {
    try {
      const favs = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      let updated: string[];
      if (favs.includes(sku)) {
        updated = favs.filter((c: string) => c !== sku);
      } else {
        updated = [...favs, sku];
      }
      localStorage.setItem("fhd_favorites", JSON.stringify(updated));
      localStorage.setItem("fhd_favourites", JSON.stringify(updated));
      setFavorites(updated);
      window.dispatchEvent(new Event("fhd_favorites_updated"));

      const supabase = createClient();
      supabase.auth.getSession().then(({ data: { session } }) => {
        if (session?.user) {
          supabase.auth.updateUser({
            data: { wishlist: updated },
          });
        }
      });
    } catch (e) {
      console.error(e);
    }
  };

  const addToCart = (p: Product, qty: number) => {
    try {
      const cart = JSON.parse(localStorage.getItem("fhd_cart") || "[]");
      const targetSku = p.sku || p.code || p.id || "";
      const existing = cart.find((i: any) => i.code === targetSku || i.sku === targetSku);
      if (existing) {
        existing.quantity = (existing.quantity || 0) + qty;
      } else {
        cart.push({
          id: p.id,
          code: targetSku,
          sku: targetSku,
          name: p.name,
          category: p.category,
          dimensions: p.dimension || p.dimensions,
          dimension: p.dimension || p.dimensions,
          material: p.material,
          finish: p.finish,
          moq: p.moq,
          image: p.image,
          quantity: qty,
          price: "Inquire / Trade",
        });
      }
      localStorage.setItem("fhd_cart", JSON.stringify(cart));
      window.dispatchEvent(new Event("fhd_cart_updated"));
      setAddedNotice(`Added ${qty} × ${targetSku} to Cart!`);
      setTimeout(() => setAddedNotice(null), 3500);
    } catch (e) {
      console.error(e);
    }
  };

  const getImgSrc = (img?: string) => {
    if (!img) return "/assets/images/logo.png";
    if (img.startsWith("http://") || img.startsWith("https://")) return img;
    if (img.startsWith("/http://") || img.startsWith("/https://")) return img.substring(1);
    return img.startsWith("/") ? img : "/" + img;
  };

  if (loading && !product) {
    return (
      <>
        <Header activePage="catalogue" />
        <div style={{ padding: "140px 24px", textAlign: "center", minHeight: "60vh" }}>
          <div
            style={{
              display: "inline-block",
              width: "36px",
              height: "36px",
              border: "3px solid #E6E1DA",
              borderTopColor: "#7C8C6E",
              borderRadius: "50%",
              animation: "spin 0.8s linear infinite",
            }}
          />
          <p style={{ color: "var(--color-brown)", marginTop: "16px", fontSize: "0.85rem", letterSpacing: "0.06em", textTransform: "uppercase" }}>
            Retrieving product specifications...
          </p>
        </div>
        <Footer />
      </>
    );
  }

  if (!product) {
    return (
      <>
        <Header activePage="catalogue" />
        <div style={{ padding: "120px 24px", textAlign: "center", minHeight: "60vh" }}>
          <h2 style={{ fontFamily: "var(--font-serif)", fontSize: "2rem", marginBottom: "16px" }}>
            Piece Not Found
          </h2>
          <p style={{ color: "var(--color-brown)", marginBottom: "24px" }}>
            The requested product code or SKU could not be found in our current catalogue.
          </p>
          <Link href="/catalogue" className="btn-contact-nav" style={{ display: "inline-block" }}>
            &larr; Return to Catalogue
          </Link>
        </div>
        <Footer />
      </>
    );
  }

  const targetSku = product.sku || product.code || product.id || "";
  const isFav = favorites.includes(targetSku);

  return (
    <>
      <Header activePage="catalogue" />

      {/* Floating Added Notice */}
      {addedNotice && (
        <div
          style={{
            position: "fixed",
            bottom: "24px",
            right: "24px",
            background: "#2B2520",
            color: "#FAF8F5",
            padding: "12px 24px",
            borderRadius: "6px",
            boxShadow: "0 4px 20px rgba(0,0,0,0.25)",
            zIndex: 9999,
            fontSize: "13px",
            fontWeight: 600,
            display: "flex",
            alignItems: "center",
            gap: "8px",
          }}
        >
          <span style={{ color: "#7C8C6E" }}>✓</span>
          <span>{addedNotice}</span>
          <Link href="/cart" style={{ color: "#7C8C6E", textDecoration: "underline", marginLeft: "8px" }}>
            View Cart &rarr;
          </Link>
        </div>
      )}

      <main className="pdp-container">
        {/* Breadcrumbs Navigation */}
        <nav className="pdp-breadcrumbs" aria-label="Breadcrumb">
          <Link href="/">Home</Link>
          <span className="sep">/</span>
          <Link href="/catalogue">Catalogue</Link>
          <span className="sep">/</span>
          <Link href={`/catalogue?category=${encodeURIComponent(product.category)}`}>
            {product.category}
          </Link>
          <span className="sep">/</span>
          <span className="current">{targetSku}</span>
        </nav>

        {/* Big Product Presentation Grid */}
        <section className="pdp-main-grid">
          {/* Left Column: Visual Gallery with Hover Zoom */}
          <div className="pdp-gallery-wrap">
            <div className="pdp-main-image-box">
              <span className="product-badge-subcat">{product.category}</span>
              <span className="product-badge-code">{targetSku}</span>
              <img
                src={getImgSrc(selectedImage || product.image)}
                alt={product.name}
                onError={(e) => {
                  (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                }}
              />
            </div>

            {/* Thumbnail Gallery for Multi-Image Pieces */}
            {product.images && product.images.length > 1 && (
              <div style={{ display: "flex", gap: "10px", marginTop: "14px", overflowX: "auto", paddingBottom: "6px" }}>
                {product.images.map((imgUrl: string, idx: number) => {
                  const isCurrent = (selectedImage || product.image) === imgUrl;
                  return (
                    <button
                      key={idx}
                      type="button"
                      onClick={() => setSelectedImage(imgUrl)}
                      style={{
                        width: "64px",
                        height: "64px",
                        borderRadius: "4px",
                        border: isCurrent ? "2px solid #7C8C6E" : "1px solid rgba(43,37,32,0.15)",
                        padding: 0,
                        overflow: "hidden",
                        cursor: "pointer",
                        flexShrink: 0,
                        background: "#FAF8F5",
                        opacity: isCurrent ? 1 : 0.7,
                        transition: "all 0.2s ease",
                      }}
                      title={`View angle ${idx + 1}`}
                    >
                      <img
                        src={getImgSrc(imgUrl)}
                        alt={`${product.name} - Angle ${idx + 1}`}
                        style={{ width: "100%", height: "100%", objectFit: "cover" }}
                        onError={(e) => {
                          (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                        }}
                      />
                    </button>
                  );
                })}
              </div>
            )}

            {/* Quality and Craftsmanship Trust Indicators */}
            <div className="pdp-trust-pills">
              <div className="pdp-trust-pill">
                <div className="pdp-trust-icon-box">
                  <TreePine size={18} strokeWidth={1.75} />
                </div>
                <div className="pdp-trust-text">
                  <span className="pdp-trust-title">100% Solid Hardwood</span>
                  <span className="pdp-trust-sub">Kiln-Dried Timber</span>
                </div>
              </div>
              <div className="pdp-trust-pill">
                <div className="pdp-trust-icon-box">
                  <Hammer size={18} strokeWidth={1.75} />
                </div>
                <div className="pdp-trust-text">
                  <span className="pdp-trust-title">Artisan Joinery</span>
                  <span className="pdp-trust-sub">Generational Craft</span>
                </div>
              </div>
              <div className="pdp-trust-pill">
                <div className="pdp-trust-icon-box">
                  <Truck size={18} strokeWidth={1.75} />
                </div>
                <div className="pdp-trust-text">
                  <span className="pdp-trust-title">Container Freight</span>
                  <span className="pdp-trust-sub">Direct Factory FOB</span>
                </div>
              </div>
            </div>
          </div>

          {/* Right Column: Specifications & Commercial Procurement */}
          <div className="pdp-info-pane">
            <span className="pdp-category-kicker">{product.category}</span>
            <h1 className="pdp-product-title">{product.name}</h1>

            <div className="pdp-price-wrap">
              <span className="pdp-price-val">$XXX</span>
              <span className="pdp-price-badge">Trade / Wholesale Pricing</span>
            </div>

            {/* Comprehensive Uniform Specifications Table */}
            <div className="pdp-specs-grid">
              <div className="pdp-spec-row">
                <span className="pdp-spec-label">Master SKU:</span>
                <span className="pdp-spec-value" style={{ fontFamily: "monospace", letterSpacing: "0.05em" }}>
                  {targetSku}
                </span>
              </div>
              <div className="pdp-spec-row">
                <span className="pdp-spec-label">Category:</span>
                <span className="pdp-spec-value">{product.category}</span>
              </div>
              <div className="pdp-spec-row">
                <span className="pdp-spec-label">Dimensions:</span>
                <span className="pdp-spec-value">{product.dimension || product.dimensions}</span>
              </div>
              <div className="pdp-spec-row">
                <span className="pdp-spec-label">Material:</span>
                <span className="pdp-spec-value">{product.material}</span>
              </div>
              <div className="pdp-spec-row">
                <span className="pdp-spec-label">Finish:</span>
                <span className="pdp-spec-value">{product.finish}</span>
              </div>
              <div className="pdp-spec-row">
                <span className="pdp-spec-label">Minimum Order Quantity (MOQ):</span>
                <span className="pdp-spec-value" style={{ color: "var(--color-sage-dark)", fontWeight: 700 }}>
                  {product.moq} pcs (Wholesale Pack)
                </span>
              </div>
              <div className="pdp-spec-row">
                <span className="pdp-spec-label">Packaging & Freight:</span>
                <span className="pdp-spec-value">HC40 Container loads &middot; FOB NJ / India</span>
              </div>
              {product.specifications &&
                typeof product.specifications === "object" &&
                Object.entries(product.specifications).map(([key, val]) => {
                  if (
                    ["Category", "Dimensions", "Dimension", "Material", "Finish", "Department", "Subcategory"].includes(key) ||
                    !val
                  ) {
                    return null;
                  }
                  return (
                    <div className="pdp-spec-row" key={key}>
                      <span className="pdp-spec-label">{key}:</span>
                      <span className="pdp-spec-value">{String(val)}</span>
                    </div>
                  );
                })}
            </div>

            {/* Narrative Description */}
            <p className="pdp-desc">{product.description}</p>

            {/* Wholesale Procurement Actions Box */}
            <div className="pdp-actions-box">
              <div className="pdp-qty-row">
                <span style={{ fontSize: "0.78rem", fontWeight: 700, color: "var(--color-brown)", minWidth: "120px" }}>
                  Order Quantity:
                </span>
                <div className="pdp-qty-stepper">
                  <button
                    type="button"
                    className="pdp-qty-btn"
                    disabled={quantity <= (product.moq || 1)}
                    onClick={() => setQuantity((q) => Math.max(product.moq || 1, q - 1))}
                    aria-label="Decrease quantity"
                  >
                    &minus;
                  </button>
                  <input
                    type="number"
                    className="pdp-qty-input"
                    value={quantity}
                    min={product.moq || 1}
                    onChange={(e) => setQuantity(Math.max(1, parseInt(e.target.value) || 1))}
                    aria-label="Quantity"
                  />
                  <button
                    type="button"
                    className="pdp-qty-btn"
                    onClick={() => setQuantity((q) => q + 1)}
                    aria-label="Increase quantity"
                  >
                    +
                  </button>
                </div>
                <span style={{ fontSize: "0.74rem", color: "var(--color-brown)", fontWeight: 600 }}>units</span>
              </div>

              <div style={{ fontSize: "0.72rem", color: "var(--color-sage-dark)", fontStyle: "italic", marginBottom: "16px" }}>
                &bull; Wholesale minimum order requirement is {product.moq} units for container/freight consolidation.
              </div>

              <div className="pdp-btn-group">
                <button
                  type="button"
                  className="pdp-btn-add"
                  onClick={() => addToCart(product, quantity)}
                >
                  <svg width="16" height="16" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2">
                    <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
                    <line x1="3" y1="6" x2="21" y2="6" />
                    <path d="M16 10a4 4 0 0 1-8 0" />
                  </svg>
                  Add {quantity} units to Cart
                </button>
                <Link
                  href={`/contact?subject=Inquiry%20for%20SKU%20${encodeURIComponent(targetSku)}`}
                  className="pdp-btn-inquire"
                >
                  Inquire / Custom Order
                </Link>
                <button
                  type="button"
                  className="pdp-btn-fav"
                  onClick={() => toggleFavorite(targetSku)}
                  title="Save to Favourites"
                  aria-label="Save to Favourites"
                >
                  <svg
                    width="18"
                    height="18"
                    viewBox="0 0 24 24"
                    fill={isFav ? "var(--color-dark)" : "none"}
                    stroke="currentColor"
                    strokeWidth="2"
                  >
                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z" />
                  </svg>
                </button>
              </div>
            </div>
          </div>
        </section>

        {/* Recommended Products Section from the Same Category (Random All the Time) */}
        {recommended.length > 0 && (
          <section className="pdp-recommended-section">
            <div className="pdp-recommended-header">
              <h2 className="pdp-recommended-title">Recommended from {product.category}</h2>
              <p className="pdp-recommended-subtitle">
                Randomized artisanal selections from the {product.category} collection crafted with matching joinery.
              </p>
            </div>

            <div className="pdp-recommended-grid">
              {recommended.map((rec) => {
                const recSku = rec.sku || rec.code || "";
                const recFav = favorites.includes(recSku);
                return (
                  <article key={recSku} className="product-card">
                    {/* Image wrap with hover zoom */}
                    <div
                      className="product-card-img-wrap"
                      onClick={() => router.push(`/products/${encodeURIComponent(recSku)}`)}
                    >
                      <span className="product-badge-subcat">{rec.tag || rec.subcatTitle || rec.category}</span>
                      <span className="product-badge-code">{recSku}</span>
                      <button
                        type="button"
                        className={`btn-card-fav ${recFav ? "is-fav" : ""}`}
                        onClick={(e) => {
                          e.stopPropagation();
                          toggleFavorite(recSku);
                        }}
                        title={recFav ? "Saved in Favourites" : "Save to Favourites"}
                        aria-label="Favourite"
                      >
                        <svg
                          viewBox="0 0 24 24"
                          width="18"
                          height="18"
                          fill={recFav ? "#B83B3B" : "none"}
                          stroke={recFav ? "#B83B3B" : "currentColor"}
                          strokeWidth="2"
                        >
                          <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z" />
                        </svg>
                      </button>
                      <img
                        src={getImgSrc(rec.image)}
                        alt={rec.name}
                        loading="lazy"
                        onError={(e) => {
                          (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                        }}
                      />
                    </div>

                    {/* Card Body - Clean & Minimal Matching Second Image */}
                    <div className="product-card-body">
                      <Link href={`/products/${encodeURIComponent(recSku)}`}>
                        <h3 className="product-card-title">{rec.name}</h3>
                      </Link>

                      <div className="product-dimensions-box">
                        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                          <rect x="3" y="3" width="18" height="18" rx="2" />
                          <line x1="3" y1="9" x2="21" y2="9" />
                          <line x1="9" y1="21" x2="9" y2="9" />
                        </svg>
                        <span>{rec.dimension || rec.dimensions}</span>
                      </div>

                      <div className="product-price-row">
                        <span className="product-price-val">$XXX</span>
                        <span className="product-price-note">TRADE / WHOLESALE</span>
                      </div>

                      <p className="product-card-desc">{rec.description}</p>

                      <div className="product-card-footer">
                        <button
                          type="button"
                          className="btn-card-addcart"
                          onClick={(e) => {
                            e.stopPropagation();
                            addToCart(rec, rec.moq || 5);
                          }}
                        >
                          <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2">
                            <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
                            <line x1="3" y1="6" x2="21" y2="6" />
                            <path d="M16 10a4 4 0 0 1-8 0" />
                          </svg>
                          ADD TO CART
                        </button>
                        <Link
                          href={`/contact?subject=Inquiry%20for%20${encodeURIComponent(recSku)}`}
                          className="btn-card-inquire"
                          onClick={(e) => e.stopPropagation()}
                        >
                          INQUIRE
                        </Link>
                      </div>
                    </div>
                  </article>
                );
              })}
            </div>
          </section>
        )}
      </main>

      <Footer />
    </>
  );
}

