"use client";

import React, { createContext, useContext, useEffect, useState } from "react";
import { Product, QuoteRequestItem } from "@/lib/types";
import { calculateTierPrice } from "@/lib/utils";
import { toast } from "sonner";

interface CartContextType {
  items: QuoteRequestItem[];
  addItem: (product: Product, quantity?: number) => void;
  updateQuantity: (productId: string, quantity: number, product?: Product) => void;
  removeItem: (productId: string) => void;
  clearCart: () => void;
  totalItemCount: number;
  estimatedTotal: number;
  isDrawerOpen: boolean;
  setIsDrawerOpen: (open: boolean) => void;
}

const CartContext = createContext<CartContextType | undefined>(undefined);

const STORAGE_KEY = "fhd_quote_cart_v2";

export function CartProvider({ children }: { children: React.ReactNode }) {
  const [items, setItems] = useState<QuoteRequestItem[]>([]);
  const [isDrawerOpen, setIsDrawerOpen] = useState(false);
  const [isLoaded, setIsLoaded] = useState(false);

  // Load from localStorage on mount
  useEffect(() => {
    try {
      const saved = localStorage.getItem(STORAGE_KEY);
      if (saved) {
        setItems(JSON.parse(saved));
      }
    } catch (err) {
      console.error("Failed to parse cart from localStorage", err);
    } finally {
      setIsLoaded(true);
    }
  }, []);

  // Save to localStorage on change
  useEffect(() => {
    if (isLoaded) {
      localStorage.setItem(STORAGE_KEY, JSON.stringify(items));
    }
  }, [items, isLoaded]);

  const addItem = (product: Product, quantity?: number) => {
    const qtyToAdd = Math.max(quantity ?? product.moq, product.moq);

    setItems((prev) => {
      const existingIndex = prev.findIndex((item) => item.product_id === product.id);

      if (existingIndex > -1) {
        const existing = prev[existingIndex];
        const newQty = existing.quantity + qtyToAdd;
        const { unitPrice } = calculateTierPrice(product.base_price, newQty, product.bulk_tiers);
        
        const updated = [...prev];
        updated[existingIndex] = {
          ...existing,
          quantity: newQty,
          applied_unit_price: unitPrice,
          subtotal: Number((newQty * unitPrice).toFixed(2)),
        };
        toast.success(`Updated ${product.name} quantity to ${newQty} units`);
        return updated;
      } else {
        const { unitPrice } = calculateTierPrice(product.base_price, qtyToAdd, product.bulk_tiers);
        const newItem: QuoteRequestItem = {
          product_id: product.id,
          sku: product.sku,
          name: product.name,
          image: product.images[0] || "",
          quantity: qtyToAdd,
          applied_unit_price: unitPrice,
          subtotal: Number((qtyToAdd * unitPrice).toFixed(2)),
          moq: product.moq,
        };
        toast.success(`Added ${product.name} (${qtyToAdd} units) to RFQ Cart`);
        return [...prev, newItem];
      }
    });

    setIsDrawerOpen(true);
  };

  const updateQuantity = (productId: string, quantity: number, product?: Product) => {
    setItems((prev) =>
      prev.map((item) => {
        if (item.product_id !== productId) return item;

        // Enforce MOQ
        const enforcedQty = Math.max(quantity, item.moq);
        
        // Recalculate price tier if product is provided or use base
        let appliedPrice = item.applied_unit_price;
        if (product) {
          const { unitPrice } = calculateTierPrice(product.base_price, enforcedQty, product.bulk_tiers);
          appliedPrice = unitPrice;
        }

        return {
          ...item,
          quantity: enforcedQty,
          applied_unit_price: appliedPrice,
          subtotal: Number((enforcedQty * appliedPrice).toFixed(2)),
        };
      })
    );
  };

  const removeItem = (productId: string) => {
    setItems((prev) => prev.filter((item) => item.product_id !== productId));
    toast.info("Item removed from Quote Cart");
  };

  const clearCart = () => {
    setItems([]);
    if (typeof window !== "undefined") {
      localStorage.removeItem(STORAGE_KEY);
    }
  };

  const totalItemCount = items.reduce((acc, curr) => acc + curr.quantity, 0);
  const estimatedTotal = Number(
    items.reduce((acc, curr) => acc + curr.subtotal, 0).toFixed(2)
  );

  return (
    <CartContext.Provider
      value={{
        items,
        addItem,
        updateQuantity,
        removeItem,
        clearCart,
        totalItemCount,
        estimatedTotal,
        isDrawerOpen,
        setIsDrawerOpen,
      }}
    >
      {children}
    </CartContext.Provider>
  );
}

export function useCart() {
  const context = useContext(CartContext);
  if (!context) {
    throw new Error("useCart must be used within a CartProvider");
  }
  return context;
}

