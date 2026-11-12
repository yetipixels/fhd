import type { Metadata } from "next";
import { Cormorant_Garamond, Montserrat } from "next/font/google";
import "./globals.css";
import { AuthProvider } from "@/context/AuthContext";
import { CartProvider } from "@/context/CartContext";
import { Toaster } from "sonner";
import { CartDrawer } from "@/components/storefront/CartDrawer";

const cormorant = Cormorant_Garamond({
  subsets: ["latin"],
  weight: ["300", "400", "500", "600"],
  variable: "--font-cormorant",
  display: "swap",
});

const montserrat = Montserrat({
  subsets: ["latin"],
  weight: ["300", "400", "500", "600", "700"],
  variable: "--font-montserrat",
  display: "swap",
});

export const metadata: Metadata = {
  title: "Fair Home Decor | B2B Wholesale & Architectural Procurement",
  description:
    "Luxury artisanal furniture, handcrafted solid timber cabinets, tables, and heritage textiles for hospitality, commercial, and retail procurement.",
  icons: {
    icon: "/favicon.ico",
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en" className={`${cormorant.variable} ${montserrat.variable}`}>
      <body className="min-h-screen bg-fhd-bg text-fhd-dark flex flex-col antialiased selection:bg-fhd-tan selection:text-fhd-dark">
        <AuthProvider>
          <CartProvider>
            {children}
            <CartDrawer />
            <Toaster position="bottom-right" richColors />
          </CartProvider>
        </AuthProvider>
      </body>
    </html>
  );
}

