"use client";

import React from "react";
import Image from "next/image";
import Link from "next/link";
import { Product } from "@/lib/types";
import { formatCurrency } from "@/lib/utils";
import { useCart } from "@/context/CartContext";
import { Badge } from "@/components/ui/badge";
import { Button } from "@/components/ui/button";
import { Plus } from "lucide-react";

interface ProductCardProps {
  product: Product;
}

export function ProductCard({ product }: ProductCardProps) {
  const { addItem } = useCart();
  const lowestPrice =
    product.bulk_tiers && product.bulk_tiers.length > 0
      ? Math.min(...product.bulk_tiers.map((t) => t.unit_price))
      : product.base_price;

  return (
    <div className="group flex flex-col rounded-lg border border-fhd-border bg-white overflow-hidden shadow-xs hover:shadow-md transition-all duration-300">
      {/* Image Container */}
      <Link
        href={`/products/${product.slug}`}
        className="relative aspect-4/3 w-full bg-fhd-cream overflow-hidden block"
      >
        {product.images && product.images.length > 0 ? (
          <Image
            src={product.images[0]}
            alt={product.name}
            fill
            className="object-cover group-hover:scale-105 transition-transform duration-500"
            sizes="(max-width: 768px) 100vw, (max-width: 1200px) 50vw, 33vw"
          />
        ) : (
          <div className="w-full h-full flex items-center justify-center text-stone-400 font-serif text-lg">
            Fair Home Decor
          </div>
        )}

        {/* Badges Overlay */}
        <div className="absolute top-2.5 left-2.5 flex flex-col gap-1.5 z-10">
          <Badge variant="secondary" className="shadow-xs backdrop-blur-xs bg-white/90">
            MOQ: {product.moq} units
          </Badge>
          {!product.in_stock && (
            <Badge variant="destructive" className="shadow-xs">
              Made-to-Order
            </Badge>
          )}
        </div>

        <div className="absolute top-2.5 right-2.5 z-10">
          <Badge variant="outline" className="bg-white/90 text-[10px] font-mono">
            {product.sku}
          </Badge>
        </div>
      </Link>

      {/* Body */}
      <div className="p-5 flex-1 flex flex-col justify-between space-y-4">
        <div>
          <span className="text-[10px] uppercase tracking-widest text-fhd-sage font-semibold block mb-1">
            {product.category?.name || "Handcrafted Timber"}
          </span>
          <Link href={`/products/${product.slug}`}>
            <h3 className="font-serif text-lg text-fhd-dark group-hover:text-fhd-sage transition-colors line-clamp-1 font-normal">
              {product.name}
            </h3>
          </Link>
          <p className="text-xs text-stone-500 line-clamp-2 mt-1 leading-relaxed">
            {product.description}
          </p>
        </div>

        {/* Pricing & Add */}
        <div className="pt-3 border-t border-fhd-border flex items-center justify-between">
          <div>
            <span className="text-[10px] text-stone-500 uppercase tracking-wider block">
              Wholesale From
            </span>
            <span className="text-base font-semibold text-fhd-dark font-sans">
              {formatCurrency(lowestPrice)}
              <span className="text-[11px] font-normal text-stone-500"> / ea</span>
            </span>
          </div>

          <div className="flex items-center space-x-1.5">
            <Button
              variant="outline"
              size="sm"
              onClick={() => addItem(product, product.moq)}
              className="flex items-center space-x-1"
              title="Add MOQ to RFQ"
            >
              <Plus className="w-3.5 h-3.5" />
              <span>Quote</span>
            </Button>
            <Link href={`/products/${product.slug}`}>
              <Button variant="default" size="sm">
                Details
              </Button>
            </Link>
          </div>
        </div>
      </div>
    </div>
  );
}

