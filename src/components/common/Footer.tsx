"use client";

import React, { useState } from "react";
import Link from "next/link";

export function Footer() {
  const [email, setEmail] = useState("");
  const [submitted, setSubmitted] = useState(false);

  const handleSubmit = (e: React.FormEvent) => {
    e.preventDefault();
    if (email) {
      setSubmitted(true);
      setEmail("");
      setTimeout(() => setSubmitted(false), 4000);
    }
  };

  return (
    <footer className="footer">
      <div className="wrap">
        <div className="footer-grid">
          {/* Brand */}
          <div className="footer-brand">
            <div className="fl">
              <Link href="/">
                <img
                  src="/assets/images/logo-white.png"
                  alt="Fair Home Decor"
                  onError={(e) => {
                    (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                  }}
                />
              </Link>
            </div>
            <p>
              Handcrafted in our own factory by skilled workers. Headquartered at 1 Auer Ct, East Brunswick, NJ with regional storage units across the USA — stores opening soon.
            </p>
            <div className="fsoc">
              <a
                href="https://www.instagram.com/fairhomedecorinc/"
                aria-label="Instagram"
                target="_blank"
                rel="noopener noreferrer"
              >
                <svg
                  width="13"
                  height="13"
                  viewBox="0 0 24 24"
                  fill="none"
                  stroke="currentColor"
                  strokeWidth="1.8"
                  strokeLinecap="round"
                  strokeLinejoin="round"
                >
                  <rect x="2" y="2" width="20" height="20" rx="5" />
                  <circle cx="12" cy="12" r="4.5" />
                  <circle cx="17.5" cy="6.5" r="1" fill="currentColor" stroke="none" />
                </svg>
              </a>
              <a
                href="https://www.facebook.com/profile.php?id=61593950044982"
                aria-label="Facebook"
                target="_blank"
                rel="noopener noreferrer"
              >
                <svg width="13" height="13" viewBox="0 0 24 24" fill="currentColor" stroke="none">
                  <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z" />
                </svg>
              </a>
            </div>
          </div>

          {/* Shop */}
          <div className="footer-col">
            <h4>Shop</h4>
            <ul>
              <li><Link href="/catalogue">All Products</Link></li>
              <li><Link href="/catalogue?subcat=accent-cabinets">Accent Cabinets</Link></li>
              <li><Link href="/catalogue?subcat=bookshelves">Bookshelves</Link></li>
              <li><Link href="/catalogue?subcat=console-tables">Console Tables</Link></li>
              <li><Link href="/catalogue?subcat=side-tables">Side Tables</Link></li>
              <li><Link href="/catalogue?subcat=photo-frames">Photo Frames</Link></li>
              <li><Link href="/catalogue?subcat=study-tables">Study Tables</Link></li>
            </ul>
          </div>

          {/* Company */}
          <div className="footer-col">
            <h4>Company</h4>
            <ul>
              <li><Link href="/about">About Us</Link></li>
              <li><Link href="/catalogue">Catalogue</Link></li>
              <li><Link href="/account#track">Track Order</Link></li>
              <li><Link href="/account#favourites">Favourites</Link></li>
              <li><Link href="/contact">Contact Us</Link></li>
              <li><Link href="/account#b2b">Trade & Wholesale</Link></li>
            </ul>
          </div>

          {/* Contact + Newsletter */}
          <div className="footer-contact-col">
            <h4>Contact</h4>
            <div className="fcontact-row">
              <svg
                width="13"
                height="13"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z" />
                <circle cx="12" cy="10" r="3" />
              </svg>
              <span>
                1 Auer Ct, East Brunswick,<br />NJ 08816, United States
              </span>
            </div>
            <div className="fcontact-row">
              <svg
                width="13"
                height="13"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07A19.5 19.5 0 0 1 4.69 12 19.79 19.79 0 0 1 1.61 3.42C1.6 2.25 2.33 1.19 3.4.9L6.4 0a2 2 0 0 1 2 1.22l1.38 3.47a2 2 0 0 1-.45 2.11L8 8.09a16 16 0 0 0 6 6l1.27-1.33a2 2 0 0 1 2.11-.45l3.47 1.38a2 2 0 0 1 1.22 2z" />
              </svg>
              <a href="tel:+17857131584">+1 785-713-1584</a>
            </div>
            <div className="fcontact-row">
              <svg
                width="13"
                height="13"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2"
                strokeLinecap="round"
                strokeLinejoin="round"
              >
                <path d="M4 4h16c1.1 0 2 .9 2 2v12c0 1.1-.9 2-2 2H4c-1.1 0-2-.9-2-2V6c0-1.1.9-2 2-2z" />
                <polyline points="22,6 12,13 2,6" />
              </svg>
              <a href="mailto:info@fairhomedecor.com">info@fairhomedecor.com</a>
            </div>

            {/* Footer newsletter */}
            <div className="footer-nl" style={{ marginTop: "28px" }}>
              <h4>Email Sign-Up</h4>
              <p>Subscribe for curated furniture inspiration and irresistible deals delivered straight to you.</p>
              <form className="footer-nl-form" onSubmit={handleSubmit}>
                <input
                  type="email"
                  placeholder="Enter email"
                  required
                  aria-label="Email"
                  value={email}
                  onChange={(e) => setEmail(e.target.value)}
                />
                <button type="submit">{submitted ? "Done ✓" : "Subscribe"}</button>
              </form>
              <div className="footer-nl-social" style={{ marginTop: "16px" }}>
                <a
                  href="https://www.instagram.com/fairhomedecorinc/"
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="Instagram"
                >
                  <svg
                    width="16"
                    height="16"
                    viewBox="0 0 24 24"
                    fill="none"
                    stroke="currentColor"
                    strokeWidth="1.8"
                    strokeLinecap="round"
                    strokeLinejoin="round"
                  >
                    <rect x="2" y="2" width="20" height="20" rx="5" />
                    <circle cx="12" cy="12" r="4.5" />
                    <circle cx="17.5" cy="6.5" r="1" fill="currentColor" stroke="none" />
                  </svg>
                </a>
                <a
                  href="https://www.facebook.com/profile.php?id=61593950044982"
                  target="_blank"
                  rel="noopener noreferrer"
                  aria-label="Facebook"
                >
                  <svg width="16" height="16" viewBox="0 0 24 24" fill="currentColor" stroke="none">
                    <path d="M18 2h-3a5 5 0 00-5 5v3H7v4h3v8h4v-8h3l1-4h-4V7a1 1 0 011-1h3z" />
                  </svg>
                </a>
              </div>
            </div>
          </div>
        </div>

        <div className="footer-bottom">
          <span className="footer-flag">🇺🇸 USA | English</span>
          <span>© 2026 Fair Home Decor INC. All rights reserved.</span>
          <div className="footer-bottom-links">
            <Link href="/about">Terms of Service</Link>
            <Link href="/about">Legal</Link>
            <Link href="/about">Privacy Policy</Link>
            <Link href="/catalogue">Sitemap</Link>
          </div>
        </div>
      </div>
    </footer>
  );
}
export default Footer;
