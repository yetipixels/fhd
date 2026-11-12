"use client";

import React, { useState } from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useCart } from "@/context/CartContext";
import { useAuth } from "@/context/AuthContext";
import { ShoppingBag, User as UserIcon, Shield, Menu, X } from "lucide-react";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";

export function Navbar() {
  const pathname = usePathname();
  const { totalItemCount, setIsDrawerOpen } = useCart();
  const { user, profile, isAdmin } = useAuth();
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  const navLinks = [
    { label: "Home", href: "/" },
    { label: "B2B Catalog", href: "/products" },
    { label: "Trade Benefits", href: "/#trade-benefits" },
    { label: "RFQ Cart", href: "/quote-cart" },
  ];

  return (
    <header className="sticky top-0 z-40 w-full border-b border-fhd-border bg-fhd-bg/95 backdrop-blur-md transition-all">
      {/* Top Wholesale Announcement Banner */}
      <div className="bg-fhd-dark text-fhd-bg px-4 py-1.5 text-center text-[11px] tracking-widest uppercase font-medium">
        B2B Wholesale Portal &middot; Volume Tiered Pricing &middot; Global Freight & LCL Logistics
      </div>

      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="flex items-center justify-between h-20">
          {/* Logo */}
          <Link href="/" className="flex flex-col group">
            <span className="font-serif text-2xl sm:text-3xl tracking-widest text-fhd-dark font-normal group-hover:text-fhd-sage transition-colors">
              FAIR HOME DECOR
            </span>
            <span className="text-[9px] tracking-[0.25em] text-fhd-sage uppercase font-sans font-semibold">
              Wholesale &middot; Trade &middot; Contract
            </span>
          </Link>

          {/* Desktop Nav */}
          <nav className="hidden md:flex items-center space-x-8">
            {navLinks.map((link) => {
              const currentPath = pathname || "";
              const isActive = currentPath === link.href;
              return (
                <Link
                  key={link.href}
                  href={link.href}
                  className={`text-xs uppercase tracking-widest font-medium transition-colors hover:text-fhd-sage ${
                    isActive ? "text-fhd-sage font-semibold border-b-2 border-fhd-sage pb-1" : "text-fhd-dark/80"
                  }`}
                >
                  {link.label}
                </Link>
              );
            })}
          </nav>

          {/* Action Icons */}
          <div className="flex items-center space-x-3 sm:space-x-4">
            {/* Admin Dashboard shortcut if admin */}
            {isAdmin && (
              <Link href="/admin">
                <Button variant="sage" size="sm" className="hidden sm:inline-flex items-center space-x-1">
                  <Shield className="w-3.5 h-3.5 mr-1" />
                  <span>Admin</span>
                </Button>
              </Link>
            )}

            {/* Auth / Account */}
            {user ? (
              <Link href="/account">
                <Button variant="outline" size="sm" className="hidden sm:inline-flex items-center space-x-1.5">
                  <UserIcon className="w-3.5 h-3.5" />
                  <span>{profile?.company_name || "Account"}</span>
                </Button>
              </Link>
            ) : (
              <div className="hidden sm:flex items-center space-x-2">
                <Link href="/login">
                  <Button variant="ghost" size="sm">
                    Sign In
                  </Button>
                </Link>
                <Link href="/register">
                  <Button variant="default" size="sm">
                    Open Trade Account
                  </Button>
                </Link>
              </div>
            )}

            {/* RFQ Cart Drawer Trigger */}
            <button
              onClick={() => setIsDrawerOpen(true)}
              className="relative p-2.5 rounded-full hover:bg-fhd-cream transition-colors text-fhd-dark focus:outline-none"
              aria-label="Open Quote Cart"
            >
              <ShoppingBag className="w-5 h-5" />
              {totalItemCount > 0 && (
                <span className="absolute -top-1 -right-1 flex h-5 w-5 items-center justify-center rounded-full bg-fhd-sage text-[10px] font-bold text-white shadow-sm">
                  {totalItemCount}
                </span>
              )}
            </button>

            {/* Mobile menu trigger */}
            <button
              onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
              className="md:hidden p-2 text-fhd-dark focus:outline-none"
              aria-label="Toggle Navigation Menu"
            >
              {mobileMenuOpen ? <X className="w-6 h-6" /> : <Menu className="w-6 h-6" />}
            </button>
          </div>
        </div>
      </div>

      {/* Mobile Drawer */}
      {mobileMenuOpen && (
        <div className="md:hidden border-t border-fhd-border bg-fhd-bg px-4 pt-4 pb-6 space-y-4">
          <nav className="flex flex-col space-y-3">
            {navLinks.map((link) => (
              <Link
                key={link.href}
                href={link.href}
                onClick={() => setMobileMenuOpen(false)}
                className="text-sm uppercase tracking-wider font-medium text-fhd-dark py-1 border-b border-fhd-border/40"
              >
                {link.label}
              </Link>
            ))}
          </nav>

          <div className="pt-2 flex flex-col space-y-2">
            {user ? (
              <>
                <Link href="/account" onClick={() => setMobileMenuOpen(false)}>
                  <Button variant="outline" className="w-full justify-center">
                    My Wholesale Account
                  </Button>
                </Link>
                {isAdmin && (
                  <Link href="/admin" onClick={() => setMobileMenuOpen(false)}>
                    <Button variant="sage" className="w-full justify-center">
                      Admin Dashboard
                    </Button>
                  </Link>
                )}
              </>
            ) : (
              <>
                <Link href="/login" onClick={() => setMobileMenuOpen(false)}>
                  <Button variant="outline" className="w-full justify-center">
                    Wholesale Sign In
                  </Button>
                </Link>
                <Link href="/register" onClick={() => setMobileMenuOpen(false)}>
                  <Button variant="default" className="w-full justify-center">
                    Register Trade Account
                  </Button>
                </Link>
              </>
            )}
          </div>
        </div>
      )}
    </header>
  );
}
