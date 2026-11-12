import React from "react";

export default function AdminLoading() {
  return (
    <div className="flex-1 min-h-[70vh] flex flex-col items-center justify-center space-y-4 px-6">
      <div className="w-10 h-10 border-3 border-stone-200 border-t-fhd-dark rounded-full animate-spin" />
      <p className="text-xs uppercase tracking-widest text-stone-500 font-mono">
        Loading Admin Console...
      </p>
    </div>
  );
}

