import * as React from "react";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/lib/utils";

const badgeVariants = cva(
  "inline-flex items-center rounded-full px-2.5 py-0.5 text-[11px] font-semibold tracking-wider uppercase transition-colors focus:outline-none",
  {
    variants: {
      variant: {
        default:
          "bg-fhd-dark text-fhd-bg border-transparent",
        secondary:
          "bg-fhd-cream text-fhd-dark border border-fhd-border",
        sage:
          "bg-fhd-sage/15 text-fhd-sage-dark border border-fhd-sage/30",
        gold:
          "bg-amber-50 text-amber-800 border border-amber-200",
        destructive:
          "bg-red-50 text-red-700 border border-red-200",
        outline:
          "text-fhd-dark border border-fhd-border",
        success:
          "bg-emerald-50 text-emerald-800 border border-emerald-200",
      },
    },
    defaultVariants: {
      variant: "default",
    },
  }
);

export interface BadgeProps
  extends React.HTMLAttributes<HTMLDivElement>,
    VariantProps<typeof badgeVariants> {}

function Badge({ className, variant, ...props }: BadgeProps) {
  return (
    <div className={cn(badgeVariants({ variant }), className)} {...props} />
  );
}

export { Badge, badgeVariants };

