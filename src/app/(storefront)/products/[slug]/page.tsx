"use client";

import React, { useState, useEffect } from "react";
import Image from "next/image";
import Link from "next/link";
import { useParams, notFound } from "next/navigation";
import { Product } from "@/lib/types";
import { MOCK_PRODUCTS } from "@/lib/mock-data";
import { createClient } from "@/lib/supabase/client";
import { calculateTierPrice, formatCurrency } from "@/lib/utils";
import { useCart } from "@/context/CartContext";
import { TieredPricingTable } from "@/components/storefront/TieredPricingTable";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import {
  ShoppingBag,
  ArrowLeft,
  ShieldCheck,
  Truck,
  Box,
  FileText,
  Check,
} from "lucide-react";

export default function ProductDetailPage() {
  const params = useParams();
  const slug = (params?.slug as string) || "";
  const { addItem } = useCart();

  const [product, setProduct] = useState<Product | null>(null);
  const [loading, setLoading] = useState(true);
  const [selectedImageIndex, setSelectedImageIndex] = useState(0);
  const [quantity, setQuantity] = useState<number>(1);

  // Fetch product from Supabase or fallback
  useEffect(() => {
    async function loadProduct() {
      const supabase = createClient();
      try {
        const { data, error } = await supabase
          .from("products")
          .select("*, category:categories(*)")
          .eq("slug", slug)
          .single();

        if (!error && data) {
          setProduct(data as Product);
          setQuantity(data.moq || 1);
        } else {
          // Check mock data
          const found = MOCK_PRODUCTS.find((p) => p.slug === slug);
          if (found) {
            setProduct(found);
            setQuantity(found.moq || 1);
          }
        }
      } catch (err) {
        const found = MOCK_PRODUCTS.find((p) => p.slug === slug);
        if (found) {
          setProduct(found);
          setQuantity(found.moq || 1);
        }
      } finally {
        setLoading(false);
      }
    }

    loadProduct();
  }, [slug]);

  if (loading) {
    return (
      <div className="max-w-7xl mx-auto px-4 py-20 text-center space-y-4">
        <div className="w-12 h-12 border-4 border-fhd-border border-t-fhd-sage rounded-full animate-spin mx-auto" />
        <p className="text-xs uppercase tracking-widest text-stone-500">
          Loading Architectural Specifications...
        </p>
      </div>
    );
  }

  if (!product) {
    return (
      <div className="max-w-7xl mx-auto px-4 py-20 text-center space-y-4">
        <h2 className="font-serif text-3xl text-fhd-dark">Product Not Found</h2>
        <p className="text-xs text-stone-500">
          The requested product may have been archived or does not exist.
        </p>
        <Link href="/products">
          <Button variant="default" size="sm">
            Back to Catalog
          </Button>
        </Link>
      </div>
    );
  }

  // Calculate live tier price for current quantity
  const { unitPrice, discountPercent } = calculateTierPrice(
    product.base_price,
    quantity,
    product.bulk_tiers
  );
  const estimatedLineTotal = quantity * unitPrice;

  const handleQuantityChange = (val: number) => {
    // Strictly enforce minimum MOQ
    const nextVal = Math.max(product.moq, val);
    setQuantity(nextVal);
  };

  const images = product.images && product.images.length > 0
    ? product.images
    : ["https://images.unsplash.com/photo-1595428774223-ef52624120d2?w=1200&q=85"];

  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-10 space-y-12">
      {/* Back button */}
      <Link
        href="/products"
        className="inline-flex items-center space-x-2 text-xs uppercase tracking-wider font-semibold text-stone-500 hover:text-fhd-dark transition-colors"
      >
        <ArrowLeft className="w-4 h-4" />
        <span>Back to B2B Catalog</span>
      </Link>

      {/* Main Grid: Gallery + Purchasing Details */}
      <div className="grid grid-cols-1 lg:grid-cols-12 gap-12">
        {/* Left Col: Multi-Image Gallery */}
        <div className="lg:col-span-7 space-y-4">
          {/* Main Large Image */}
          <div className="relative aspect-4/3 w-full rounded-lg overflow-hidden bg-fhd-cream border border-fhd-border shadow-xs">
            <Image
              src={images[selectedImageIndex]}
              alt={product.name}
              fill
              priority
              className="object-cover"
              sizes="(max-width: 1024px) 100vw, 60vw"
            />
            <div className="absolute top-4 left-4 flex flex-col gap-2">
              <Badge variant="secondary" className="shadow-xs bg-white/90">
                MOQ: {product.moq} units
              </Badge>
              <Badge variant="outline" className="shadow-xs bg-white/90 font-mono">
                {product.sku}
              </Badge>
            </div>
          </div>

          {/* Thumbnails row */}
          {images.length > 1 && (
            <div className="flex items-center space-x-3 overflow-x-auto pb-2">
              {images.map((img, idx) => (
                <button
                  key={idx}
                  onClick={() => setSelectedImageIndex(idx)}
                  className={`relative w-24 h-20 rounded-md overflow-hidden border-2 transition-all flex-shrink-0 ${
                    selectedImageIndex === idx
                      ? "border-fhd-sage ring-2 ring-fhd-sage/20"
                      : "border-fhd-border opacity-70 hover:opacity-100"
                  }`}
                >
                  <Image
                    src={img}
                    alt={`${product.name} thumbnail ${idx + 1}`}
                    fill
                    className="object-cover"
                  />
                </button>
              ))}
            </div>
          )}
        </div>

        {/* Right Col: Title, Pricing, Tier Table, Action Form */}
        <div className="lg:col-span-5 space-y-6">
          <div className="space-y-2 border-b border-fhd-border pb-6">
            <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
              {product.category?.name || "Handcrafted Furniture"}
            </span>
            <h1 className="font-serif text-3xl sm:text-4xl font-normal text-fhd-dark">
              {product.name}
            </h1>
            <p className="text-xs font-mono text-stone-500">
              Master SKU: <span className="text-fhd-dark font-medium">{product.sku}</span>
            </p>
            <p className="text-xs text-stone-600 leading-relaxed pt-2 font-sans">
              {product.description}
            </p>
          </div>

          {/* Dynamic Tiered Pricing Table */}
          <div className="space-y-3">
            <TieredPricingTable
              basePrice={product.base_price}
              moq={product.moq}
              bulkTiers={product.bulk_tiers}
              activeQuantity={quantity}
            />
          </div>

          {/* Bulk Purchasing & Quantity Selector */}
          <div className="p-6 rounded-lg bg-fhd-cream/40 border border-fhd-border space-y-5">
            <div className="flex items-center justify-between">
              <div>
                <span className="text-xs text-stone-500 uppercase tracking-wider block">
                  Active Unit Price
                </span>
                <span className="text-2xl font-bold font-sans text-fhd-dark">
                  {formatCurrency(unitPrice)}
                  <span className="text-xs font-normal text-stone-500"> / ea</span>
                </span>
                {discountPercent > 0 && (
                  <span className="text-[11px] text-fhd-sage font-medium block">
                    {discountPercent}% volume discount applied
                  </span>
                )}
              </div>

              <div className="text-right">
                <span className="text-xs text-stone-500 uppercase tracking-wider block">
                  Line Total Est.
                </span>
                <span className="text-xl font-bold font-sans text-fhd-dark">
                  {formatCurrency(estimatedLineTotal)}
                </span>
              </div>
            </div>

            {/* Quantity Input */}
            <div className="space-y-2">
              <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark flex justify-between">
                <span>Order Quantity (Units)</span>
                <span className="text-stone-500 font-normal">Min. {product.moq}</span>
              </label>
              <div className="flex items-center space-x-3">
                <div className="flex items-center border border-fhd-border rounded-md bg-white">
                  <button
                    type="button"
                    onClick={() => handleQuantityChange(quantity - 5)}
                    className="px-3 py-2 text-stone-600 hover:bg-fhd-cream text-xs font-bold"
                  >
                    -5
                  </button>
                  <button
                    type="button"
                    onClick={() => handleQuantityChange(quantity - 1)}
                    className="px-3 py-2 text-stone-600 hover:bg-fhd-cream text-xs font-bold"
                  >
                    -1
                  </button>
                  <Input
                    type="number"
                    min={product.moq}
                    value={quantity}
                    onChange={(e) => handleQuantityChange(parseInt(e.target.value) || product.moq)}
                    className="w-20 text-center font-mono font-bold text-base h-11 border-none shadow-none focus-visible:ring-0"
                  />
                  <button
                    type="button"
                    onClick={() => handleQuantityChange(quantity + 1)}
                    className="px-3 py-2 text-stone-600 hover:bg-fhd-cream text-xs font-bold"
                  >
                    +1
                  </button>
                  <button
                    type="button"
                    onClick={() => handleQuantityChange(quantity + 5)}
                    className="px-3 py-2 text-stone-600 hover:bg-fhd-cream text-xs font-bold"
                  >
                    +5
                  </button>
                </div>

                <Button
                  variant="default"
                  size="lg"
                  onClick={() => addItem(product, quantity)}
                  className="flex-1 justify-center space-x-2"
                >
                  <ShoppingBag className="w-4 h-4" />
                  <span>Add to RFQ Cart</span>
                </Button>
              </div>
            </div>

            <p className="text-[11px] text-stone-500 leading-normal italic">
              *Submitting an RFQ does not charge your card. Our team will verify factory lead-time, palletization, and provide a binding freight quote.
            </p>
          </div>
        </div>
      </div>

      {/* Technical Specifications Table */}
      <div className="pt-8 border-t border-fhd-border space-y-6">
        <div className="space-y-1">
          <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
            Architectural Data
          </span>
          <h2 className="font-serif text-2xl sm:text-3xl text-fhd-dark font-normal">
            Technical Specifications & Compliance
          </h2>
        </div>

        <div className="bg-white rounded-lg border border-fhd-border overflow-hidden">
          <div className="grid grid-cols-1 md:grid-cols-2 divide-y md:divide-y-0 md:divide-x divide-fhd-border">
            {/* Left Specs */}
            <div className="p-6 space-y-4">
              <h3 className="text-xs uppercase tracking-wider font-semibold text-fhd-dark border-b border-fhd-border pb-2">
                Dimensions & Materials
              </h3>
              <dl className="divide-y divide-fhd-border/60 text-xs">
                {product.specifications &&
                  Object.entries(product.specifications).map(([key, val]) => (
                    <div key={key} className="py-2.5 flex justify-between">
                      <dt className="text-stone-500 font-medium">{key}</dt>
                      <dd className="text-fhd-dark font-mono font-medium">{val}</dd>
                    </div>
                  ))}
              </dl>
            </div>

            {/* Right Logistics Specs */}
            <div className="p-6 space-y-4">
              <h3 className="text-xs uppercase tracking-wider font-semibold text-fhd-dark border-b border-fhd-border pb-2">
                Freight & Commercial Packaging
              </h3>
              <div className="space-y-3 text-xs text-stone-600">
                <div className="flex items-start space-x-2">
                  <Box className="w-4 h-4 text-fhd-sage flex-shrink-0 mt-0.5" />
                  <div>
                    <span className="font-semibold text-fhd-dark block">Commercial Packaging:</span>
                    <span>Heavy 5-ply reinforced export corrugated cartons with high-density EPE foam corner protectors.</span>
                  </div>
                </div>

                <div className="flex items-start space-x-2">
                  <Truck className="w-4 h-4 text-fhd-sage flex-shrink-0 mt-0.5" />
                  <div>
                    <span className="font-semibold text-fhd-dark block">Container Stacking:</span>
                    <span>Optimized cubic volume packaging for 20ft and 40ft High-Cube container consolidation.</span>
                  </div>
                </div>

                <div className="flex items-start space-x-2">
                  <ShieldCheck className="w-4 h-4 text-fhd-sage flex-shrink-0 mt-0.5" />
                  <div>
                    <span className="font-semibold text-fhd-dark block">Compliance & Testing:</span>
                    <span>FSC certified sustainable timber harvesting & non-toxic VOC compliant water-based wood sealants.</span>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
}
