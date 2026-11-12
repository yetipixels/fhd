"use client";

import React from "react";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Plus, Trash2 } from "lucide-react";

interface SpecsBuilderProps {
  specifications: Record<string, string>;
  onChange: (specs: Record<string, string>) => void;
}

export function SpecsBuilder({ specifications, onChange }: SpecsBuilderProps) {
  const entries = Object.entries(specifications || {});

  const addEntry = () => {
    onChange({
      ...specifications,
      [`Attribute_${entries.length + 1}`]: "",
    });
  };

  const updateKey = (oldKey: string, newKey: string) => {
    if (oldKey === newKey) return;
    const updated: Record<string, string> = {};
    for (const [k, v] of Object.entries(specifications)) {
      if (k === oldKey) {
        updated[newKey] = v;
      } else {
        updated[k] = v;
      }
    }
    onChange(updated);
  };

  const updateValue = (key: string, val: string) => {
    onChange({
      ...specifications,
      [key]: val,
    });
  };

  const removeEntry = (keyToRemove: string) => {
    const updated = { ...specifications };
    delete updated[keyToRemove];
    onChange(updated);
  };

  return (
    <div className="space-y-3">
      <div className="flex items-center justify-between">
        <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
          Architectural Specifications (Key-Value)
        </label>
        <Button
          type="button"
          variant="outline"
          size="sm"
          onClick={addEntry}
          className="h-8 text-xs flex items-center space-x-1"
        >
          <Plus className="w-3.5 h-3.5" />
          <span>Add Specification</span>
        </Button>
      </div>

      {entries.length === 0 ? (
        <div className="p-4 rounded-md border border-dashed border-fhd-border text-center text-xs text-stone-500 bg-fhd-cream/20">
          No custom specifications added yet. Add dimensions, materials, or finishes for architectural spec sheets.
        </div>
      ) : (
        <div className="space-y-2">
          {entries.map(([key, val], idx) => (
            <div
              key={idx}
              className="grid grid-cols-12 gap-2 items-center p-2 rounded-md bg-white border border-fhd-border shadow-xs"
            >
              <div className="col-span-5">
                <Input
                  placeholder="e.g. Dimensions"
                  value={key}
                  onChange={(e) => updateKey(key, e.target.value)}
                  className="h-9 text-xs font-medium"
                />
              </div>
              <div className="col-span-6">
                <Input
                  placeholder="e.g. 36 x 16 x 34 in"
                  value={val}
                  onChange={(e) => updateValue(key, e.target.value)}
                  className="h-9 text-xs"
                />
              </div>
              <div className="col-span-1 text-right">
                <button
                  type="button"
                  onClick={() => removeEntry(key)}
                  className="p-1.5 text-stone-400 hover:text-red-700 transition-colors"
                  title="Remove spec"
                >
                  <Trash2 className="w-4 h-4" />
                </button>
              </div>
            </div>
          ))}
        </div>
      )}
    </div>
  );
}

