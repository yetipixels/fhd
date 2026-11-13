import { type ClassValue, clsx } from "clsx";
import { twMerge } from "tailwind-merge";
import { BulkTier } from "./types";

export function cn(...inputs: ClassValue[]) {
  return twMerge(clsx(inputs));
}

export function formatCurrency(amount: number): string {
  return new Intl.NumberFormat("en-US", {
    style: "currency",
    currency: "USD",
    minimumFractionDigits: 2,
  }).format(amount);
}

/**
 * Designated Super-Administrator Emails.
 * Accounts matching these emails or @fairhomedecor.com domains are granted full administrative operational privileges.
 */
export const ADMIN_EMAILS = [
  "yetipixels.gd@gmail.com",
  "info@fairhomedecor.com",
  "admin@fairhomedecor.com",
];

export function isAdminEmail(email?: string | null): boolean {
  if (!email) return false;
  const normalized = email.trim().toLowerCase();
  return (
    ADMIN_EMAILS.includes(normalized) ||
    normalized.endsWith("@fairhomedecor.com") ||
    (typeof process !== "undefined" &&
      process.env.NEXT_PUBLIC_ADMIN_EMAIL?.toLowerCase() === normalized)
  );
}

/**
 * Calculates the applicable wholesale unit price based on ordered quantity
 * and the product's bulk pricing tiers.
 */
export function calculateTierPrice(
  basePrice: number,
  quantity: number,
  tiers: BulkTier[] = []
): { unitPrice: number; tierIndex: number; discountPercent: number } {
  if (!tiers || tiers.length === 0) {
    return { unitPrice: basePrice, tierIndex: -1, discountPercent: 0 };
  }

  // Sort tiers by min_qty ascending
  const sortedTiers = [...tiers].sort((a, b) => a.min_qty - b.min_qty);
  
  let appliedTierIndex = -1;
  let appliedPrice = basePrice;

  for (let i = 0; i < sortedTiers.length; i++) {
    const tier = sortedTiers[i];
    const maxQty = tier.max_qty ?? Infinity;
    if (quantity >= tier.min_qty && quantity <= maxQty) {
      appliedPrice = tier.unit_price;
      appliedTierIndex = i;
      break;
    }
    // If quantity exceeds the highest tier min_qty with no max_qty
    if (quantity >= tier.min_qty && tier.max_qty === null) {
      appliedPrice = tier.unit_price;
      appliedTierIndex = i;
    }
  }

  const discountPercent =
    basePrice > 0 ? Math.round(((basePrice - appliedPrice) / basePrice) * 100) : 0;

  return {
    unitPrice: appliedPrice,
    tierIndex: appliedTierIndex,
    discountPercent: Math.max(0, discountPercent),
  };
}

