"use client";

import React, { useState, useEffect } from "react";
import Image from "next/image";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { CloudinaryUploader } from "@/components/admin/CloudinaryUploader";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Card, CardHeader, CardTitle, CardContent } from "@/components/ui/card";
import { Badge } from "@/components/ui/badge";
import {
  Megaphone,
  Sparkles,
  Save,
  RotateCcw,
  Eye,
  CheckCircle,
  Tag,
  Gift,
  Layers,
  Image as ImageIcon,
  ExternalLink,
} from "lucide-react";
import { toast } from "sonner";

interface ShowcaseCardConfig {
  title: string;
  subtitle: string;
  image: string;
  actionType: "featured" | "moq-asc" | "holiday" | "sku-desc" | "link";
  linkUrl?: string;
}

interface BannerSettings {
  // Top Announcement Bar
  announcementEnabled: boolean;
  announcementText: string;
  announcementCode: string;
  announcementLink: string;

  // Hero Banner
  heroEyebrow: string;
  heroHeading: string;
  heroDesc: string;
  heroImage: string;
  heroPrimaryBtnText: string;
  heroPrimaryBtnLink: string;
  heroSecondaryBtnText: string;
  heroSecondaryBtnLink: string;

  // Holiday Seasonal Offer Banner
  holidayOfferEnabled: boolean;
  holidayBadge: string;
  holidayEyebrow: string;
  holidayTitle: string;
  holidayDesc: string;
  holidayPill1: string;
  holidayPill2: string;
  holidayImage: string;
  holidayPrimaryBtnText: string;
  holidayPrimaryBtnLink: string;
  holidaySecondaryBtnText: string;
  holidaySecondaryBtnLink: string;

  // Welcome Modal
  welcomeModalEnabled: boolean;
  welcomeModalEyebrow: string;
  welcomeModalTitle: string;
  welcomeModalOffer: string;
  welcomeModalDiscountCode: string;

  // Catalogue Feature Showcase (4 cards)
  showcase1: ShowcaseCardConfig;
  showcase2: ShowcaseCardConfig;
  showcase3: ShowcaseCardConfig;
  showcase4: ShowcaseCardConfig;
}

const DEFAULT_SETTINGS: BannerSettings = {
  // Top Announcement Bar
  announcementEnabled: true,
  announcementText: "Complimentary Freight on Container Wholesale Orders across the Lower 48 USA",
  announcementCode: "TRADE2026",
  announcementLink: "/catalogue?dept=furnishing",

  // Hero Banner
  heroEyebrow: "Fair Home Decor · East Brunswick, NJ",
  heroHeading: "Considered living, beautifully made.",
  heroDesc:
    "Artisanal solid wood furniture and intentional home decor — handcrafted to bring warmth, balance, and enduring beauty to modern American spaces.",
  heroImage: "/assets/images/landing/hero-banner.jpg",
  heroPrimaryBtnText: "Explore Collection",
  heroPrimaryBtnLink: "/catalogue",
  heroSecondaryBtnText: "Our Story",
  heroSecondaryBtnLink: "/about",

  // Holiday Seasonal Offer Banner
  holidayOfferEnabled: true,
  holidayBadge: "✦ Holiday Season 2026",
  holidayEyebrow: "Seasonal Curation · Limited Holiday Offer",
  holidayTitle: "Bring Holiday Warmth Home, Beautifully Handcrafted.",
  holidayDesc:
    "Gather with intention this holiday season. Transform your home with our solid wood dining tables, consoles, and artisan decor — built to anchor your festive celebrations for generations to come.",
  holidayPill1: "15% Off Handcrafted Pieces · Complimentary Freight",
  holidayPill2: "Holiday Delivery Guarantee on Orders Placed by Dec 18",
  holidayImage: "/assets/images/landing/christmas-offer-landscape.webp",
  holidayPrimaryBtnText: "Shop Holiday Collection",
  holidayPrimaryBtnLink: "/catalogue?dept=holiday",
  holidaySecondaryBtnText: "Trade & Wholesale Inquiries",
  holidaySecondaryBtnLink: "/contact?subject=trade",

  // Welcome Modal
  welcomeModalEnabled: true,
  welcomeModalEyebrow: "Special Trade Announcement",
  welcomeModalTitle: "Fair Home Decor Trade & Wholesale Program",
  welcomeModalOffer:
    "Receive tiered container discounts, dedicated white-glove account support, and bespoke custom finish capabilities on your first contract.",
  welcomeModalDiscountCode: "FAIRTRADE15",

  // Catalogue Feature Showcase (4 cards)
  showcase1: {
    title: "Featured",
    subtitle: "Curated Trade Picks · Solid Hardwood",
    image: "/assets/images/products/accent-cabinets/FHD-AF-1001.jpg",
    actionType: "featured",
    linkUrl: "/catalogue?dept=furnishing",
  },
  showcase2: {
    title: "Hot Product",
    subtitle: "Top Volume Demand · Low MOQ",
    image: "/assets/images/products/round-tables/FHD-RT-1001.jpg",
    actionType: "moq-asc",
    linkUrl: "/catalogue?dept=furnishing",
  },
  showcase3: {
    title: "Festive One",
    subtitle: "Holiday & Seasonal Accents · Ready to Ship",
    image: "/assets/images/landing/reindeer-candle-centrepiece.jpg",
    actionType: "holiday",
    linkUrl: "/catalogue?dept=holiday",
  },
  showcase4: {
    title: "New Product",
    subtitle: "2026 New Releases · Generational Craft",
    image: "/assets/images/products/console-tables/FHD-CST-1001.jpg",
    actionType: "sku-desc",
    linkUrl: "/catalogue?dept=furnishing",
  },
};

export default function AdminBannersPage() {
  const [settings, setSettings] = useState<BannerSettings>(DEFAULT_SETTINGS);
  const [activeTab, setActiveTab] = useState<"hero" | "holiday" | "announcement" | "modal" | "catalogue">("hero");
  const [isSaving, setIsSaving] = useState(false);

  useEffect(() => {
    try {
      const stored = localStorage.getItem("fhd_banners_settings");
      if (stored) {
        const parsed = JSON.parse(stored);
        setSettings({
          ...DEFAULT_SETTINGS,
          ...parsed,
          showcase1: { ...DEFAULT_SETTINGS.showcase1, ...(parsed.showcase1 || {}) },
          showcase2: { ...DEFAULT_SETTINGS.showcase2, ...(parsed.showcase2 || {}) },
          showcase3: { ...DEFAULT_SETTINGS.showcase3, ...(parsed.showcase3 || {}) },
          showcase4: { ...DEFAULT_SETTINGS.showcase4, ...(parsed.showcase4 || {}) },
        });
      }
    } catch {
      // Fallback to defaults
    }
  }, []);

  const handleSave = () => {
    setIsSaving(true);
    try {
      localStorage.setItem("fhd_banners_settings", JSON.stringify(settings));
      window.dispatchEvent(new Event("fhd_banners_updated"));
      toast.success("Banners, promotions, and offers updated successfully!");
    } catch {
      toast.error("Could not save settings.");
    } finally {
      setTimeout(() => setIsSaving(false), 400);
    }
  };

  const handleReset = () => {
    if (confirm("Reset all banners and offers to factory defaults?")) {
      setSettings(DEFAULT_SETTINGS);
      localStorage.removeItem("fhd_banners_settings");
      window.dispatchEvent(new Event("fhd_banners_updated"));
      toast.info("Banners restored to factory defaults.");
    }
  };

  return (
    <div className="flex-1 space-y-8 pb-16">
      <AdminHeader
        title="Banner and Offer Management"
        subtitle="Control storefront hero banners, seasonal holiday promotional offers, announcement bars, and trade popups."
      />

      <div className="px-6 sm:px-8 space-y-6 max-w-6xl">
        {/* Top Controls Bar */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4 p-4 rounded-lg bg-white border border-fhd-border shadow-xs">
          <div className="flex items-center space-x-2">
            <Megaphone className="w-5 h-5 text-fhd-sage" />
            <div>
              <span className="text-xs uppercase tracking-wider font-semibold text-fhd-dark block">
                Live Storefront Banners
              </span>
              <span className="text-[11px] text-stone-500">
                Changes apply instantly across the customer storefront.
              </span>
            </div>
          </div>

          <div className="flex items-center space-x-2.5">
            <Button
              type="button"
              variant="outline"
              size="sm"
              onClick={handleReset}
              className="space-x-1.5 text-stone-600"
            >
              <RotateCcw className="w-3.5 h-3.5" />
              <span>Reset Defaults</span>
            </Button>

            <Button
              type="button"
              variant="default"
              size="sm"
              onClick={handleSave}
              disabled={isSaving}
              className="space-x-1.5 bg-[#7C8C6E] hover:bg-[#5A6B4E] text-white"
            >
              <Save className="w-3.5 h-3.5" />
              <span>{isSaving ? "Saving..." : "Save All Changes"}</span>
            </Button>
          </div>
        </div>

        {/* Section Tabs */}
        <div className="flex items-center border-b border-fhd-border gap-2 overflow-x-auto pb-1 text-xs font-semibold uppercase tracking-wider">
          <button
            type="button"
            onClick={() => setActiveTab("hero")}
            className={`py-3 px-4 border-b-2 transition-colors whitespace-nowrap ${
              activeTab === "hero"
                ? "border-fhd-dark text-fhd-dark font-bold"
                : "border-transparent text-stone-400 hover:text-stone-700"
            }`}
          >
            1. Hero Banner
          </button>
          <button
            type="button"
            onClick={() => setActiveTab("holiday")}
            className={`py-3 px-4 border-b-2 transition-colors whitespace-nowrap flex items-center gap-1.5 ${
              activeTab === "holiday"
                ? "border-fhd-dark text-fhd-dark font-bold"
                : "border-transparent text-stone-400 hover:text-stone-700"
            }`}
          >
            <Sparkles className="w-3.5 h-3.5 text-amber-600" />
            <span>2. Holiday &amp; Seasonal Offer</span>
          </button>
          <button
            type="button"
            onClick={() => setActiveTab("announcement")}
            className={`py-3 px-4 border-b-2 transition-colors whitespace-nowrap ${
              activeTab === "announcement"
                ? "border-fhd-dark text-fhd-dark font-bold"
                : "border-transparent text-stone-400 hover:text-stone-700"
            }`}
          >
            3. Top Announcement Strip
          </button>
          <button
            type="button"
            onClick={() => setActiveTab("modal")}
            className={`py-3 px-4 border-b-2 transition-colors whitespace-nowrap ${
              activeTab === "modal"
                ? "border-fhd-dark text-fhd-dark font-bold"
                : "border-transparent text-stone-400 hover:text-stone-700"
            }`}
          >
            4. Welcome &amp; Trade Modal
          </button>
          <button
            type="button"
            onClick={() => setActiveTab("catalogue")}
            className={`py-3 px-4 border-b-2 transition-colors whitespace-nowrap flex items-center gap-1.5 ${
              activeTab === "catalogue"
                ? "border-fhd-dark text-fhd-dark font-bold"
                : "border-transparent text-stone-400 hover:text-stone-700"
            }`}
          >
            <Layers className="w-3.5 h-3.5 text-fhd-sage" />
            <span>5. Catalogue Cards &amp; Offers</span>
          </button>
        </div>

        {/* 1. HERO BANNER CONFIG */}
        {activeTab === "hero" && (
          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="border-b border-fhd-border/60 pb-4">
              <CardTitle className="text-lg font-serif">Main Homepage Hero Banner</CardTitle>
              <p className="text-xs text-stone-500">
                Primary above-the-fold banner presented to customers and wholesale buyers.
              </p>
            </CardHeader>
            <CardContent className="p-6 space-y-6">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div className="space-y-4">
                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Eyebrow Headline
                    </label>
                    <Input
                      value={settings.heroEyebrow}
                      onChange={(e) =>
                        setSettings({ ...settings, heroEyebrow: e.target.value })
                      }
                      placeholder="e.g. HANDCRAFTED LUXURY · HEIRLOOM SOLID WOOD"
                      className="bg-white"
                    />
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Main Hero Heading (H1)
                    </label>
                    <Input
                      value={settings.heroHeading}
                      onChange={(e) =>
                        setSettings({ ...settings, heroHeading: e.target.value })
                      }
                      placeholder="e.g. Considered living, beautifully made."
                      className="bg-white font-serif text-lg"
                    />
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Hero Description Paragraph
                    </label>
                    <textarea
                      rows={3}
                      value={settings.heroDesc}
                      onChange={(e) =>
                        setSettings({ ...settings, heroDesc: e.target.value })
                      }
                      className="w-full rounded-md border border-fhd-border bg-white p-3 text-xs focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-fhd-sage"
                    />
                  </div>
                </div>

                <div className="space-y-4">
                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Hero Background Image URL
                    </label>
                    <Input
                      value={settings.heroImage}
                      onChange={(e) =>
                        setSettings({ ...settings, heroImage: e.target.value })
                      }
                      placeholder="/assets/images/landing/hero-banner.jpg"
                      className="bg-white text-xs font-mono"
                    />
                    {settings.heroImage && (
                      <div className="mt-2 relative h-36 rounded border border-stone-200 overflow-hidden bg-stone-100">
                        <img
                          src={settings.heroImage}
                          alt="Hero preview"
                          className="w-full h-full object-cover"
                          onError={(e) => {
                            (e.target as HTMLImageElement).src =
                              "/assets/images/landing/hero-banner.jpg";
                          }}
                        />
                        <span className="absolute bottom-2 right-2 bg-black/70 text-white text-[10px] px-2 py-0.5 rounded font-mono">
                          Live Background Preview
                        </span>
                      </div>
                    )}
                  </div>

                  <div className="grid grid-cols-2 gap-3">
                    <div className="space-y-1">
                      <label className="text-[10px] uppercase font-semibold text-stone-500">
                        Primary Button Label
                      </label>
                      <Input
                        value={settings.heroPrimaryBtnText}
                        onChange={(e) =>
                          setSettings({
                            ...settings,
                            heroPrimaryBtnText: e.target.value,
                          })
                        }
                        className="bg-white text-xs"
                      />
                    </div>
                    <div className="space-y-1">
                      <label className="text-[10px] uppercase font-semibold text-stone-500">
                        Primary Link Destination
                      </label>
                      <Input
                        value={settings.heroPrimaryBtnLink}
                        onChange={(e) =>
                          setSettings({
                            ...settings,
                            heroPrimaryBtnLink: e.target.value,
                          })
                        }
                        className="bg-white text-xs font-mono"
                      />
                    </div>
                  </div>

                  <div className="grid grid-cols-2 gap-3">
                    <div className="space-y-1">
                      <label className="text-[10px] uppercase font-semibold text-stone-500">
                        Secondary Button Label
                      </label>
                      <Input
                        value={settings.heroSecondaryBtnText}
                        onChange={(e) =>
                          setSettings({
                            ...settings,
                            heroSecondaryBtnText: e.target.value,
                          })
                        }
                        className="bg-white text-xs"
                      />
                    </div>
                    <div className="space-y-1">
                      <label className="text-[10px] uppercase font-semibold text-stone-500">
                        Secondary Link Destination
                      </label>
                      <Input
                        value={settings.heroSecondaryBtnLink}
                        onChange={(e) =>
                          setSettings({
                            ...settings,
                            heroSecondaryBtnLink: e.target.value,
                          })
                        }
                        className="bg-white text-xs font-mono"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </CardContent>
          </Card>
        )}

        {/* 2. HOLIDAY & SEASONAL OFFER CONFIG */}
        {activeTab === "holiday" && (
          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="border-b border-fhd-border/60 pb-4 flex flex-row items-center justify-between">
              <div>
                <CardTitle className="text-lg font-serif">
                  Holiday Season &amp; Promotional Offer Banner
                </CardTitle>
                <p className="text-xs text-stone-500">
                  Featured promotional card displayed in Section 3 of the homepage.
                </p>
              </div>
              <label className="flex items-center space-x-2 cursor-pointer">
                <input
                  type="checkbox"
                  checked={settings.holidayOfferEnabled}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      holidayOfferEnabled: e.target.checked,
                    })
                  }
                  className="rounded text-fhd-sage focus:ring-fhd-sage w-4 h-4"
                />
                <span className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  {settings.holidayOfferEnabled ? "Banner Active" : "Banner Hidden"}
                </span>
              </label>
            </CardHeader>
            <CardContent className="p-6 space-y-6">
              <div className="grid grid-cols-1 md:grid-cols-2 gap-6">
                <div className="space-y-4">
                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Season Badge Text
                    </label>
                    <Input
                      value={settings.holidayBadge}
                      onChange={(e) =>
                        setSettings({ ...settings, holidayBadge: e.target.value })
                      }
                      placeholder="e.g. ✦ Holiday Season 2026"
                      className="bg-white"
                    />
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Offer Eyebrow
                    </label>
                    <Input
                      value={settings.holidayEyebrow}
                      onChange={(e) =>
                        setSettings({
                          ...settings,
                          holidayEyebrow: e.target.value,
                        })
                      }
                      placeholder="e.g. Seasonal Curation · Limited Holiday Offer"
                      className="bg-white"
                    />
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Offer Headline
                    </label>
                    <Input
                      value={settings.holidayTitle}
                      onChange={(e) =>
                        setSettings({ ...settings, holidayTitle: e.target.value })
                      }
                      placeholder="Bring Holiday Warmth Home, Beautifully Handcrafted."
                      className="bg-white font-serif text-lg"
                    />
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Offer Description
                    </label>
                    <textarea
                      rows={3}
                      value={settings.holidayDesc}
                      onChange={(e) =>
                        setSettings({ ...settings, holidayDesc: e.target.value })
                      }
                      className="w-full rounded-md border border-fhd-border bg-white p-3 text-xs focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-fhd-sage"
                    />
                  </div>
                </div>

                <div className="space-y-4">
                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Promotional Pill 1
                    </label>
                    <Input
                      value={settings.holidayPill1}
                      onChange={(e) =>
                        setSettings({ ...settings, holidayPill1: e.target.value })
                      }
                      placeholder="15% Off Handcrafted Pieces · Complimentary Freight"
                      className="bg-white text-xs"
                    />
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Promotional Pill 2 (Delivery / Guarantee)
                    </label>
                    <Input
                      value={settings.holidayPill2}
                      onChange={(e) =>
                        setSettings({ ...settings, holidayPill2: e.target.value })
                      }
                      placeholder="Holiday Delivery Guarantee on Orders Placed by Dec 18"
                      className="bg-white text-xs"
                    />
                  </div>

                  <div className="space-y-1.5">
                    <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                      Landscape Banner Image
                    </label>
                    <Input
                      value={settings.holidayImage}
                      onChange={(e) =>
                        setSettings({ ...settings, holidayImage: e.target.value })
                      }
                      placeholder="/assets/images/landing/christmas-offer-landscape.webp"
                      className="bg-white text-xs font-mono"
                    />
                    {settings.holidayImage && (
                      <div className="mt-2 relative h-32 rounded border border-stone-200 overflow-hidden bg-stone-100">
                        <img
                          src={settings.holidayImage}
                          alt="Offer preview"
                          className="w-full h-full object-cover"
                          onError={(e) => {
                            (e.target as HTMLImageElement).src =
                              "/assets/images/landing/christmas-offer-landscape.webp";
                          }}
                        />
                      </div>
                    )}
                  </div>

                  <div className="grid grid-cols-2 gap-3">
                    <div className="space-y-1">
                      <label className="text-[10px] uppercase font-semibold text-stone-500">
                        CTA 1 Label
                      </label>
                      <Input
                        value={settings.holidayPrimaryBtnText}
                        onChange={(e) =>
                          setSettings({
                            ...settings,
                            holidayPrimaryBtnText: e.target.value,
                          })
                        }
                        className="bg-white text-xs"
                      />
                    </div>
                    <div className="space-y-1">
                      <label className="text-[10px] uppercase font-semibold text-stone-500">
                        CTA 1 Link
                      </label>
                      <Input
                        value={settings.holidayPrimaryBtnLink}
                        onChange={(e) =>
                          setSettings({
                            ...settings,
                            holidayPrimaryBtnLink: e.target.value,
                          })
                        }
                        className="bg-white text-xs font-mono"
                      />
                    </div>
                  </div>
                </div>
              </div>
            </CardContent>
          </Card>
        )}

        {/* 3. ANNOUNCEMENT STRIP CONFIG */}
        {activeTab === "announcement" && (
          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="border-b border-fhd-border/60 pb-4 flex flex-row items-center justify-between">
              <div>
                <CardTitle className="text-lg font-serif">
                  Top Announcement Strip
                </CardTitle>
                <p className="text-xs text-stone-500">
                  Global notification bar displayed across the very top of all storefront pages.
                </p>
              </div>
              <label className="flex items-center space-x-2 cursor-pointer">
                <input
                  type="checkbox"
                  checked={settings.announcementEnabled}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      announcementEnabled: e.target.checked,
                    })
                  }
                  className="rounded text-fhd-sage focus:ring-fhd-sage w-4 h-4"
                />
                <span className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  {settings.announcementEnabled ? "Strip Active" : "Strip Hidden"}
                </span>
              </label>
            </CardHeader>
            <CardContent className="p-6 space-y-5">
              <div className="space-y-1.5">
                <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                  Announcement Message Text *
                </label>
                <Input
                  value={settings.announcementText}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      announcementText: e.target.value,
                    })
                  }
                  placeholder="e.g. Complimentary Freight on Container Wholesale Orders across the Lower 48 USA"
                  className="bg-white"
                />
              </div>

              <div className="grid grid-cols-1 sm:grid-cols-2 gap-4">
                <div className="space-y-1.5">
                  <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                    Promo / Trade Discount Code (Optional)
                  </label>
                  <Input
                    value={settings.announcementCode}
                    onChange={(e) =>
                      setSettings({
                        ...settings,
                        announcementCode: e.target.value,
                      })
                    }
                    placeholder="e.g. TRADE2026"
                    className="bg-white font-mono uppercase"
                  />
                </div>

                <div className="space-y-1.5">
                  <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                    Destination Link URL
                  </label>
                  <Input
                    value={settings.announcementLink}
                    onChange={(e) =>
                      setSettings({
                        ...settings,
                        announcementLink: e.target.value,
                      })
                    }
                    placeholder="/catalogue?dept=furnishing"
                    className="bg-white font-mono text-xs"
                  />
                </div>
              </div>

              {/* Announcement Strip Preview */}
              <div className="space-y-1.5 pt-2">
                <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600 block">
                  Live Strip Preview
                </label>
                <div className="w-full bg-[#2B2520] text-[#FAF8F5] py-2 px-4 text-center text-xs flex items-center justify-center gap-2 rounded">
                  <span>{settings.announcementText}</span>
                  {settings.announcementCode && (
                    <span className="font-mono font-bold text-[#D5CDC0] underline">
                      Use Code {settings.announcementCode}
                    </span>
                  )}
                </div>
              </div>
            </CardContent>
          </Card>
        )}

        {/* 4. WELCOME & TRADE MODAL CONFIG */}
        {activeTab === "modal" && (
          <Card className="border-fhd-border shadow-xs">
            <CardHeader className="border-b border-fhd-border/60 pb-4 flex flex-row items-center justify-between">
              <div>
                <CardTitle className="text-lg font-serif">
                  Welcome &amp; Trade Announcement Popup Modal
                </CardTitle>
                <p className="text-xs text-stone-500">
                  Elegant trade introduction popup shown to first-time visitors and wholesale buyers.
                </p>
              </div>
              <label className="flex items-center space-x-2 cursor-pointer">
                <input
                  type="checkbox"
                  checked={settings.welcomeModalEnabled}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      welcomeModalEnabled: e.target.checked,
                    })
                  }
                  className="rounded text-fhd-sage focus:ring-fhd-sage w-4 h-4"
                />
                <span className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  {settings.welcomeModalEnabled ? "Popup Active" : "Popup Disabled"}
                </span>
              </label>
            </CardHeader>
            <CardContent className="p-6 space-y-5">
              <div className="space-y-1.5">
                <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                  Modal Eyebrow
                </label>
                <Input
                  value={settings.welcomeModalEyebrow}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      welcomeModalEyebrow: e.target.value,
                    })
                  }
                  placeholder="e.g. Special Trade Announcement"
                  className="bg-white"
                />
              </div>

              <div className="space-y-1.5">
                <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                  Modal Title
                </label>
                <Input
                  value={settings.welcomeModalTitle}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      welcomeModalTitle: e.target.value,
                    })
                  }
                  placeholder="Fair Home Decor Trade & Wholesale Program"
                  className="bg-white font-serif text-lg"
                />
              </div>

              <div className="space-y-1.5">
                <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                  Trade Offer &amp; Privileges Description
                </label>
                <textarea
                  rows={3}
                  value={settings.welcomeModalOffer}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      welcomeModalOffer: e.target.value,
                    })
                  }
                  className="w-full rounded-md border border-fhd-border bg-white p-3 text-xs focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-fhd-sage"
                />
              </div>

              <div className="space-y-1.5 max-w-xs">
                <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                  Welcome Trade Discount Code
                </label>
                <Input
                  value={settings.welcomeModalDiscountCode}
                  onChange={(e) =>
                    setSettings({
                      ...settings,
                      welcomeModalDiscountCode: e.target.value,
                    })
                  }
                  placeholder="e.g. FAIRTRADE15"
                  className="bg-white font-mono uppercase"
                />
              </div>
            </CardContent>
          </Card>
        )}

        {/* 5. CATALOGUE CARDS & OFFERS CONFIG */}
        {activeTab === "catalogue" && (
          <div className="space-y-6">
            <Card className="border-fhd-border shadow-xs">
              <CardHeader className="border-b border-fhd-border/60 pb-4">
                <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-2">
                  <div>
                    <CardTitle className="text-lg font-serif">
                      Catalogue Feature Showcase Cards
                    </CardTitle>
                    <p className="text-xs text-stone-500 mt-1">
                      Configure the 4 spotlight cards (Featured, Hot Product, Festive One, New Product) displayed directly below the category ribbon on the customer catalogue page.
                    </p>
                  </div>
                  <Badge variant="outline" className="font-mono text-[11px] self-start sm:self-auto bg-stone-50 border-stone-300">
                    4 Live Cards
                  </Badge>
                </div>
              </CardHeader>
              <CardContent className="p-6 space-y-6">
                {/* Live Preview Bar */}
                <div className="space-y-2">
                  <div className="flex items-center justify-between">
                    <span className="text-[11px] font-semibold uppercase tracking-wider text-stone-600 flex items-center gap-1.5">
                      <Eye className="w-3.5 h-3.5 text-fhd-sage" />
                      Live Showcase Preview
                    </span>
                    <span className="text-[10px] text-stone-400">Matches storefront /catalogue layout</span>
                  </div>

                  <div className="grid grid-cols-2 lg:grid-cols-4 gap-4 p-4 rounded-xl bg-[#F6F4EE] border border-[#E8E2D7]">
                    {[
                      { data: settings.showcase1, num: "Card 1" },
                      { data: settings.showcase2, num: "Card 2" },
                      { data: settings.showcase3, num: "Card 3" },
                      { data: settings.showcase4, num: "Card 4" },
                    ].map((item, idx) => (
                      <div
                        key={idx}
                        className="bg-white rounded-lg border border-[#E8E2D7] overflow-hidden shadow-xs flex flex-col transition-all hover:shadow-sm"
                      >
                        <div className="bg-[#EFEAE2] p-4 flex items-center justify-center h-36 relative">
                          <img
                            src={item.data.image || "/assets/images/logo.png"}
                            alt={item.data.title}
                            className="max-h-28 w-auto object-contain"
                            onError={(e) => {
                              (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                            }}
                          />
                          <span className="absolute top-2 left-2 text-[9px] bg-stone-900/70 text-white px-1.5 py-0.5 rounded font-mono">
                            {item.num}
                          </span>
                        </div>
                        <div className="p-3 text-center border-t border-[#E8E2D7] flex-1 flex flex-col justify-center bg-white">
                          <h5 className="font-serif text-base text-fhd-dark">{item.data.title || "Untitled"}</h5>
                          <p className="text-[9px] uppercase tracking-wider text-[#5A6B4E] font-semibold mt-1">
                            {item.data.subtitle || "No subtitle"}
                          </p>
                        </div>
                      </div>
                    ))}
                  </div>
                </div>

                {/* 4 Cards Configuration Grid */}
                <div className="grid grid-cols-1 md:grid-cols-2 gap-6 pt-2">
                  {(
                    [
                      { key: "showcase1", num: 1, defaultTitle: "Featured" },
                      { key: "showcase2", num: 2, defaultTitle: "Hot Product" },
                      { key: "showcase3", num: 3, defaultTitle: "Festive One" },
                      { key: "showcase4", num: 4, defaultTitle: "New Product" },
                    ] as const
                  ).map((item) => {
                    const card = settings[item.key];
                    return (
                      <div
                        key={item.key}
                        className="rounded-lg border border-fhd-border p-5 bg-white space-y-4 shadow-2xs"
                      >
                        <div className="flex items-center justify-between border-b border-fhd-border pb-2.5">
                          <div className="flex items-center gap-2">
                            <span className="w-5 h-5 rounded-full bg-stone-800 text-white flex items-center justify-center text-[11px] font-bold">
                              {item.num}
                            </span>
                            <span className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                              Card {item.num}: {card.title || item.defaultTitle}
                            </span>
                          </div>
                          <Badge variant="outline" className="text-[10px] uppercase font-mono">
                            {card.actionType}
                          </Badge>
                        </div>

                        {/* Card Title */}
                        <div className="space-y-1">
                          <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                            Card Title *
                          </label>
                          <Input
                            value={card.title}
                            onChange={(e) =>
                              setSettings({
                                ...settings,
                                [item.key]: { ...card, title: e.target.value },
                              })
                            }
                            placeholder={item.defaultTitle}
                            className="bg-white font-serif text-base"
                          />
                        </div>

                        {/* Card Subtitle */}
                        <div className="space-y-1">
                          <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                            Subtitle / Tagline *
                          </label>
                          <Input
                            value={card.subtitle}
                            onChange={(e) =>
                              setSettings({
                                ...settings,
                                [item.key]: { ...card, subtitle: e.target.value },
                              })
                            }
                            placeholder="e.g. CURATED TRADE PICKS · SOLID HARDWOOD"
                            className="bg-white text-xs uppercase"
                          />
                        </div>

                        {/* Card Image */}
                        <div className="space-y-1.5">
                          <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                            Card Image Thumbnail
                          </label>
                          <CloudinaryUploader
                            images={card.image ? [card.image] : []}
                            onChange={(imgs) =>
                              setSettings({
                                ...settings,
                                [item.key]: { ...card, image: imgs[0] || "" },
                              })
                            }
                            maxFiles={1}
                          />
                          <div className="pt-1">
                            <Input
                              value={card.image}
                              onChange={(e) =>
                                setSettings({
                                  ...settings,
                                  [item.key]: { ...card, image: e.target.value },
                                })
                              }
                              placeholder="Or enter image path: /assets/images/..."
                              className="bg-white text-xs font-mono"
                            />
                          </div>
                        </div>

                        {/* Click Action */}
                        <div className="space-y-1">
                          <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                            Click Behavior / Destination
                          </label>
                          <select
                            value={card.actionType}
                            onChange={(e) =>
                              setSettings({
                                ...settings,
                                [item.key]: {
                                  ...card,
                                  actionType: e.target.value as ShowcaseCardConfig["actionType"],
                                },
                              })
                            }
                            className="w-full h-9 rounded-md border border-fhd-border bg-white px-3 text-xs text-fhd-dark focus:outline-none focus:ring-1 focus:ring-fhd-sage"
                          >
                            <option value="featured">Sort by Featured (Curated Wholesale)</option>
                            <option value="moq-asc">Sort by Volume / Low MOQ</option>
                            <option value="holiday">Open Holiday &amp; Festive Collection</option>
                            <option value="sku-desc">Sort by New Releases (Latest SKU)</option>
                            <option value="link">Custom Destination Link</option>
                          </select>
                        </div>

                        {card.actionType === "link" && (
                          <div className="space-y-1">
                            <label className="text-[11px] font-semibold uppercase tracking-wider text-stone-600">
                              Custom Link URL
                            </label>
                            <Input
                              value={card.linkUrl || ""}
                              onChange={(e) =>
                                setSettings({
                                  ...settings,
                                  [item.key]: { ...card, linkUrl: e.target.value },
                                })
                              }
                              placeholder="e.g. /catalogue?dept=lighting or /contact"
                              className="bg-white text-xs font-mono"
                            />
                          </div>
                        )}
                      </div>
                    );
                  })}
                </div>
              </CardContent>
            </Card>
          </div>
        )}
      </div>
    </div>
  );
}

