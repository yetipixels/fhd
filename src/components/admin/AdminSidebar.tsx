"use client";

import React from "react";
import Link from "next/link";
import { usePathname } from "next/navigation";
import { useAuth } from "@/context/AuthContext";
import {
  LayoutDashboard,
  Package,
  Layers,
  FileSpreadsheet,
  Users,
  ExternalLink,
  LogOut,
  Shield,
  Megaphone,
} from "lucide-react";
import { Button } from "@/components/ui/button";

interface AdminSidebarProps {
  onNavigate?: () => void;
}

export function AdminSidebar({ onNavigate }: AdminSidebarProps = {}) {
  const pathname = usePathname();
  const { user, profile, signOut } = useAuth();

  const navItems = [
    {
      label: "Dashboard Overview",
      href: "/admin",
      icon: LayoutDashboard,
      exact: true,
    },
    {
      label: "Products Management",
      href: "/admin/products",
      icon: Package,
    },
    {
      label: "Categories",
      href: "/admin/categories",
      icon: Layers,
    },
    {
      label: "Quote Requests / Orders",
      href: "/admin/quotes",
      icon: FileSpreadsheet,
    },
    {
      label: "B2B Buyer Approvals",
      href: "/admin/buyers",
      icon: Users,
    },
    {
      label: "Banner and Offer",
      href: "/admin/banners",
      icon: Megaphone,
    },
  ];

  return (
    <aside className="w-64 bg-fhd-dark text-fhd-bg flex flex-col min-h-screen border-r border-stone-800">
      {/* Brand Header */}
      <div className="p-6 border-b border-stone-800 space-y-1">
        <Link href="/" className="block">
          <span className="font-serif text-xl tracking-widest text-white font-normal block">
            FAIR HOME DECOR
          </span>
          <span className="text-[10px] tracking-[0.2em] text-fhd-sage uppercase font-semibold">
            B2B Admin Console
          </span>
        </Link>
      </div>

      {/* Navigation */}
      <nav className="flex-1 px-4 py-6 space-y-1.5 overflow-y-auto">
        {navItems.map((item) => {
          const currentPath = pathname || "";
          const isActive = item.exact
            ? currentPath === item.href
            : currentPath.startsWith(item.href);
          const Icon = item.icon;

          return (
            <Link
              key={item.href}
              href={item.href}
              onClick={onNavigate}
              className={`flex items-center space-x-3 px-3.5 py-2.5 rounded-md text-xs uppercase tracking-wider font-medium transition-all ${
                isActive
                  ? "bg-fhd-sage text-white font-semibold shadow-xs"
                  : "text-stone-300 hover:bg-stone-800/80 hover:text-white"
              }`}
            >
              <Icon className="w-4 h-4" />
              <span>{item.label}</span>
            </Link>
          );
        })}
      </nav>

      {/* Storefront Link & Admin Info */}
      <div className="p-4 border-t border-stone-800 space-y-3">
        <Link
          href="/"
          target="_blank"
          className="flex items-center justify-between px-3 py-2 rounded-md bg-stone-800/60 hover:bg-stone-800 text-xs text-stone-300 hover:text-white transition-colors"
        >
          <span className="flex items-center space-x-2">
            <ExternalLink className="w-3.5 h-3.5 text-fhd-sage" />
            <span>View Live Storefront</span>
          </span>
          <span className="text-[10px] text-stone-500 font-mono">&rarr;</span>
        </Link>

        <div className="pt-2 px-1 flex items-center justify-between text-xs">
          <div className="space-y-0.5 truncate pr-2">
            <p className="font-semibold text-white truncate text-[11px]" title={user?.email || "Super Administrator"}>
              {user?.email || "info@fairhomedecor.com"}
            </p>
            <div className="flex items-center space-x-1.5 text-[10px] text-stone-400 font-mono">
              <span className="inline-flex items-center text-fhd-sage">
                <Shield className="w-3 h-3 mr-1" />
                role: admin
              </span>
              {profile?.company_name &&
                profile.company_name !== user?.email &&
                profile.company_name !== "Unspecified Entity" && (
                  <>
                    <span className="text-stone-600">•</span>
                    <span className="truncate max-w-[85px] text-stone-400" title={profile.company_name}>
                      {profile.company_name}
                    </span>
                  </>
                )}
            </div>
          </div>

          <button
            onClick={signOut}
            className="p-1.5 rounded-md text-stone-400 hover:text-red-400 hover:bg-stone-800 transition-colors"
            title="Sign Out"
          >
            <LogOut className="w-4 h-4" />
          </button>
        </div>
      </div>
    </aside>
  );
}
