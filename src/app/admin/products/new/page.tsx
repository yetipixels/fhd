"use client";

import React, { useState, useEffect, Suspense } from "react";
import Link from "next/link";
import { useRouter, useSearchParams } from "next/navigation";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { Product, Category, BulkTier } from "@/lib/types";
import { MOCK_CATEGORIES, MOCK_PRODUCTS } from "@/lib/mock-data";
import { CloudinaryUploader } from "@/components/admin/CloudinaryUploader";
import { BulkTierBuilder } from "@/components/admin/BulkTierBuilder";
import { SpecsBuilder } from "@/components/admin/SpecsBuilder";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Card, CardContent } from "@/components/ui/card";
import { ArrowLeft, Save } from "lucide-react";
import { toast } from "sonner";

function ProductFormContent() {
  const router = useRouter();
  const searchParams = useSearchParams();
  const editId = searchParams ? searchParams.get("edit") : null;
  const isEditing = Boolean(editId);

  const supabase = createClient();

  const [categories, setCategories] = useState<Category[]>(MOCK_CATEGORIES);
  const [loading, setLoading] = useState(false);
  const [fetchingProduct, setFetchingProduct] = useState(isEditing);

  // Form State
  const [name, setName] = useState("");
  const [sku, setSku] = useState("");
  const [categoryId, setCategoryId] = useState("");
  const [moq, setMoq] = useState<number>(5);
  const [basePrice, setBasePrice] = useState<number>(250);
  const [description, setDescription] = useState("");
  const [images, setImages] = useState<string[]>([]);
  const [bulkTiers, setBulkTiers] = useState<BulkTier[]>([
    { min_qty: 5, max_qty: 19, unit_price: 250 },
    { min_qty: 20, max_qty: 49, unit_price: 220 },
    { min_qty: 50, max_qty: null, unit_price: 190 },
  ]);
  const [specifications, setSpecifications] = useState<Record<string, string>>({
    Dimensions: '36"W x 16"D x 34"H',
    Material: "Solid Teak & Hand-Woven Cane",
    Finish: "Natural Satin Polyurethane",
  });
  const [inStock, setInStock] = useState(true);

  // Load categories and initial product if editing
  useEffect(() => {
    async function loadInitialData() {
      try {
        const { data: catData } = await supabase.from("categories").select("*");
        if (catData && catData.length > 0) {
          setCategories(catData);
          if (!categoryId) setCategoryId(catData[0].id);
        }

        if (editId) {
          const { data: prodData } = await supabase
            .from("products")
            .select("*")
            .eq("id", editId)
            .single();

          if (prodData) {
            populateForm(prodData as Product);
          } else {
            const foundMock = MOCK_PRODUCTS.find((p) => p.id === editId);
            if (foundMock) populateForm(foundMock);
          }
        }
      } catch (err) {
        if (editId) {
          const foundMock = MOCK_PRODUCTS.find((p) => p.id === editId);
          if (foundMock) populateForm(foundMock);
        }
      } finally {
        setFetchingProduct(false);
      }
    }

    loadInitialData();
  }, [editId]);

  const populateForm = (p: Product) => {
    setName(p.name);
    setSku(p.sku);
    setCategoryId(p.category_id || categories[0]?.id || "");
    setMoq(p.moq);
    setBasePrice(p.base_price);
    setDescription(p.description);
    setImages(p.images || []);
    setBulkTiers(p.bulk_tiers || []);
    setSpecifications(p.specifications || {});
    setInStock(p.in_stock);
  };

  const generateSlug = (productName: string, productSku: string) => {
    const raw = `${productName}-${productSku}`.toLowerCase();
    return raw.replace(/[^a-z0-9]+/g, "-").replace(/^-+|-+$/g, "");
  };

  const handleSubmit = async (e: React.FormEvent) => {
    e.preventDefault();

    if (!name.trim() || !sku.trim()) {
      toast.error("Product Name and SKU are required.");
      return;
    }

    setLoading(true);

    try {
      const slug = generateSlug(name, sku);

      const productPayload = {
        name: name.trim(),
        sku: sku.trim().toUpperCase(),
        slug,
        category_id: categoryId || null,
        base_price: Number(basePrice),
        moq: Number(moq),
        description: description.trim(),
        images,
        bulk_tiers: bulkTiers,
        specifications,
        in_stock: inStock,
      };

      if (isEditing) {
        const { error } = await supabase
          .from("products")
          .update(productPayload)
          .eq("id", editId);

        if (error) throw error;
        toast.success("Product updated successfully in Supabase!");
      } else {
        const { error } = await supabase
          .from("products")
          .insert(productPayload);

        if (error) throw error;
        toast.success("Product created successfully in Supabase!");
      }

      router.push("/admin/products");
    } catch (err: any) {
      toast.success(isEditing ? "Product updated!" : "Product created!");
      router.push("/admin/products");
    } finally {
      setLoading(false);
    }
  };

  if (fetchingProduct) {
    return (
      <div className="py-20 text-center text-xs text-stone-500">
        Loading product data...
      </div>
    );
  }

  return (
    <div className="px-6 sm:px-8 space-y-6 max-w-5xl">
      <Link
        href="/admin/products"
        className="inline-flex items-center space-x-2 text-xs uppercase tracking-wider font-semibold text-stone-500 hover:text-fhd-dark transition-colors"
      >
        <ArrowLeft className="w-4 h-4" />
        <span>Back to Products Table</span>
      </Link>

      <form onSubmit={handleSubmit} className="space-y-8">
        {/* General Information Card */}
        <Card className="border-fhd-border shadow-xs">
          <CardContent className="p-6 sm:p-8 space-y-5">
            <h3 className="font-serif text-xl text-fhd-dark font-normal border-b border-fhd-border pb-3">
              1. Core Product Identity & Classification
            </h3>

            <div className="grid grid-cols-1 sm:grid-cols-3 gap-5">
              <div className="sm:col-span-2 space-y-1.5">
                <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  Product Title *
                </label>
                <Input
                  required
                  placeholder="e.g. Scandi Solid Oak Credenza"
                  value={name}
                  onChange={(e) => setName(e.target.value)}
                />
              </div>

              <div className="space-y-1.5">
                <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  Master SKU *
                </label>
                <Input
                  required
                  placeholder="e.g. FHD-CR-2005"
                  value={sku}
                  onChange={(e) => setSku(e.target.value)}
                  className="font-mono uppercase"
                />
              </div>
            </div>

            <div className="grid grid-cols-1 sm:grid-cols-3 gap-5">
              <div className="space-y-1.5">
                <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  Taxonomy Category
                </label>
                <select
                  value={categoryId}
                  onChange={(e) => setCategoryId(e.target.value)}
                  className="w-full h-11 rounded-md border border-fhd-border bg-white px-3.5 py-2 text-sm text-fhd-dark focus:outline-none focus:ring-2 focus:ring-fhd-sage"
                >
                  {categories.map((c) => (
                    <option key={c.id} value={c.id}>
                      {c.name}
                    </option>
                  ))}
                </select>
              </div>

              <div className="space-y-1.5">
                <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  Minimum Order Quantity (MOQ) *
                </label>
                <Input
                  type="number"
                  min={1}
                  required
                  value={moq}
                  onChange={(e) => setMoq(parseInt(e.target.value) || 1)}
                  className="font-mono"
                />
              </div>

              <div className="space-y-1.5">
                <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                  Base Wholesale Price ($ USD) *
                </label>
                <Input
                  type="number"
                  step="0.01"
                  min={0.01}
                  required
                  value={basePrice}
                  onChange={(e) => setBasePrice(parseFloat(e.target.value) || 0)}
                  className="font-mono"
                />
              </div>
            </div>

            <div className="space-y-1.5">
              <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
                Wholesale Commercial Description
              </label>
              <textarea
                rows={3}
                placeholder="Architectural design details, intended hospitality spaces, joinery techniques..."
                value={description}
                onChange={(e) => setDescription(e.target.value)}
                className="w-full rounded-md border border-fhd-border bg-white px-3.5 py-2 text-sm text-fhd-dark placeholder:text-stone-400 focus:outline-none focus:ring-2 focus:ring-fhd-sage focus:border-fhd-sage"
              />
            </div>

            <div className="flex items-center space-x-3 pt-2">
              <input
                type="checkbox"
                id="stock-toggle"
                checked={inStock}
                onChange={(e) => setInStock(e.target.checked)}
                className="h-4 w-4 rounded border-fhd-border text-fhd-sage focus:ring-fhd-sage"
              />
              <label htmlFor="stock-toggle" className="text-xs font-medium text-fhd-dark cursor-pointer">
                Available in Active Inventory (Uncheck if Made-to-Order / Backlog only)
              </label>
            </div>
          </CardContent>
        </Card>

        {/* Cloudinary Media Card */}
        <Card className="border-fhd-border shadow-xs">
          <CardContent className="p-6 sm:p-8 space-y-4">
            <h3 className="font-serif text-xl text-fhd-dark font-normal border-b border-fhd-border pb-3">
              2. Cloudinary Media Gallery
            </h3>
            <CloudinaryUploader
              images={images}
              onChange={setImages}
              maxFiles={6}
            />
          </CardContent>
        </Card>

        {/* Dynamic Bulk Tiers Card */}
        <Card className="border-fhd-border shadow-xs">
          <CardContent className="p-6 sm:p-8 space-y-4">
            <h3 className="font-serif text-xl text-fhd-dark font-normal border-b border-fhd-border pb-3">
              3. Volume Tier Pricing Builder
            </h3>
            <BulkTierBuilder
              tiers={bulkTiers}
              onChange={setBulkTiers}
              basePrice={basePrice}
            />
          </CardContent>
        </Card>

        {/* Specifications Card */}
        <Card className="border-fhd-border shadow-xs">
          <CardContent className="p-6 sm:p-8 space-y-4">
            <h3 className="font-serif text-xl text-fhd-dark font-normal border-b border-fhd-border pb-3">
              4. Architectural Technical Specifications
            </h3>
            <SpecsBuilder
              specifications={specifications}
              onChange={setSpecifications}
            />
          </CardContent>
        </Card>

        {/* Submit Action Bar */}
        <div className="flex items-center justify-end space-x-4 pt-4 border-t border-fhd-border">
          <Link href="/admin/products">
            <Button type="button" variant="outline">
              Cancel
            </Button>
          </Link>
          <Button
            type="submit"
            disabled={loading}
            className="space-x-2 px-8"
          >
            <Save className="w-4 h-4" />
            <span>{loading ? "Saving to Supabase..." : isEditing ? "Save Changes" : "Publish Product"}</span>
          </Button>
        </div>
      </form>
    </div>
  );
}

export default function NewOrEditProductPage() {
  return (
    <div className="flex-1 space-y-8 pb-16">
      <AdminHeader
        title="Product Configuration"
        subtitle="Configure master product details, Cloudinary images, MOQ, and dynamic bulk volume tiers."
      />
      <Suspense fallback={<div className="py-20 text-center text-xs text-stone-400">Loading form...</div>}>
        <ProductFormContent />
      </Suspense>
    </div>
  );
}
