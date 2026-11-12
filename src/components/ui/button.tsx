import * as React from "react";
import { cva, type VariantProps } from "class-variance-authority";
import { cn } from "@/lib/utils";

const buttonVariants = cva(
  "inline-flex items-center justify-center whitespace-nowrap rounded-md text-xs uppercase tracking-wider font-medium transition-all duration-200 focus-visible:outline-none focus-visible:ring-2 focus-visible:ring-fhd-sage focus-visible:ring-offset-2 disabled:pointer-events-none disabled:opacity-50 select-none min-h-[44px]",
  {
    variants: {
      variant: {
        default:
          "bg-fhd-dark text-fhd-bg hover:bg-fhd-brown active:scale-[0.98] shadow-sm",
        secondary:
          "bg-fhd-cream text-fhd-dark border border-fhd-border hover:bg-fhd-tan active:scale-[0.98]",
        sage:
          "bg-fhd-sage text-white hover:bg-fhd-sage-dark active:scale-[0.98] shadow-sm",
        outline:
          "border border-fhd-dark text-fhd-dark bg-transparent hover:bg-fhd-dark hover:text-fhd-bg active:scale-[0.98]",
        ghost:
          "text-fhd-dark hover:bg-fhd-cream active:bg-fhd-tan",
        destructive:
          "bg-red-700 text-white hover:bg-red-800 active:scale-[0.98]",
        link:
          "text-fhd-sage underline-offset-4 hover:underline p-0 min-h-0",
      },
      size: {
        default: "h-11 px-5 py-2",
        sm: "h-9 px-3 text-[11px]",
        lg: "h-13 px-8 text-sm",
        icon: "h-11 w-11 p-0",
      },
    },
    defaultVariants: {
      variant: "default",
      size: "default",
    },
  }
);

export interface ButtonProps
  extends React.ButtonHTMLAttributes<HTMLButtonElement>,
    VariantProps<typeof buttonVariants> {
  asChild?: boolean;
}

const Button = React.forwardRef<HTMLButtonElement, ButtonProps>(
  ({ className, variant, size, ...props }, ref) => {
    return (
      <button
        className={cn(buttonVariants({ variant, size, className }))}
        ref={ref}
        {...props}
      />
    );
  }
);
Button.displayName = "Button";

export { Button, buttonVariants };

