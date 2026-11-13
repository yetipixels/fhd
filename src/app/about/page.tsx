"use client";

import React from "react";
import Link from "next/link";
import { Header } from "@/components/common/Header";
import { Footer } from "@/components/common/Footer";
import "@/styles/about.css";

export default function AboutPage() {
  return (
    <>
      <Header activePage="about" />

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

      {/* ABOUT HERO */}
      <section className="about-hero">
        <div className="wrap">
          <span className="about-eyebrow">Our Story &amp; Heritage</span>
          <h1 className="about-title">
            Considered Living,
            <br />
            <em>Beautifully Made.</em>
          </h1>
          <p className="about-tagline">Furniture with intention, soul, and enduring craft.</p>
          <p className="about-lead">
            At Fair Home Decor, we believe a home is more than four walls — it is a sanctuary built from pieces that carry
            warmth, texture, and character. We own and operate our dedicated factory where solid wood furniture and
            artisanal crafts are manufactured by skilled workers and generational woodcrafters. Guided directly by our USA
            head office in East Brunswick, New Jersey, and supported by regional storage units across multiple states, we
            deliver timeless heirloom pieces directly into American homes — with official retail stores opening soon.
          </p>
        </div>
      </section>

      {/* STORY SECTION */}
      <section className="story-section">
        <div className="wrap">
          <div className="story-grid">
            <div className="story-img-wrap">
              <img
                src="/assets/images/landing/about-workshop.webp"
                alt="Fair Home Decor artisan workshop handcrafted woodworking"
              />
            </div>
            <div className="story-text">
              <h2>
                Rooted in East Brunswick,
                <br />
                <em>Crafted for America</em>
              </h2>
              <p>
                <strong>Our USA Head Office:</strong> Fair Home Decor INC. is centrally headquartered at{" "}
                <strong>1 Auer Ct, East Brunswick, NJ 08816, USA</strong>. From our New Jersey office, our leadership team
                directs design, material sourcing, client care, and nationwide logistics.
              </p>
              <p>
                <strong>Our Own Factory &amp; Skilled Workers:</strong> Unlike conventional furniture brands that outsource to
                anonymous third parties, we manufacture our furniture and home crafts in our very own factory. Every solid
                wood accent cabinet, bookshelf, console desk, brass candelabra, and holiday centrepiece is shaped, carved, and
                assembled by skilled workers using time-tested joinery techniques. Human touch and artisan pride guide every
                cut, facet, and hand-rubbed finish.
              </p>
              <p>
                <strong>Strategic Storage Units &amp; Stores Opening Soon:</strong> To ensure prompt and seamless nationwide
                delivery, we operate storage units and fulfillment hubs in different places across the USA. While our
                comprehensive collection is currently available to explore and order online, we are actively preparing to
                open physical retail stores and design showrooms in multiple locations very soon!
              </p>
              <div style={{ marginTop: "28px", display: "flex", gap: "14px", flexWrap: "wrap" }}>
                <Link
                  href="/catalogue"
                  className="hdr-contact-btn"
                  style={{ background: "var(--dark)", borderColor: "var(--dark)" }}
                >
                  Explore Our Catalogue
                </Link>
                <Link
                  href="/contact"
                  className="hdr-contact-btn"
                  style={{ background: "transparent", color: "var(--dark)", borderColor: "var(--dark)" }}
                >
                  Connect With Us
                </Link>
              </div>
            </div>
          </div>
        </div>
      </section>

      {/* PILLARS */}
      <section className="pillars-section">
        <div className="wrap">
          <div className="pillars-head">
            <span className="about-eyebrow">Our Principles</span>
            <h2>What Guides Every Piece</h2>
          </div>
          <div className="pillars-grid">
            <div className="pillar-card">
              <div className="pillar-num">01</div>
              <h3>Our Own Factory</h3>
              <p>
                We own and run our dedicated manufacturing facility. Having direct factory oversight ensures strict quality
                control from raw timber seasoning to precision joint assembly and final inspection.
              </p>
            </div>
            <div className="pillar-card">
              <div className="pillar-num">02</div>
              <h3>Skilled Workers &amp; Craft</h3>
              <p>
                Manufacturing of our furniture and artisanal decor is executed by skilled workers and master woodcrafters who
                bring generational expertise to every joint, hand-carved relief, and hand-applied finish.
              </p>
            </div>
            <div className="pillar-card">
              <div className="pillar-num">03</div>
              <h3>USA Head Office</h3>
              <p>
                Headquartered at 1 Auer Ct, East Brunswick, NJ 08816, our USA corporate office coordinates design direction,
                trade partnerships, and white-glove customer concierge across the United States.
              </p>
            </div>
            <div className="pillar-card">
              <div className="pillar-num">04</div>
              <h3>Storage &amp; Stores Soon</h3>
              <p>
                We maintain regional storage units in multiple strategic places across the USA for swift freight delivery.
                Stay tuned — our physical retail stores and experiential showrooms will be opening soon!
              </p>
            </div>
          </div>
        </div>
      </section>

      {/* TRADE / B2B SECTION */}
      <section className="trade-section">
        <div className="wrap">
          <div className="trade-inner">
            <div>
              <span className="about-eyebrow" style={{ color: "var(--sand)" }}>
                For Designers &amp; Trade
              </span>
              <h2>
                The Fair Home Decor
                <br />
                <em>Trade &amp; B2B Program</em>
              </h2>
              <p>
                We collaborate closely with interior designers, architects, hospitality developers, and boutique retailers.
                Our trade members enjoy exclusive tier discounts, dedicated project management, custom specification
                assistance, and reliable freight scheduling.
              </p>
              <Link href="/account#b2b" className="btn-trade">
                <span>Apply for Trade Membership</span>
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
            <div className="trade-card-box">
              <h3>Trade Privileges</h3>
              <ul>
                <li>
                  <svg
                    width="18"
                    height="18"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <polyline points="20 6 9 17 4 12"></polyline>
                  </svg>
                  <span>Exclusive tiered wholesale pricing</span>
                </li>
                <li>
                  <svg
                    width="18"
                    height="18"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <polyline points="20 6 9 17 4 12"></polyline>
                  </svg>
                  <span>Reserved inventory &amp; priority dispatch</span>
                </li>
                <li>
                  <svg
                    width="18"
                    height="18"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <polyline points="20 6 9 17 4 12"></polyline>
                  </svg>
                  <span>Direct access to 430+ catalogue specifications</span>
                </li>
                <li>
                  <svg
                    width="18"
                    height="18"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="2"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <polyline points="20 6 9 17 4 12"></polyline>
                  </svg>
                  <span>Dedicated trade concierge in New Jersey</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </section>

      <Footer />
    </>
  );
}

