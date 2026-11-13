"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";
import { Header } from "@/components/common/Header";
import { Footer } from "@/components/common/Footer";
import { WelcomeModal } from "@/components/common/WelcomeModal";
import "@/styles/home.css";

export default function HomePage() {
  const [nlEmail, setNlEmail] = useState("");
  const [nlSubscribed, setNlSubscribed] = useState(false);
  const [banners, setBanners] = useState<any>(null);

  useEffect(() => {
    const loadBanners = () => {
      try {
        const stored = localStorage.getItem("fhd_banners_settings");
        if (stored) {
          setBanners(JSON.parse(stored));
        }
      } catch {}
    };
    loadBanners();
    window.addEventListener("fhd_banners_updated", loadBanners);
    return () => window.removeEventListener("fhd_banners_updated", loadBanners);
  }, []);

  useEffect(() => {
    // Parallax hero effect
    const heroImg = document.getElementById("heroImg");
    const handleScroll = () => {
      if (heroImg && window.scrollY < window.innerHeight) {
        heroImg.style.transform = `translateY(${window.scrollY * 0.28}px)`;
      }
    };
    window.addEventListener("scroll", handleScroll, { passive: true });

    // Scroll reveal observer
    const fades = document.querySelectorAll(".fade");
    const obs = new IntersectionObserver(
      (entries) => {
        entries.forEach((e) => {
          if (e.isIntersecting) {
            e.target.classList.add("in");
            obs.unobserve(e.target);
          }
        });
      },
      { threshold: 0.1, rootMargin: "0px 0px -40px 0px" }
    );
    fades.forEach((el) => obs.observe(el));

    return () => {
      window.removeEventListener("scroll", handleScroll);
      obs.disconnect();
    };
  }, []);

  const handleNlSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (nlEmail) {
      setNlSubscribed(true);
      setNlEmail("");
      setTimeout(() => setNlSubscribed(false), 4000);
    }
  };

  const renderHeroHeading = (heading?: string) => {
    if (!heading) {
      return (
        <>
          Considered living,
          <br />
          <em>beautifully made.</em>
        </>
      );
    }
    const lower = heading.toLowerCase();
    if (lower.includes("beautifully made")) {
      const idx = lower.indexOf("beautifully made");
      const before = heading.substring(0, idx).trim().replace(/,$/, "");
      const matched = heading.substring(idx, idx + "beautifully made".length);
      const after = heading.substring(idx + "beautifully made".length);
      return (
        <>
          {before},
          <br />
          <em>{matched}{after.includes(".") ? "" : "."}</em>
          {after.includes(".") ? "." : ""}
        </>
      );
    }
    return heading;
  };

  const renderHolidayTitle = (title?: string) => {
    if (!title) {
      return (
        <>
          Bring Holiday Warmth Home,
          <br />
          <em>Beautifully Handcrafted.</em>
        </>
      );
    }
    const lower = title.toLowerCase();
    if (lower.includes("beautifully handcrafted")) {
      const idx = lower.indexOf("beautifully handcrafted");
      const before = title.substring(0, idx).trim().replace(/,$/, "");
      const matched = title.substring(idx, idx + "beautifully handcrafted".length);
      const after = title.substring(idx + "beautifully handcrafted".length);
      return (
        <>
          {before},
          <br />
          <em>{matched}{after.includes(".") ? "" : "."}</em>
          {after.includes(".") ? "." : ""}
        </>
      );
    }
    return title;
  };

  return (
    <>
      <WelcomeModal />
      <Header activePage="home" />

      {/* ═══════════════ HERO (Clean, Elegant, Tagline Focused) ═══════════════ */}
      <section className="hero">
        <div className="hero-img" id="heroImg"></div>
        <div className="hero-overlay"></div>
        <div className="hero-body wrap">
          <div className="hero-text">
            <p className="hero-eyebrow">
              {banners?.heroEyebrow && !banners.heroEyebrow.includes("HANDCRAFTED LUXURY")
                ? banners.heroEyebrow
                : "Fair Home Decor · East Brunswick, NJ"}
            </p>
            <h1 className="hero-h1">{renderHeroHeading(banners?.heroHeading)}</h1>
            <p className="hero-desc">
              {banners?.heroDesc ||
                "Artisanal solid wood furniture and intentional home decor — handcrafted to bring warmth, balance, and enduring beauty to modern American spaces."}
            </p>
            <div className="hero-actions">
              <Link href={banners?.heroPrimaryBtnLink || "/catalogue"} className="btn btn-hero-dark">
                {banners?.heroPrimaryBtnText ? banners.heroPrimaryBtnText.toUpperCase() : "EXPLORE COLLECTION"}
                <svg
                  className="arr"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="2.2"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <line x1="5" y1="12" x2="19" y2="12" />
                  <polyline points="12 5 19 12 12 19" />
                </svg>
              </Link>
              <Link href={banners?.heroSecondaryBtnLink || "/about"} className="btn btn-hero-outline">
                {banners?.heroSecondaryBtnText ? banners.heroSecondaryBtnText.toUpperCase() : "OUR STORY"}
              </Link>
            </div>
          </div>
        </div>
        <div className="hero-scroll">
          <div className="hero-scroll-line"></div>
          <span>Scroll</span>
        </div>
      </section>

      {/* ═══════════════ CATEGORY BAR ═══════════════ */}
      <div className="cat-bar">
        <div className="cat-bar-inner wrap">
          <Link href="/catalogue?dept=furnishing">Furnishing</Link>
          <Link href="/catalogue?dept=lighting">Lighting</Link>
          <Link href="/catalogue?dept=seating">Seating</Link>
          <Link href="/catalogue?dept=accessories">Accessories &amp; Decor</Link>
          <Link href="/catalogue?dept=art">Art &amp; Sculpture</Link>
        </div>
      </div>

      {/* ═══════════════ SECTION 3 — CHRISTMAS & HOLIDAY OFFER ═══════════════ */}
      {banners?.holidayOfferEnabled !== false && (
        <section className="holiday-section" id="collections">
          <div className="wrap">
            <div className="holiday-card fade">
              <div className="holiday-img-wrap">
                <img
                  src={banners?.holidayImage || "/assets/images/landing/christmas-offer-landscape.webp"}
                  alt="Warm Christmas Living Room with Handcrafted Wooden Furniture and Festive Decor"
                  loading="lazy"
                />
                <div className="holiday-badge">
                  <span className="sparkle">✦</span>
                  <span>{banners?.holidayBadge || "Holiday Season 2026"}</span>
                </div>
              </div>
              <div className="holiday-content">
                <span className="holiday-eyebrow">
                  {banners?.holidayEyebrow || (
                    <>
                      <span>Seasonal Curation</span> &middot; <span>Limited Holiday Offer</span>
                    </>
                  )}
                </span>
                <h2 className="holiday-title">
                  {renderHolidayTitle(banners?.holidayTitle)}
                </h2>
                <p className="holiday-desc">
                  {banners?.holidayDesc ||
                    "Gather with intention this holiday season. Transform your home with our solid wood dining tables, consoles, and artisan decor — built to anchor your festive celebrations for generations to come."}
                </p>

                <div className="holiday-offer-box">
                  <div className="offer-details">
                    <span className="offer-tag">Special Christmas Offer</span>
                    <span className="offer-headline">
                      {banners?.holidayPill1 || "15% Off Handcrafted Pieces · Complimentary Freight"}
                    </span>
                  </div>
                  <span className="offer-code-pill">
                    {banners?.holidayPill2 ? banners.holidayPill2 : "CODE: HOLIDAY15"}
                  </span>
                </div>

                <div className="holiday-actions">
                  <Link
                    href={banners?.holidayPrimaryBtnLink || "/catalogue?dept=furnishing"}
                    className="btn-holiday-primary"
                  >
                    <span>{banners?.holidayPrimaryBtnText || "Shop Holiday Collection"}</span>
                    <svg
                      width="13"
                      height="13"
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
                  <Link
                    href={banners?.holidaySecondaryBtnLink || "/contact?subject=Christmas%20Holiday%20Inquiry"}
                    className="btn-holiday-secondary"
                  >
                    <span>{banners?.holidaySecondaryBtnText || "Inquire for Delivery"}</span>
                  </Link>
                </div>
              </div>
            </div>
          </div>
        </section>
      )}

      {/* ═══════════════ MID HERO ═══════════════ */}
      <section className="mid-hero">
        <div className="mid-hero-img"></div>
        <div className="mid-hero-overlay"></div>
        <div className="mid-hero-body wrap">
          <div className="mid-hero-text fade">
            <span className="label">Handcrafted Detail</span>
            <h2>
              Every Joint.
              <br />
              Every Grain.
              <br />
              <em>Every Intention.</em>
            </h2>
            <p>
              Our artisans treat each piece as a work of craft — selecting wood for its grain and character, finishing by
              hand, and building to last generations. This is furniture with a story.
            </p>
            <Link href="/catalogue" className="btn btn-white">
              Shop the Collection
              <svg
                className="arr"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2.2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <line x1="5" y1="12" x2="19" y2="12" />
                <polyline points="12 5 19 12 12 19" />
              </svg>
            </Link>
          </div>
        </div>
      </section>

      {/* ═══════════════ FEATURED PRODUCTS ═══════════════ */}
      <section className="featured" id="featured">
        <div className="wrap">
          <div className="featured-head">
            <div className="fade">
              <span className="label">Editor&apos;s Selection</span>
              <h2>
                Most-Loved <em>Pieces</em>
              </h2>
              <p>Handpicked from our collection — timeless shapes in solid wood, natural stone, and handcrafted brass.</p>
            </div>
            <Link href="/catalogue" className="btn btn-outline fade">
              View All Products
            </Link>
          </div>
          <div className="prod-row">
            <article
              className="prod-card fade d1"
              onClick={() => (window.location.href = "/catalogue?search=candle")}
            >
              <div className="prod-img">
                <img
                  src="/assets/images/landing/brass-candle-holder.jpg"
                  alt="Handcrafted solid brass ornate candelabra candle holder"
                  loading="lazy"
                />
                <span className="prod-tag">Solid Brass</span>
              </div>
              <div className="prod-info">
                <div className="prod-cat">Accessories &amp; Decor &middot; Brass</div>
                <div className="prod-name">Ornate Brass Candelabra</div>
                <Link href="/catalogue?search=candle" className="prod-link">
                  View Details
                  <svg
                    width="12"
                    height="12"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </article>

            <article
              className="prod-card fade d2"
              onClick={() => (window.location.href = "/catalogue?search=nesting")}
            >
              <div className="prod-img">
                <img
                  src="/assets/images/landing/crescent-nesting-tables.jpg"
                  alt="Crescent agate stone nesting side tables set of 3"
                  loading="lazy"
                />
                <span className="prod-tag">Bestseller</span>
              </div>
              <div className="prod-info">
                <div className="prod-cat">Furnishing &middot; Agate &amp; Stone</div>
                <div className="prod-name">Crescent Agate Nesting Tables</div>
                <Link href="/catalogue?search=nesting" className="prod-link">
                  View Details
                  <svg
                    width="12"
                    height="12"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </article>

            <article
              className="prod-card fade d3"
              onClick={() => (window.location.href = "/catalogue?search=reindeer")}
            >
              <div className="prod-img">
                <img
                  src="/assets/images/landing/reindeer-candle-centrepiece.jpg"
                  alt="Silver reindeer Christmas candle centrepiece with crackle glass votives"
                  loading="lazy"
                />
                <span className="prod-tag">Holiday Edit</span>
              </div>
              <div className="prod-info">
                <div className="prod-cat">Accessories &amp; Decor &middot; Holiday</div>
                <div className="prod-name">Silver Reindeer Centrepiece</div>
                <Link href="/catalogue?search=reindeer" className="prod-link">
                  View Details
                  <svg
                    width="12"
                    height="12"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </article>

            <article
              className="prod-card fade d4"
              onClick={() => (window.location.href = "/catalogue?search=vanity")}
            >
              <div className="prod-img">
                <img
                  src="/assets/images/landing/crackle-glass-vanity-set.jpg"
                  alt="Handcrafted crackle glass bathroom vanity accessories set with carved wooden tray"
                  loading="lazy"
                />
                <span className="prod-tag">Bath &amp; Vanity</span>
              </div>
              <div className="prod-info">
                <div className="prod-cat">Accessories &amp; Decor &middot; Glass</div>
                <div className="prod-name">Crackle Glass Vanity Set</div>
                <Link href="/catalogue?search=vanity" className="prod-link">
                  View Details
                  <svg
                    width="12"
                    height="12"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </article>
          </div>
        </div>
      </section>

      {/* ═══════════════ DARK PRODUCT STRIP (New Arrivals) ═══════════════ */}
      <section className="dark-strip">
        <div className="wrap">
          <div className="dark-strip-head">
            <div className="fade">
              <span className="label">Featured Pieces</span>
              <h2>New Arrivals</h2>
              <p>The latest additions to our collection — solid wood furniture, artisan holiday decor, and handcrafted textiles.</p>
            </div>
            <Link href="/catalogue" className="btn btn-tan fade">
              View All New Arrivals
            </Link>
          </div>
          <div className="dark-prod-row">
            <div
              className="dark-prod-card fade d1"
              onClick={() => (window.location.href = "/catalogue?search=star+arch")}
            >
              <div className="dark-prod-img">
                <img
                  src="/assets/images/landing/new-arrival-star-arch.jpg"
                  alt="Silver Star Arch Christmas Candle Centrepiece"
                  loading="lazy"
                />
              </div>
              <div className="dark-prod-info">
                <div className="dark-prod-cat">Accessories &amp; Decor &middot; Holiday</div>
                <div className="dark-prod-name">Silver Star Arch Centrepiece</div>
                <Link href="/catalogue?search=star+arch" className="dark-prod-link">
                  View
                  <svg
                    width="11"
                    height="11"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </div>

            <div
              className="dark-prod-card fade d2"
              onClick={() => (window.location.href = "/catalogue?search=sleigh")}
            >
              <div className="dark-prod-img">
                <img
                  src="/assets/images/landing/new-arrival-reindeer-sleigh.jpg"
                  alt="Gold and Silver Reindeer Sleigh Candle Holders"
                  loading="lazy"
                />
              </div>
              <div className="dark-prod-info">
                <div className="dark-prod-cat">Accessories &amp; Decor &middot; Candle Holders</div>
                <div className="dark-prod-name">Reindeer Sleigh Candle Holders</div>
                <Link href="/catalogue?search=sleigh" className="dark-prod-link">
                  View
                  <svg
                    width="11"
                    height="11"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </div>

            <div
              className="dark-prod-card fade d3"
              onClick={() => (window.location.href = "/catalogue?search=cushion")}
            >
              <div className="dark-prod-img">
                <img
                  src="/assets/images/landing/new-arrival-cushions.jpg"
                  alt="Hand-Embroidered Artisan Linen Cushion Covers"
                  loading="lazy"
                />
              </div>
              <div className="dark-prod-info">
                <div className="dark-prod-cat">Furnishing &middot; Cushion Covers</div>
                <div className="dark-prod-name">Embroidered Linen Cushion Trio</div>
                <Link href="/catalogue?search=cushion" className="dark-prod-link">
                  View
                  <svg
                    width="11"
                    height="11"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </div>

            <div
              className="dark-prod-card fade d4"
              onClick={() => (window.location.href = "/catalogue?search=geometric")}
            >
              <div className="dark-prod-img">
                <img
                  src="/assets/images/landing/new-arrival-carved-cabinet.jpg"
                  alt="Geometric Carved Solid Wood Accent Cabinet"
                  loading="lazy"
                />
              </div>
              <div className="dark-prod-info">
                <div className="dark-prod-cat">Furnishing &middot; Accent Cabinets</div>
                <div className="dark-prod-name">Geometric Carved Accent Cabinet</div>
                <Link href="/catalogue?search=geometric" className="dark-prod-link">
                  View
                  <svg
                    width="11"
                    height="11"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.5"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ═══════════════ EDITORIAL PANELS ═══════════════ */}
      <section className="editorial">
        <div className="wrap">
          <div className="editorial-grid">
            <div className="ed-panel fade d1">
              <img
                src="/assets/images/landing/shop-furniture.jpg"
                alt="Handcrafted solid wood furniture — artisan oak sideboard credenza and coffee table"
                loading="lazy"
              />
              <div className="ed-panel-content">
                <span className="label">Furniture Collection</span>
                <h3>
                  Furniture That
                  <br />
                  Tells a Story
                </h3>
                <p>Solid wood accent cabinets, bookshelves, and console tables — built by hand, designed to endure.</p>
                <Link href="/catalogue?dept=furnishing" className="btn btn-white">
                  Shop Furniture
                  <svg
                    className="arr"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </div>

            <div className="ed-panel fade d2">
              <img
                src="/assets/images/landing/shop-accents.jpg"
                alt="Handcrafted home decor accents — artisan carved wooden photo frames, ceramic vase, and tabletop decor"
                loading="lazy"
              />
              <div className="ed-panel-content">
                <span className="label">Decorative Accents</span>
                <h3>
                  Details That Make
                  <br />a Home
                </h3>
                <p>Curated wooden photo frames, decorative accents, and artisan objects to finish your space with character.</p>
                <Link href="/catalogue?dept=accessories" className="btn btn-white">
                  Shop Accents
                  <svg
                    className="arr"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2.2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <line x1="5" y1="12" x2="19" y2="12" />
                    <polyline points="12 5 19 12 12 19" />
                  </svg>
                </Link>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* ═══════════════ DARK HERO (Our Philosophy) ═══════════════ */}
      <section className="dark-hero">
        <div className="dark-hero-img"></div>
        <div className="dark-hero-overlay"></div>
        <div className="dark-hero-body wrap">
          <div className="dark-hero-text">
            <span className="label">Our Philosophy</span>
            <h2>
              Built to Last,
              <br />
              <em>Made to Matter</em>
            </h2>
            <p>
              We manufacture our solid wood furniture and artisanal crafts in our own factory, where skilled workers shape every joint
              with generational mastery. Headquartered at 1 Auer Ct, East Brunswick, NJ with regional storage units across the USA and
              physical stores opening soon, Fair Home Decor is built for those who choose lasting craft over disposable trends.
            </p>
            <Link href="/about" className="btn btn-white">
              Our Full Story
              <svg
                className="arr"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2.2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <line x1="5" y1="12" x2="19" y2="12" />
                <polyline points="12 5 19 12 12 19" />
              </svg>
            </Link>
          </div>
        </div>
      </section>

      {/* ═══════════════ NEWSLETTER ═══════════════ */}
      <section className="newsletter">
        <div className="newsletter-inner">
          <span className="label fade">Stay Connected</span>
          <h2 className="fade d1">
            Curated Inspiration,
            <br />
            <em>Delivered to You</em>
          </h2>
          <p className="fade d2">
            Join our community of homeowners and interior designers. Get early access to new collections, styling tips, and
            exclusive trade offers — no spam, only beautiful things.
          </p>
          <form className="nl-form fade d3" onSubmit={handleNlSubmit}>
            <input
              type="email"
              placeholder="Enter your email address"
              required
              aria-label="Email address"
              value={nlEmail}
              onChange={(e) => setNlEmail(e.target.value)}
            />
            <button type="submit">{nlSubscribed ? "Subscribed ✓" : "Subscribe"}</button>
          </form>
          <p className="nl-note fade d4">Unsubscribe at any time. We respect your privacy.</p>
        </div>
      </section>

      <Footer />
    </>
  );
}
