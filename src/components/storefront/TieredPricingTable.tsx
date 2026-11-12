"use client";

import React from "react";
import { BulkTier } from "@/lib/types";
import { formatCurrency } from "@/lib/utils";
import { Check } from "lucide-react";

interface TieredPricingTableProps {
  basePrice: number;
  moq: number;
  bulkTiers: BulkTier[];
  activeQuantity: number;
}

export function TieredPricingTable({
  basePrice,
  moq,
  bulkTiers,
  activeQuantity,
}: TieredPricingTableProps) {
  // If no tiers exist, show single base tier
  const tiersToRender: BulkTier[] =
    bulkTiers && bulkTiers.length > 0
      ? [...bulkTiers].sort((a, b) => a.min_qty - b.min_qty)
      : [{ min_qty: moq, max_qty: null, unit_price: basePrice }];

  return (
    <div className="w-full border border-fhd-border rounded-lg overflow-hidden bg-white shadow-xs">
      <div className="bg-fhd-cream/50 px-4 py-2.5 border-b border-fhd-border flex items-center justify-between">
        <span className="text-xs uppercase tracking-wider font-semibold text-fhd-dark">
          Volume Tiered Wholesale Pricing
        </span>
        <span className="text-[11px] text-fhd-sage font-medium">
          MOQ: {moq} units
        </span>
      </div>

      <div className="divide-y divide-fhd-border/60">
        {tiersToRender.map((tier, idx) => {
          const maxText = tier.max_qty ? `${tier.max_qty} units` : "and above";
          const rangeLabel = `${tier.min_qty} - ${maxText}`;
          const isTierActive =
            activeQuantity >= tier.min_qty &&
            (tier.max_qty === null || activeQuantity <= tier.max_qty);

          const discount =
            basePrice > 0
              ? Math.round(((basePrice - tier.unit_price) / basePrice) * 100)
              : 0;

          return (
            <div
              key={idx}
              className={`flex items-center justify-between px-4 py-3 transition-colors ${
                isTierActive
                  ? "bg-fhd-sage/15 border-l-4 border-fhd-sage font-medium"
                  : "hover:bg-fhd-cream/20"
              }`}
            >
              <div className="flex items-center space-x-2">
                {isTierActive ? (
                  <div className="w-4 h-4 rounded-full bg-fhd-sage text-white flex items-center justify-center">
                    <Check className="w-2.5 h-2.5 stroke-[3]" />
                  </div>
                ) : (
                  <div className="w-4 h-4 rounded-full border border-stone-300" />
                )}
                <div>
                  <span className="text-xs font-mono text-fhd-dark">
                    {rangeLabel}
                  </span>
                  {discount > 0 && (
                    <span className="ml-2 text-[10px] bg-amber-100 text-amber-800 px-1.5 py-0.2 rounded font-semibold">
                      Save {discount}%
                    </span>
                  )}
                </div>
              </div>

              <div className="text-right">
                <span className="text-sm font-semibold text-fhd-dark font-sans">
                  {formatCurrency(tier.unit_price)}
                </span>
                <span className="text-[10px] text-stone-500 block">/ unit</span>
              </div>
            </div>
          );
        })}
      </div>
    </div>
  );
}

