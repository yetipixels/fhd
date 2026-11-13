import React from "react";
import { AdminLayoutShell } from "@/components/admin/AdminLayoutShell";

export const metadata = {
  title: "Admin Console | Fair Home Decor B2B",
  description: "Enterprise management for products, bulk tiers, quotes, and buyer approvals.",
};

export default function AdminLayout({
  children,
}: {
  children: React.ReactNode;
}) {
  return <AdminLayoutShell>{children}</AdminLayoutShell>;
}

