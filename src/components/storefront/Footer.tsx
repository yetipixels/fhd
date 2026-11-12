import React from "react";
import Link from "next/link";

export function Footer() {
  return (
    <footer className="border-t border-fhd-border bg-fhd-cream/50 text-fhd-dark pt-16 pb-12 mt-auto">
      <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8">
        <div className="grid grid-cols-1 md:grid-cols-4 gap-10 pb-12 border-b border-fhd-border">
          {/* Brand Col */}
          <div className="md:col-span-1 space-y-4">
            <span className="font-serif text-2xl tracking-widest text-fhd-dark font-normal block">
              FAIR HOME DECOR
            </span>
            <p className="text-xs text-stone-600 leading-relaxed font-sans">
              Considered living, beautifully made. Providing wholesale furniture, bespoke cabinetry, and handcrafted textiles for commercial hospitality, design studios, and retail stockists.
            </p>
            <div className="text-xs text-stone-600 space-y-1">
              <p>East Brunswick, NJ 08816, USA</p>
              <p className="font-medium text-fhd-dark">info@fairhomedecor.com</p>
            </div>
          </div>

          {/* Quick Links */}
          <div className="space-y-3">
            <h4 className="text-xs font-semibold uppercase tracking-widest text-fhd-dark">
              B2B Collections
            </h4>
            <ul className="space-y-2 text-xs text-stone-600">
              <li>
                <Link href="/products?category=accent-cabinets" className="hover:text-fhd-sage transition-colors">
                  Accent Cabinets & Credenzas
                </Link>
              </li>
              <li>
                <Link href="/products?category=coffee-tables" className="hover:text-fhd-sage transition-colors">
                  Nesting & Coffee Tables
                </Link>
              </li>
              <li>
                <Link href="/products?category=dining-tables" className="hover:text-fhd-sage transition-colors">
                  Solid Oak Dining Tables
                </Link>
              </li>
              <li>
                <Link href="/products?category=embroidered-cushions" className="hover:text-fhd-sage transition-colors">
                  Heritage Embroidered Textiles
                </Link>
              </li>
              <li>
                <Link href="/products?category=holiday-accents" className="hover:text-fhd-sage transition-colors">
                  Holiday & Architectural Accents
                </Link>
              </li>
            </ul>
          </div>

          {/* Trade Services */}
          <div className="space-y-3">
            <h4 className="text-xs font-semibold uppercase tracking-widest text-fhd-dark">
              Trade & Logistics
            </h4>
            <ul className="space-y-2 text-xs text-stone-600">
              <li>
                <Link href="/register" className="hover:text-fhd-sage transition-colors">
                  Wholesale Account Application
                </Link>
              </li>
              <li>
                <Link href="/quote-cart" className="hover:text-fhd-sage transition-colors">
                  Request for Quote (RFQ)
                </Link>
              </li>
              <li>
                <span className="text-stone-500">Tiered Pricing & Volume Discounts</span>
              </li>
              <li>
                <span className="text-stone-500">Full Container Load (FCL) Logistics</span>
              </li>
              <li>
                <span className="text-stone-500">Custom Architectural Finishes</span>
              </li>
            </ul>
          </div>

          {/* Business Hours & Inquiries */}
          <div className="space-y-3">
            <h4 className="text-xs font-semibold uppercase tracking-widest text-fhd-dark">
              Commercial Procurement
            </h4>
            <p className="text-xs text-stone-600 leading-relaxed">
              Our B2B trade specialists provide custom volume quotes, sample swatches, and ocean freight logistics schedules within 24 hours.
            </p>
            <div className="pt-2">
              <Link href="/quote-cart" className="inline-block text-xs uppercase tracking-wider font-semibold text-fhd-sage hover:underline">
                Start Bulk Inquiry &rarr;
              </Link>
            </div>
          </div>
        </div>

        {/* Bottom copyright */}
        <div className="pt-8 flex flex-col sm:flex-row items-center justify-between text-xs text-stone-500 space-y-4 sm:space-y-0">
          <p>&copy; {new Date().getFullYear()} Fair Home Decor LLC. All rights reserved.</p>
          <p className="text-[11px] tracking-wide">
            Enterprise Wholesale B2B Procurement Platform &middot; Designed for Interior Designers, Architects & Hoteliers
          </p>
        </div>
      </div>
    </footer>
  );
}

