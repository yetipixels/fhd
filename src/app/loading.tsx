import React from "react";

export default function Loading() {
  return (
    <div className="min-h-[60vh] flex flex-col items-center justify-center space-y-4 px-4">
      <div className="w-12 h-12 border-3 border-fhd-border border-t-fhd-sage rounded-full animate-spin" />
      <div className="space-y-1 text-center">
        <p className="font-serif text-lg text-fhd-dark font-normal">
          Fair Home Decor
        </p>
        <p className="text-xs uppercase tracking-widest text-stone-400 font-sans">
          Loading B2B Catalog...
        </p>
      </div>
    </div>
  );
}

