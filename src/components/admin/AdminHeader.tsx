"use client";

import React from "react";
import Link from "next/link";
import { useAuth } from "@/context/AuthContext";
import { Badge } from "@/components/ui/badge";
import { Shield } from "lucide-react";

export function AdminHeader({ title, subtitle }: { title: string; subtitle?: string }) {
  const { user } = useAuth();

  return (
    <header className="h-18 border-b border-fhd-border bg-white px-6 sm:px-8 flex items-center justify-between">
      <div>
        <h1 className="font-serif text-2xl font-normal text-fhd-dark leading-tight">
          {title}
        </h1>
        {subtitle && (
          <p className="text-xs text-stone-500 font-sans tracking-wide">
            {subtitle}
          </p>
        )}
      </div>

      <div className="flex items-center space-x-3">
        <Badge variant="sage" className="flex items-center space-x-1 font-mono text-[10px]">
          <Shield className="w-3 h-3 mr-1" />
          <span>RLS Protected &middot; Admin Mode</span>
        </Badge>
      </div>
    </header>
  );
}

