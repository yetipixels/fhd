"use client";

import React, { useState, useEffect } from "react";
import { usePathname } from "next/navigation";
import { AdminSidebar } from "./AdminSidebar";
import { Menu, X } from "lucide-react";
import Link from "next/link";

export function AdminLayoutShell({ children }: { children: React.ReactNode }) {
  const pathname = usePathname();
  const [mobileMenuOpen, setMobileMenuOpen] = useState(false);

  // Close mobile drawer whenever route changes
  useEffect(() => {
    setMobileMenuOpen(false);
  }, [pathname]);

  // On the dedicated login page, don't show the dashboard shell or sidebar
  if (pathname === "/admin/login") {
    return <>{children}</>;
  }

  return (
    <div className="min-h-screen bg-fhd-bg flex flex-col lg:flex-row">
      {/* Mobile / Tablet Top Header Bar (< 1024px) */}
      <div className="lg:hidden bg-fhd-dark text-white px-4 py-3 flex items-center justify-between border-b border-stone-800 sticky top-0 z-40">
        <div className="flex items-center space-x-3">
          <button
            type="button"
            onClick={() => setMobileMenuOpen(!mobileMenuOpen)}
            className="p-1.5 rounded-md hover:bg-stone-800 text-stone-200 transition-colors"
            aria-label="Toggle navigation menu"
          >
            {mobileMenuOpen ? <X className="w-5 h-5" /> : <Menu className="w-5 h-5" />}
          </button>
          <Link href="/admin" className="block">
            <span className="font-serif text-base tracking-wider text-white font-normal block leading-tight">
              FAIR HOME DECOR
            </span>
            <span className="text-[9px] tracking-[0.16em] text-fhd-sage uppercase font-semibold">
              B2B Admin Console
            </span>
          </Link>
        </div>

        <Link
          href="/"
          target="_blank"
          className="text-[10px] text-stone-300 hover:text-white px-2.5 py-1 rounded bg-stone-800/90 font-sans tracking-wider uppercase font-semibold"
        >
          Storefront &rarr;
        </Link>
      </div>

      {/* Desktop Sidebar (visible on lg: >= 1024px) */}
      <div className="hidden lg:flex shrink-0">
        <AdminSidebar />
      </div>

      {/* Mobile Drawer Overlay */}
      {mobileMenuOpen && (
        <div
          className="fixed inset-0 bg-stone-900/60 backdrop-blur-xs z-50 lg:hidden transition-opacity"
          onClick={() => setMobileMenuOpen(false)}
        >
          <div
            className="w-72 max-w-[85vw] h-full bg-fhd-dark flex flex-col shadow-2xl"
            onClick={(e) => e.stopPropagation()}
          >
            <div className="p-4 flex items-center justify-between border-b border-stone-800">
              <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
                Admin Menu
              </span>
              <button
                onClick={() => setMobileMenuOpen(false)}
                className="p-1 text-stone-400 hover:text-white"
                aria-label="Close menu"
              >
                <X className="w-5 h-5" />
              </button>
            </div>
            <div className="flex-1 overflow-y-auto">
              <AdminSidebar onNavigate={() => setMobileMenuOpen(false)} />
            </div>
          </div>
        </div>
      )}

      {/* Main Admin Content */}
      <div className="flex-1 flex flex-col min-w-0 overflow-y-auto">
        {children}
      </div>
    </div>
  );
}

