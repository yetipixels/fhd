import React from "react";
import Image from "next/image";
import Link from "next/link";
import { createClient } from "@/lib/supabase/server";
import { MOCK_CATEGORIES, MOCK_PRODUCTS } from "@/lib/mock-data";
import { ProductCard } from "@/components/storefront/ProductCard";
import { Button } from "@/components/ui/button";
import { Badge } from "@/components/ui/badge";
import {
  ShieldCheck,
  Truck,
  Layers,
  Sparkles,
  ArrowRight,
  CheckCircle2,
} from "lucide-react";

export const revalidate = 60; // ISR cache revalidation

export default async function HomePage() {
  const supabase = createClient();

  // Attempt to fetch from Supabase, fallback gracefully to mock data
  let categories = MOCK_CATEGORIES;
  let featuredProducts = MOCK_PRODUCTS;

  try {
    const { data: catData } = await supabase
      .from("categories")
      .select("*")
      .limit(6);
    if (catData && catData.length > 0) {
      categories = catData;
    }

    const { data: prodData } = await supabase
      .from("products")
      .select("*, category:categories(*)")
      .eq("in_stock", true)
      .limit(6);
    if (prodData && prodData.length > 0) {
      featuredProducts = prodData;
    }
  } catch (err) {
    console.warn("Using fallback mock data for homepage:", err);
  }

  return (
    <div className="flex flex-col space-y-20 pb-20">
      {/* HERO SECTION */}
      <section className="relative min-h-[85vh] flex items-center justify-center bg-stone-900 text-white overflow-hidden">
        {/* Editorial Background Image */}
        <div className="absolute inset-0 z-0">
          <Image
            src="https://images.unsplash.com/photo-1618221195710-dd6b41faaea6?w=1920&q=85"
            alt="Fair Home Decor Luxury Architectural Living"
            fill
            priority
            className="object-cover opacity-35 scale-105 animate-in fade-in duration-1000"
          />
          <div className="absolute inset-0 bg-gradient-to-t from-stone-950 via-stone-900/60 to-transparent" />
        </div>

        <div className="relative z-10 max-w-5xl mx-auto px-4 sm:px-6 lg:px-8 text-center space-y-6 pt-12">
          <div className="inline-flex items-center space-x-2 bg-white/10 backdrop-blur-md px-3.5 py-1.5 rounded-full border border-white/20 text-xs tracking-widest uppercase font-medium">
            <Sparkles className="w-3.5 h-3.5 text-fhd-gold" />
            <span>Commercial & Wholesale Procurement Portal</span>
          </div>

          <h1 className="font-serif text-4xl sm:text-6xl lg:text-7xl font-normal tracking-tight text-fhd-bg leading-[1.1]">
            Considered Living, <br className="hidden sm:inline" />
            <span className="italic font-light">Beautifully Made.</span>
          </h1>

          <p className="max-w-2xl mx-auto text-base sm:text-lg text-stone-300 font-sans font-light leading-relaxed">
            Direct-from-artisan solid wood cabinetry, architectural dining collections, and heritage embroidered textiles engineered for luxury hospitality, interior studios, and retail stockists.
          </p>

          <div className="pt-4 flex flex-col sm:flex-row items-center justify-center gap-4">
            <Link href="/products">
              <Button
                variant="sage"
                size="lg"
                className="w-full sm:w-auto px-8 tracking-wider font-semibold shadow-lg text-xs"
              >
                <span>Browse B2B Catalog</span>
                <ArrowRight className="w-4 h-4 ml-2" />
              </Button>
            </Link>

            <Link href="/register">
              <Button
                variant="outline"
                size="lg"
                className="w-full sm:w-auto px-8 tracking-wider font-medium text-white border-white/40 hover:bg-white hover:text-stone-950 text-xs"
              >
                Open Wholesale Account
              </Button>
            </Link>
          </div>

          {/* Quick Metrics */}
          <div className="pt-12 grid grid-cols-2 md:grid-cols-4 gap-6 border-t border-white/15 max-w-4xl mx-auto text-stone-300">
            <div>
              <p className="font-serif text-2xl sm:text-3xl font-normal text-white">496+</p>
              <p className="text-[11px] uppercase tracking-wider text-stone-400">Artisanal SKUs</p>
            </div>
            <div>
              <p className="font-serif text-2xl sm:text-3xl font-normal text-white">Tiered</p>
              <p className="text-[11px] uppercase tracking-wider text-stone-400">Volume Discounts</p>
            </div>
            <div>
              <p className="font-serif text-2xl sm:text-3xl font-normal text-white">FCL & LCL</p>
              <p className="text-[11px] uppercase tracking-wider text-stone-400">Global Logistics</p>
            </div>
            <div>
              <p className="font-serif text-2xl sm:text-3xl font-normal text-white">24hr</p>
              <p className="text-[11px] uppercase tracking-wider text-stone-400">RFQ Turnaround</p>
            </div>
          </div>
        </div>
      </section>

      {/* TRUST BADGES SECTION */}
      <section id="trade-benefits" className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-6">
          <div className="p-6 rounded-lg bg-fhd-cream/40 border border-fhd-border space-y-3">
            <div className="w-10 h-10 rounded-full bg-fhd-cream flex items-center justify-center text-fhd-sage">
              <ShieldCheck className="w-5 h-5" />
            </div>
            <h3 className="font-serif text-lg font-normal text-fhd-dark">
              Direct-From-Maker Pricing
            </h3>
            <p className="text-xs text-stone-600 leading-relaxed">
              Eliminate importer markups. Enjoy competitive wholesale margins with transparent volume-tiered tier discount schedules.
            </p>
          </div>

          <div className="p-6 rounded-lg bg-fhd-cream/40 border border-fhd-border space-y-3">
            <div className="w-10 h-10 rounded-full bg-fhd-cream flex items-center justify-center text-fhd-sage">
              <Truck className="w-5 h-5" />
            </div>
            <h3 className="font-serif text-lg font-normal text-fhd-dark">
              Flexible Container & LCL
            </h3>
            <p className="text-xs text-stone-600 leading-relaxed">
              Consolidated ocean freight, palletized Less-than-Container-Load (LCL), and domestic door-to-door freight across North America.
            </p>
          </div>

          <div className="p-6 rounded-lg bg-fhd-cream/40 border border-fhd-border space-y-3">
            <div className="w-10 h-10 rounded-full bg-fhd-cream flex items-center justify-center text-fhd-sage">
              <Layers className="w-5 h-5" />
            </div>
            <h3 className="font-serif text-lg font-normal text-fhd-dark">
              Custom Finishes & MOQs
            </h3>
            <p className="text-xs text-stone-600 leading-relaxed">
              Bespoke timber stains, contract-grade commercial upholstery, and tailored dimensions for multi-unit hospitality developments.
            </p>
          </div>

          <div className="p-6 rounded-lg bg-fhd-cream/40 border border-fhd-border space-y-3">
            <div className="w-10 h-10 rounded-full bg-fhd-cream flex items-center justify-center text-fhd-sage">
              <CheckCircle2 className="w-5 h-5" />
            </div>
            <h3 className="font-serif text-lg font-normal text-fhd-dark">
              Dedicated Account Rep
            </h3>
            <p className="text-xs text-stone-600 leading-relaxed">
              Direct point of contact for architectural specifications, sample swatches, purchase orders, and scheduled delivery updates.
            </p>
          </div>
        </div>
      </section>

      {/* CATEGORY GRID */}
      <section className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-8">
        <div className="flex flex-col sm:flex-row sm:items-end justify-between border-b border-fhd-border pb-4">
          <div>
            <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
              Wholesale Taxonomy
            </span>
            <h2 className="font-serif text-3xl sm:text-4xl text-fhd-dark font-normal mt-1">
              Curated Trade Categories
            </h2>
          </div>
          <Link
            href="/products"
            className="text-xs uppercase tracking-wider font-semibold text-fhd-sage hover:underline mt-2 sm:mt-0"
          >
            Explore Complete Catalog &rarr;
          </Link>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-6">
          {categories.map((category) => (
            <Link
              key={category.id}
              href={`/products?category=${category.slug}`}
              className="group relative h-80 rounded-lg overflow-hidden border border-fhd-border shadow-xs"
            >
              <Image
                src={category.image_url || "https://images.unsplash.com/photo-1595428774223-ef52624120d2?w=800&q=80"}
                alt={category.name}
                fill
                className="object-cover group-hover:scale-105 transition-transform duration-700"
              />
              <div className="absolute inset-0 bg-gradient-to-t from-stone-950/80 via-stone-950/30 to-transparent" />
              <div className="absolute bottom-6 left-6 right-6 text-white space-y-1">
                <h3 className="font-serif text-2xl font-normal group-hover:text-fhd-gold transition-colors">
                  {category.name}
                </h3>
                <p className="text-xs text-stone-300 line-clamp-1 font-light">
                  {category.description}
                </p>
                <span className="inline-block pt-2 text-[11px] uppercase tracking-wider font-semibold text-fhd-sage">
                  View Collection &rarr;
                </span>
              </div>
            </Link>
          ))}
        </div>
      </section>

      {/* FEATURED WHOLESALE PRODUCTS */}
      <section className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 space-y-8">
        <div className="flex flex-col sm:flex-row sm:items-end justify-between border-b border-fhd-border pb-4">
          <div>
            <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
              Volume Procurement
            </span>
            <h2 className="font-serif text-3xl sm:text-4xl text-fhd-dark font-normal mt-1">
              Featured Wholesale Collections
            </h2>
          </div>
          <Link
            href="/products"
            className="text-xs uppercase tracking-wider font-semibold text-fhd-sage hover:underline mt-2 sm:mt-0"
          >
            View All 496+ Products &rarr;
          </Link>
        </div>

        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
          {featuredProducts.map((product) => (
            <ProductCard key={product.id} product={product} />
          ))}
        </div>
      </section>

      {/* BECOME A PARTNER CTA */}
      <section className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="relative rounded-2xl bg-fhd-dark text-fhd-bg p-8 sm:p-14 overflow-hidden border border-fhd-border">
          <div className="relative z-10 max-w-2xl space-y-6">
            <Badge variant="sage" className="bg-fhd-sage text-white">
              Verified B2B Accounts
            </Badge>
            <h2 className="font-serif text-3xl sm:text-5xl font-normal text-white leading-tight">
              Register for Trade Discounts & Custom Container Quotes
            </h2>
            <p className="text-sm text-stone-300 font-light leading-relaxed">
              Approved interior designers, hotel procurement groups, and furniture retailers unlock tiered wholesale pricing, line-item RFQ cart submission, and priority production scheduling.
            </p>
            <div className="flex flex-col sm:flex-row gap-4 pt-2">
              <Link href="/register">
                <Button variant="sage" size="lg" className="w-full sm:w-auto text-xs tracking-wider">
                  Apply for Wholesale Account
                </Button>
              </Link>
              <Link href="/quote-cart">
                <Button variant="outline" size="lg" className="w-full sm:w-auto text-xs tracking-wider border-stone-500 text-white hover:bg-white hover:text-stone-900">
                  Submit Guest RFQ
                </Button>
              </Link>
            </div>
          </div>
        </div>
      </section>
    </div>
  );
}

