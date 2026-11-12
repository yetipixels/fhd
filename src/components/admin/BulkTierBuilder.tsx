"use client";

import React from "react";
import { BulkTier } from "@/lib/types";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Plus, Trash2 } from "lucide-react";

interface BulkTierBuilderProps {
  tiers: BulkTier[];
  onChange: (tiers: BulkTier[]) => void;
  basePrice: number;
}

export function BulkTierBuilder({
  tiers,
  onChange,
  basePrice,
}: BulkTierBuilderProps) {
  const addTier = () => {
    const lastTier = tiers[tiers.length - 1];
    const newMin = lastTier ? (lastTier.max_qty ? lastTier.max_qty + 1 : lastTier.min_qty + 10) : 10;
    const newPrice = lastTier ? Math.max(1, lastTier.unit_price * 0.9) : (basePrice > 0 ? basePrice * 0.9 : 50);

    const newTier: BulkTier = {
      min_qty: newMin,
      max_qty: null,
      unit_price: Number(newPrice.toFixed(2)),
    };

    // If previous tier had null max_qty, give it a capped range
    const updated = tiers.map((t, idx) => {
      if (idx === tiers.length - 1 && t.max_qty === null) {
        return { ...t, max_qty: newMin - 1 };
      }
      return t;
    });

    onChange([...updated, newTier]);
  };

  const updateTier = (index: number, field: keyof BulkTier, value: any) => {
    const updated = [...tiers];
    updated[index] = {
      ...updated[index],
      [field]: value,
    };
    onChange(updated);
  };

  const removeTier = (index: number) => {
    const updated = tiers.filter((_, idx) => idx !== index);
    onChange(updated);
  };

  return (
    <div className="space-y-3">
      <div className="flex items-center justify-between">
        <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
          Dynamic Wholesale Volume Price Tiers
        </label>
        <Button
          type="button"
          variant="outline"
          size="sm"
          onClick={addTier}
          className="h-8 text-xs flex items-center space-x-1"
        >
          <Plus className="w-3.5 h-3.5" />
          <span>Add Price Tier</span>
        </Button>
      </div>

      {tiers.length === 0 ? (
        <div className="p-4 rounded-md border border-dashed border-fhd-border text-center text-xs text-stone-500 bg-fhd-cream/20">
          No custom volume tiers defined. The product will be sold at the fixed base price. Click "+ Add Price Tier" to configure bulk discounts.
        </div>
      ) : (
        <div className="space-y-2">
          <div className="grid grid-cols-12 gap-2 text-[11px] uppercase tracking-wider text-stone-400 font-semibold px-2">
            <span className="col-span-3">Min Qty</span>
            <span className="col-span-3">Max Qty (optional)</span>
            <span className="col-span-4">Wholesale Unit Price ($)</span>
            <span className="col-span-2 text-right">Action</span>
          </div>

          {tiers.map((tier, idx) => (
            <div
              key={idx}
              className="grid grid-cols-12 gap-2 items-center p-2 rounded-md bg-white border border-fhd-border shadow-xs"
            >
              <div className="col-span-3">
                <Input
                  type="number"
                  min={1}
                  placeholder="Min"
                  value={tier.min_qty}
                  onChange={(e) =>
                    updateTier(idx, "min_qty", parseInt(e.target.value) || 1)
                  }
                  className="h-9 text-xs"
                />
              </div>

              <div className="col-span-3">
                <Input
                  type="number"
                  placeholder="&infin; (Max)"
                  value={tier.max_qty ?? ""}
                  onChange={(e) =>
                    updateTier(
                      idx,
                      "max_qty",
                      e.target.value === "" ? null : parseInt(e.target.value) || null
                    )
                  }
                  className="h-9 text-xs"
                />
              </div>

              <div className="col-span-4">
                <div className="relative">
                  <span className="absolute left-2.5 top-1/2 -translate-y-1/2 text-stone-400 text-xs">
                    $
                  </span>
                  <Input
                    type="number"
                    step="0.01"
                    min={0.01}
                    placeholder="0.00"
                    value={tier.unit_price}
                    onChange={(e) =>
                      updateTier(idx, "unit_price", parseFloat(e.target.value) || 0)
                    }
                    className="h-9 text-xs pl-6"
                  />
                </div>
              </div>

              <div className="col-span-2 text-right">
                <button
                  type="button"
                  onClick={() => removeTier(idx)}
                  className="p-1.5 text-stone-400 hover:text-red-700 transition-colors"
                  title="Remove tier"
                >
                  <Trash2 className="w-4 h-4" />
                </button>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

