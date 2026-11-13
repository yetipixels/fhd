import type { Metadata, Viewport } from "next";
import "./globals.css";
import { AuthProvider } from "@/context/AuthContext";
import { CartProvider } from "@/context/CartContext";
import { Toaster } from "sonner";

export const viewport: Viewport = {
  themeColor: "#2B2520",
  width: "device-width",
  initialScale: 1,
};

export const metadata: Metadata = {
  metadataBase: new URL("https://fairhomedecor.com"),
  title: "Fair Home Decor | Considered Living, Beautifully Made",
  description:
    "Fair Home Decor — Handcrafted solid wood furniture, artisanal decor, and heirloom furnishings. Considered living, beautifully made in East Brunswick, NJ.",
  keywords:
    "handcrafted wooden furniture USA, luxury home decor, solid wood furniture, artisan cabinets, wooden decor accents, fair home decor, East Brunswick NJ",
  authors: [{ name: "Fair Home Decor" }],
  robots: "index, follow",
  openGraph: {
    type: "website",
    url: "https://fairhomedecor.com/",
    title: "Fair Home Decor | Considered Living, Beautifully Made",
    description: "Handcrafted solid wood furniture and curated artisan home decor for the modern American home.",
    images: [{ url: "/assets/images/logo-square.png", alt: "Fair Home Decor Logo" }],
    siteName: "Fair Home Decor",
    locale: "en_US",
  },
  twitter: {
    card: "summary_large_image",
    title: "Fair Home Decor | Considered Living, Beautifully Made",
    description: "Handcrafted solid wood furniture and curated artisan home decor for the modern American home.",
    images: ["/assets/images/logo-square.png"],
  },
  icons: {
    icon: [
      { url: "/favicon.ico" },
      { url: "/assets/images/favicon-32x32.png", sizes: "32x32", type: "image/png" },
      { url: "/assets/images/favicon-16x16.png", sizes: "16x16", type: "image/png" },
    ],
    apple: "/assets/images/apple-touch-icon.png",
  },
};

export default function RootLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return (
    <html lang="en">
      <head>
        <link rel="preconnect" href="https://fonts.googleapis.com" />
        <link rel="preconnect" href="https://fonts.gstatic.com" crossOrigin="anonymous" />
        <link
          href="https://fonts.googleapis.com/css2?family=Cormorant+Garamond:ital,wght@0,300;0,400;0,500;0,600;1,300;1,400;1,500&family=Montserrat:wght@300;400;500;600;700&display=swap"
          rel="stylesheet"
        />
      </head>
      <body>
        <AuthProvider>
          <CartProvider>
            {children}
            <Toaster position="bottom-right" richColors />
          </CartProvider>
        </AuthProvider>
      </body>
    </html>
  );
}
