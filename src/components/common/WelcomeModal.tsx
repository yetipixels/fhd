"use client";

import React, { useState, useEffect } from "react";
import Link from "next/link";

export function WelcomeModal() {
  const [isOpen, setIsOpen] = useState(false);

  useEffect(() => {
    const STORAGE_KEY = "fhd_welcome_announcement_seen";
    if (typeof window !== "undefined" && !sessionStorage.getItem(STORAGE_KEY)) {
      const timer = setTimeout(() => {
        setIsOpen(true);
      }, 700);
      return () => clearTimeout(timer);
    }
  }, []);

  const handleClose = () => {
    setIsOpen(false);
    if (typeof window !== "undefined") {
      sessionStorage.setItem("fhd_welcome_announcement_seen", "true");
    }
  };

  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === "Escape" && isOpen) {
        handleClose();
      }
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [isOpen]);

  if (!isOpen) return null;

  return (
    <div
      className={`fhd-welcome-backdrop ${isOpen ? "is-visible" : ""}`}
      role="dialog"
      aria-modal="true"
      aria-label="Welcome to Fair Home Decor"
      onClick={(e) => {
        if (e.target === e.currentTarget) handleClose();
      }}
    >
      <div className="fhd-welcome-card">
        <button
          type="button"
          className="fhd-welcome-close"
          onClick={handleClose}
          aria-label="Close Announcement"
        >
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
            <line x1="18" y1="6" x2="6" y2="18"></line>
            <line x1="6" y1="6" x2="18" y2="18"></line>
          </svg>
        </button>

        <div className="fhd-welcome-emblem">
          <img
            src="/assets/images/logo.png"
            alt="Fair Home Decor"
            className="fhd-welcome-logo"
            onError={(e) => {
              (e.target as HTMLImageElement).style.display = "none";
            }}
          />
        </div>

        <span className="fhd-welcome-badge">✦ Official Launch &amp; Trade Announcement ✦</span>

        <h2 className="fhd-welcome-title">Welcome to Fair Home Decor</h2>
        <div className="fhd-welcome-divider"></div>

        <div className="fhd-welcome-body">
          <p className="fhd-welcome-lead">
            We are honored to welcome you to our newly launched digital showroom.
          </p>
          <p>
            As we celebrate our launch, individual product prices across our handcrafted collection are currently being
            updated to reflect container-load (HC40) and trade rates. In the meantime,{" "}
            <strong>we are officially open for business, custom furniture orders, and commercial trade partnerships</strong>.
          </p>
          <p>
            You are warmly invited to browse our complete catalog of artisan furniture and home accents, as well as preview
            our upcoming <strong>Festive &amp; Holiday Collection</strong> arriving very soon.
          </p>
          <p className="fhd-welcome-quote">
            “Considered living, beautifully made — crafted in our own factory by skilled artisans.”
          </p>
        </div>

        <div className="fhd-welcome-actions">
          <Link href="/catalogue" className="fhd-welcome-btn-primary" onClick={handleClose}>
            <span>Explore Catalogue</span>
            <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.5">
              <polyline points="9 18 15 12 9 6" />
            </svg>
          </Link>
          <Link href="/contact" className="fhd-welcome-btn-secondary" onClick={handleClose}>
            Contact Trade Team
          </Link>
        </div>
      </div>
    </div>
  );
}

