"use client";

import React, { useEffect } from "react";
import Image from "next/image";
import Link from "next/link";
import { useCart } from "@/context/CartContext";
import { formatCurrency } from "@/lib/utils";
import { X, Trash2, ArrowRight, ShoppingBag } from "lucide-react";
import { Button } from "@/components/ui/button";

export function CartDrawer() {
  const {
    items,
    updateQuantity,
    removeItem,
    clearCart,
    isDrawerOpen,
    setIsDrawerOpen,
    estimatedTotal,
    totalItemCount,
  } = useCart();

  // Close on Escape key
  useEffect(() => {
    const handleKeyDown = (e: KeyboardEvent) => {
      if (e.key === "Escape" && isDrawerOpen) {
        setIsDrawerOpen(false);
      }
    };
    window.addEventListener("keydown", handleKeyDown);
    return () => window.removeEventListener("keydown", handleKeyDown);
  }, [isDrawerOpen, setIsDrawerOpen]);

  if (!isDrawerOpen) return null;

  return (
    <div className="fixed inset-0 z-50 overflow-hidden">
      {/* Backdrop */}
      <div
        className="fixed inset-0 bg-stone-900/50 backdrop-blur-xs transition-opacity duration-300"
        onClick={() => setIsDrawerOpen(false)}
      />

      <div className="fixed inset-y-0 right-0 flex max-w-full pl-10">
        <div className="w-screen max-w-md bg-fhd-bg border-l border-fhd-border shadow-2xl flex flex-col">
          {/* Header */}
          <div className="px-6 py-5 border-b border-fhd-border flex items-center justify-between bg-fhd-cream/30">
            <div className="flex items-center space-x-2">
              <ShoppingBag className="w-5 h-5 text-fhd-dark" />
              <h2 className="font-serif text-xl font-normal text-fhd-dark">
                Wholesale Quote Cart
              </h2>
              <span className="text-xs bg-fhd-tan text-fhd-dark px-2 py-0.5 rounded-full font-semibold">
                {totalItemCount} units
              </span>
            </div>
            <button
              onClick={() => setIsDrawerOpen(false)}
              className="p-1 rounded-md text-stone-500 hover:text-fhd-dark hover:bg-fhd-cream transition-colors"
            >
              <X className="w-5 h-5" />
            </button>
          </div>

          {/* Items List */}
          <div className="flex-1 overflow-y-auto px-6 py-4 divide-y divide-fhd-border/60">
            {items.length === 0 ? (
              <div className="h-full flex flex-col items-center justify-center text-center py-12 space-y-4">
                <div className="w-16 h-16 rounded-full bg-fhd-cream flex items-center justify-center text-stone-400">
                  <ShoppingBag className="w-8 h-8" />
                </div>
                <div className="space-y-1">
                  <p className="font-serif text-lg text-fhd-dark">Your quote cart is empty</p>
                  <p className="text-xs text-stone-500 max-w-xs">
                    Browse our wholesale collections to add products with tiered volume discounts.
                  </p>
                </div>
                <Button
                  variant="outline"
                  size="sm"
                  onClick={() => setIsDrawerOpen(false)}
                >
                  Explore Products
                </Button>
              </div>
            ) : (
              items.map((item) => (
                <div key={item.product_id} className="py-4 flex space-x-4">
                  {/* Thumbnail */}
                  <div className="relative w-20 h-20 rounded-md overflow-hidden bg-fhd-cream flex-shrink-0 border border-fhd-border">
                    {item.image ? (
                      <Image
                        src={item.image}
                        alt={item.name}
                        fill
                        className="object-cover"
                      />
                    ) : (
                      <div className="w-full h-full flex items-center justify-center text-stone-400 text-xs">
                        FHD
                      </div>
                    )}
                  </div>

                  {/* Details */}
                  <div className="flex-1 flex flex-col justify-between">
                    <div>
                      <div className="flex justify-between items-start">
                        <h4 className="font-serif text-base text-fhd-dark line-clamp-1 font-medium">
                          {item.name}
                        </h4>
                        <button
                          onClick={() => removeItem(item.product_id)}
                          className="text-stone-400 hover:text-red-700 p-1 transition-colors"
                          title="Remove item"
                        >
                          <Trash2 className="w-4 h-4" />
                        </button>
                      </div>
                      <p className="text-[11px] text-stone-500 font-mono tracking-wide">
                        SKU: {item.sku} &middot; MOQ: {item.moq}
                      </p>
                      <p className="text-xs font-semibold text-fhd-sage-dark mt-0.5">
                        {formatCurrency(item.applied_unit_price)} / unit
                      </p>
                    </div>

                    {/* Quantity controls */}
                    <div className="flex items-center justify-between pt-2">
                      <div className="flex items-center border border-fhd-border rounded bg-white">
                        <button
                          type="button"
                          onClick={() =>
                            updateQuantity(
                              item.product_id,
                              Math.max(item.moq, item.quantity - 1)
                            )
                          }
                          disabled={item.quantity <= item.moq}
                          className="px-2.5 py-1 text-xs text-stone-600 hover:bg-fhd-cream disabled:opacity-30 disabled:cursor-not-allowed"
                        >
                          -
                        </button>
                        <span className="px-3 py-1 text-xs font-semibold font-mono text-fhd-dark min-w-[2.5rem] text-center">
                          {item.quantity}
                        </span>
                        <button
                          type="button"
                          onClick={() =>
                            updateQuantity(item.product_id, item.quantity + 1)
                          }
                          className="px-2.5 py-1 text-xs text-stone-600 hover:bg-fhd-cream"
                        >
                          +
                        </button>
                      </div>

                      <span className="text-sm font-semibold text-fhd-dark">
                        {formatCurrency(item.subtotal)}
                      </span>
                    </div>
                  </div>
                </div>
              ))
            )}
          </div>

          {/* Footer Actions */}
          {items.length > 0 && (
            <div className="p-6 border-t border-fhd-border bg-fhd-cream/30 space-y-4">
              <div className="space-y-1.5 text-xs text-stone-600">
                <div className="flex justify-between">
                  <span>Total Ordered Quantity:</span>
                  <span className="font-semibold text-fhd-dark">{totalItemCount} units</span>
                </div>
                <div className="flex justify-between text-base font-serif text-fhd-dark pt-1 border-t border-fhd-border">
                  <span>Estimated Total (Excl. Freight):</span>
                  <span className="font-bold">{formatCurrency(estimatedTotal)}</span>
                </div>
                <p className="text-[11px] text-stone-500 italic">
                  *Final shipping & custom palletization charges will be quoted upon RFQ review.
                </p>
              </div>

              <div className="flex flex-col space-y-2 pt-2">
                <Link
                  href="/quote-cart"
                  onClick={() => setIsDrawerOpen(false)}
                  className="w-full"
                >
                  <Button variant="default" className="w-full justify-center space-x-2">
                    <span>Review RFQ & Submit Inquiry</span>
                    <ArrowRight className="w-4 h-4" />
                  </Button>
                </Link>

                <div className="flex justify-between items-center pt-1">
                  <button
                    onClick={clearCart}
                    className="text-[11px] text-stone-500 hover:text-red-700 tracking-wider uppercase font-medium"
                  >
                    Clear Cart
                  </button>
                  <button
                    onClick={() => setIsDrawerOpen(false)}
                    className="text-[11px] text-fhd-sage hover:underline tracking-wider uppercase font-medium"
                  >
                    Continue Browsing
                  </button>
                </div>
              </div>
            </div>
          )}
        </div>
      </div>
    </div>
  );
}

