"use client";

import React, { useState, useEffect, useMemo } from "react";
import Link from "next/link";
import Image from "next/image";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { Product, Category } from "@/lib/types";
import { MOCK_PRODUCTS, MOCK_CATEGORIES } from "@/lib/mock-data";
import allProductsData from "@/data/products.json";
import { formatCurrency } from "@/lib/utils";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
import { Badge } from "@/components/ui/badge";
import {
  Table,
  TableHeader,
  TableBody,
  TableRow,
  TableHead,
  TableCell,
} from "@/components/ui/table";
import {
  Dialog,
  DialogHeader,
  DialogTitle,
  DialogDescription,
  DialogFooter,
} from "@/components/ui/dialog";
import {
  Plus,
  Search,
  Edit,
  Trash2,
  Check,
  X,
  ExternalLink,
  AlertTriangle,
  Layers,
  Filter,
} from "lucide-react";
import { toast } from "sonner";

export default function AdminProductsPage() {
  const [products, setProducts] = useState<Product[]>(MOCK_PRODUCTS);
  const [categories, setCategories] = useState<Category[]>(MOCK_CATEGORIES);
  const [searchQuery, setSearchQuery] = useState("");
  const [selectedCategoryFilter, setSelectedCategoryFilter] = useState("all");
  const [loading, setLoading] = useState(true);

  // Delete modal state
  const [productToDelete, setProductToDelete] = useState<Product | null>(null);
  const [isDeleting, setIsDeleting] = useState(false);

  const supabase = createClient();

  // Load and merge categories
  const fetchCategories = async () => {
    let localCats: Category[] = [];
    try {
      const stored = localStorage.getItem("fhd_admin_categories");
      if (stored) localCats = JSON.parse(stored);
    } catch {}

    try {
      const { data, error } = await supabase.from("categories").select("*");
      if (!error && data && data.length > 0) {
        const merged = [...(data as Category[])];
        localCats.forEach((lc) => {
          if (!merged.some((m) => m.id === lc.id || m.slug === lc.slug)) {
            merged.push(lc);
          }
        });
        MOCK_CATEGORIES.forEach((mc) => {
          if (!merged.some((m) => m.id === mc.id || m.slug === mc.slug)) {
            merged.push(mc);
          }
        });
        setCategories(merged);
      } else if (localCats.length > 0) {
        setCategories(localCats);
      } else {
        setCategories(MOCK_CATEGORIES);
      }
    } catch {
      setCategories(localCats.length > 0 ? localCats : MOCK_CATEGORIES);
    }
  };

  const legacyDummyIds = new Set(["prod-1", "prod-2", "prod-3", "prod-4", "prod-5", "prod-6"]);
  const legacyDummyNames = new Set([
    "Minimalist Oak Dining Chair",
    "Ceramic Table Lamp",
    "Linen Lounge Armchair",
    "Hand-Carved Wall Mirror",
    "Brass Sculptural Bowl",
    "Walnut Credenza"
  ]);

  const filterOutDummy = (items: any[]): Product[] => {
    if (!Array.isArray(items)) return [];
    return items.filter(
      (p) =>
        !legacyDummyIds.has(p.id) &&
        !p.id?.startsWith("legacy-") &&
        !legacyDummyNames.has(p.name)
    );
  };

  // Load and merge products
  const fetchProducts = async () => {
    try {
      // 1. Read local admin products
      let localProds: Product[] = [];

      try {
        const stored = localStorage.getItem("fhd_admin_products");
        if (stored) {
          localProds = filterOutDummy(JSON.parse(stored));
        }
      } catch {}

      // 2. Fetch Supabase products
      let supabaseProds: Product[] = [];
      try {
        const { data, error } = await supabase
          .from("products")
          .select("*, category:categories(*)")
          .order("created_at", { ascending: false });

        if (!error && data && data.length > 0) {
          supabaseProds = data as Product[];
        }
      } catch (err) {
        console.warn("Supabase fetch failed for admin products:", err);
      }

      // 3. Merge: Local products first (most recent user creations/edits)
      const combined: Product[] = [...localProds];
      supabaseProds.forEach((sp) => {
        if (
          !combined.some(
            (cp) =>
              cp.id === sp.id ||
              (cp.sku && sp.sku && cp.sku.toUpperCase() === sp.sku.toUpperCase())
          )
        ) {
          combined.push(sp);
        }
      });

      // 4. Ensure default catalog items are included if not present
      (allProductsData as unknown as Product[]).forEach((ap) => {
        if (
          !combined.some(
            (cp) =>
              cp.id === ap.id ||
              (cp.sku && ap.sku && cp.sku.toUpperCase() === ap.sku.toUpperCase())
          )
        ) {
          combined.push(ap);
        }
      });
      MOCK_PRODUCTS.forEach((mp) => {
        if (
          !combined.some(
            (cp) =>
              cp.id === mp.id ||
              (cp.sku && mp.sku && cp.sku.toUpperCase() === mp.sku.toUpperCase())
          )
        ) {
          combined.push(mp);
        }
      });

      setProducts(combined);
      try {
        localStorage.setItem("fhd_admin_products", JSON.stringify(combined));
      } catch {}
    } catch (err) {
      console.warn("Using fallback mock products for admin:", err);
      try {
        const stored = localStorage.getItem("fhd_admin_products");
        if (stored) {
          const sanitized = filterOutDummy(JSON.parse(stored));
          setProducts(sanitized.length > 0 ? sanitized : MOCK_PRODUCTS);
        } else {
          setProducts(MOCK_PRODUCTS);
        }
      } catch {
        setProducts(MOCK_PRODUCTS);
      }
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchCategories();
    fetchProducts();

    const handleProductsUpdated = () => {
      fetchProducts();
    };
    const handleCategoriesUpdated = () => {
      fetchCategories();
      fetchProducts();
    };

    window.addEventListener("fhd_products_updated", handleProductsUpdated);
    window.addEventListener("fhd_categories_updated", handleCategoriesUpdated);
    return () => {
      window.removeEventListener("fhd_products_updated", handleProductsUpdated);
      window.removeEventListener("fhd_categories_updated", handleCategoriesUpdated);
    };
  }, []);

  // Helper to resolve product category details
  const getProductCategory = (product: Product) => {
    if (typeof product.category === "object" && product.category?.name) {
      return product.category;
    }
    if (typeof product.category === "string" && product.category) {
      const found = categories.find(
        (c) =>
          c.name.toLowerCase() === (product.category as any).toLowerCase() ||
          c.slug === (product.category as any).toLowerCase()
      );
      if (found) return found;
      return {
        id: "cat-custom",
        name: product.category,
        slug: (product.category as any).toLowerCase().replace(/[^a-z0-9]+/g, "-"),
        department: product.department || "furnishing",
      };
    }
    if (product.category_id) {
      const found = categories.find((c) => c.id === product.category_id);
      if (found) return found;
    }
    const specCat = product.specifications?.Category;
    if (specCat) {
      const found = categories.find((c) => c.name.toLowerCase() === specCat.toLowerCase());
      if (found) return found;
      return {
        id: "cat-spec",
        name: specCat,
        slug: specCat.toLowerCase().replace(/[^a-z0-9]+/g, "-"),
        department: product.department || "furnishing",
      };
    }
    return {
      id: "cat-default",
      name: "Handcrafted Timber",
      slug: "timber",
      department: product.department || "furnishing",
    };
  };

  // Toggle in-stock status
  const handleToggleStock = async (product: Product) => {
    const updatedStatus = !product.in_stock;

    // Optimistic UI update
    const updated = products.map((p) =>
      p.id === product.id ? { ...p, in_stock: updatedStatus } : p
    );
    setProducts(updated);
    try {
      localStorage.setItem("fhd_admin_products", JSON.stringify(updated));
      window.dispatchEvent(new Event("fhd_products_updated"));
    } catch {}

    try {
      const { error } = await supabase
        .from("products")
        .update({ in_stock: updatedStatus })
        .eq("id", product.id);

      if (error) {
        toast.info(`${product.name} is now ${updatedStatus ? "In Stock" : "Made-to-Order"} (local sync)`);
      } else {
        toast.success(
          `${product.name} is now ${updatedStatus ? "In Stock" : "Made-to-Order"}`
        );
      }
    } catch (err) {
      toast.info(`Updated local state to ${updatedStatus ? "In Stock" : "Made-to-Order"}`);
    }
  };

  // Confirm delete
  const handleDeleteProduct = async () => {
    if (!productToDelete) return;
    setIsDeleting(true);

    const updated = products.filter((p) => p.id !== productToDelete.id);
    setProducts(updated);
    try {
      localStorage.setItem("fhd_admin_products", JSON.stringify(updated));
      window.dispatchEvent(new Event("fhd_products_updated"));
    } catch {}

    try {
      const { error } = await supabase
        .from("products")
        .delete()
        .eq("id", productToDelete.id);

      if (error) {
        toast.success("Product removed from view.");
      } else {
        toast.success("Product deleted successfully!");
      }
    } catch (err) {
      toast.success("Product removed from view.");
    } finally {
      setIsDeleting(false);
      setProductToDelete(null);
    }
  };

  // Search & Category filter
  const filteredProducts = useMemo(() => {
    let list = products;

    if (selectedCategoryFilter !== "all") {
      list = list.filter((p) => {
        const cat = getProductCategory(p);
        return (
          p.category_id === selectedCategoryFilter ||
          cat.id === selectedCategoryFilter ||
          cat.slug === selectedCategoryFilter ||
          cat.name.toLowerCase() === selectedCategoryFilter.toLowerCase() ||
          (p.department && p.department.toLowerCase() === selectedCategoryFilter.toLowerCase())
        );
      });
    }

    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase().trim();
      list = list.filter((p) => {
        const cat = getProductCategory(p);
        return (
          p.name.toLowerCase().includes(q) ||
          p.sku.toLowerCase().includes(q) ||
          cat.name.toLowerCase().includes(q) ||
          (p.department && p.department.toLowerCase().includes(q))
        );
      });
    }

    return list;
  }, [products, searchQuery, selectedCategoryFilter, categories]);

  return (
    <div className="flex-1 space-y-8 pb-12">
      <AdminHeader
        title="Products Management"
        subtitle="Manage wholesale catalog items, configure volume tiers, and toggle inventory availability."
      />

      <div className="px-6 sm:px-8 space-y-6">
        {/* Controls Bar */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div className="flex flex-col sm:flex-row sm:items-center gap-3 flex-1 max-w-xl">
            <div className="relative flex-1">
              <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-stone-400" />
              <Input
                placeholder="Search by Product Name, SKU, Category..."
                value={searchQuery}
                onChange={(e) => setSearchQuery(e.target.value)}
                className="pl-10 bg-white"
              />
            </div>

            <select
              value={selectedCategoryFilter}
              onChange={(e) => setSelectedCategoryFilter(e.target.value)}
              className="h-10 rounded-md border border-fhd-border bg-white px-3 text-xs text-fhd-dark focus:outline-none focus:ring-1 focus:ring-fhd-sage min-w-[170px]"
            >
              <option value="all">All Categories ({products.length})</option>
              {categories.map((c) => (
                <option key={c.id} value={c.id}>
                  {c.name}
                </option>
              ))}
            </select>
          </div>

          <div className="flex items-center space-x-3">
            <span className="text-xs text-stone-500 font-mono">
              {filteredProducts.length} Product(s)
            </span>
            <Link href="/admin/products/new">
              <Button variant="default" size="default" className="space-x-1.5">
                <Plus className="w-4 h-4" />
                <span>Add Product</span>
              </Button>
            </Link>
          </div>
        </div>

        {/* Products Table */}
        <div className="rounded-lg border border-fhd-border bg-white shadow-xs overflow-hidden">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead className="w-16">Item</TableHead>
                <TableHead>Product Details</TableHead>
                <TableHead>Category &amp; Department</TableHead>
                <TableHead>MOQ</TableHead>
                <TableHead>Base Price</TableHead>
                <TableHead>Volume Tiers</TableHead>
                <TableHead>Stock Status</TableHead>
                <TableHead className="text-right">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {filteredProducts.length === 0 ? (
                <TableRow>
                  <TableCell colSpan={8} className="text-center py-12 text-xs text-stone-500">
                    No products matched your search.
                  </TableCell>
                </TableRow>
              ) : (
                filteredProducts.map((product) => {
                  const cat = getProductCategory(product);
                  const dept = product.department || cat.department || "furnishing";
                  const deptLabel =
                    dept === "furnishing"
                      ? "Furnishing"
                      : dept === "lighting"
                      ? "Lighting"
                      : dept === "seating"
                      ? "Seating"
                      : dept === "accessories"
                      ? "Accessories & Decor"
                      : dept === "art"
                      ? "Art & Sculpture"
                      : dept;

                  return (
                    <TableRow key={product.id}>
                      {/* Thumbnail */}
                      <TableCell>
                        <div className="relative w-12 h-12 rounded-md overflow-hidden bg-fhd-cream border border-fhd-border flex-shrink-0">
                          {product.images && product.images.length > 0 ? (
                            <Image
                              src={product.images[0]}
                              alt={product.name}
                              fill
                              className="object-cover"
                            />
                          ) : (
                            <div className="w-full h-full flex items-center justify-center text-[9px] text-stone-400">
                              FHD
                            </div>
                          )}
                        </div>
                      </TableCell>

                      {/* Details */}
                      <TableCell>
                        <div className="space-y-0.5">
                          <Link
                            href={`/products/${product.slug}`}
                            target="_blank"
                            className="font-semibold text-fhd-dark hover:text-fhd-sage flex items-center space-x-1 text-sm font-serif"
                          >
                            <span>{product.name}</span>
                            <ExternalLink className="w-3 h-3 opacity-50" />
                          </Link>
                          <p className="text-[11px] font-mono text-stone-500">
                            SKU: {product.sku}
                          </p>
                        </div>
                      </TableCell>

                      {/* Category & Department */}
                      <TableCell>
                        <div className="space-y-1">
                          <span className="font-semibold text-xs text-fhd-dark block font-serif">
                            {cat.name}
                          </span>
                          <span className="inline-flex items-center px-2 py-0.5 rounded text-[10px] font-semibold bg-[#EFEAE2] text-[#425238] border border-[#D5CDC0] capitalize">
                            {deptLabel}
                          </span>
                        </div>
                      </TableCell>

                      {/* MOQ */}
                      <TableCell>
                        <Badge variant="secondary" className="font-mono text-[10px]">
                          MOQ: {product.moq}
                        </Badge>
                      </TableCell>

                      {/* Base Price */}
                      <TableCell className="font-mono font-semibold text-fhd-dark">
                        {formatCurrency(product.base_price)}
                      </TableCell>

                      {/* Volume Tiers Count */}
                      <TableCell>
                        <span className="text-xs text-stone-600 font-mono">
                          {product.bulk_tiers?.length || 0} tier(s)
                        </span>
                      </TableCell>

                      {/* Stock Switch */}
                      <TableCell>
                        <button
                          type="button"
                          onClick={() => handleToggleStock(product)}
                          className={`inline-flex items-center px-2.5 py-1 rounded-full text-[10px] font-bold tracking-wider uppercase transition-colors ${
                            product.in_stock
                              ? "bg-emerald-50 text-emerald-800 border border-emerald-200 hover:bg-emerald-100"
                              : "bg-amber-50 text-amber-800 border border-amber-200 hover:bg-amber-100"
                          }`}
                        >
                          <span
                            className={`w-1.5 h-1.5 rounded-full mr-1.5 ${
                              product.in_stock ? "bg-emerald-600" : "bg-amber-600"
                            }`}
                          />
                          {product.in_stock ? "In Stock" : "Made-to-Order"}
                        </button>
                      </TableCell>

                      {/* Actions */}
                      <TableCell className="text-right">
                        <div className="flex items-center justify-end space-x-1">
                          <Link href={`/admin/products/new?edit=${product.id}`}>
                            <Button variant="ghost" size="sm" className="p-2 h-9 w-9" title="Edit Product">
                              <Edit className="w-4 h-4 text-stone-600" />
                            </Button>
                          </Link>
                          <Button
                            variant="ghost"
                            size="sm"
                            onClick={() => setProductToDelete(product)}
                            className="p-2 h-9 w-9 text-stone-400 hover:text-red-700"
                            title="Delete Product"
                          >
                            <Trash2 className="w-4 h-4" />
                          </Button>
                        </div>
                      </TableCell>
                    </TableRow>
                  );
                })
              )}
            </TableBody>
          </Table>
        </div>
      </div>

      {/* Delete Confirmation Modal */}
      <Dialog
        open={Boolean(productToDelete)}
        onOpenChange={(open) => !open && setProductToDelete(null)}
      >
        <DialogHeader>
          <div className="w-10 h-10 rounded-full bg-red-100 text-red-700 flex items-center justify-center mb-2">
            <AlertTriangle className="w-5 h-5" />
          </div>
          <DialogTitle>Delete Wholesale Product</DialogTitle>
          <DialogDescription>
            Are you sure you want to permanently delete{" "}
            <span className="font-semibold text-fhd-dark">{productToDelete?.name}</span> (SKU:{" "}
            {productToDelete?.sku})? This action cannot be undone.
          </DialogDescription>
        </DialogHeader>
        <DialogFooter>
          <Button
            variant="outline"
            size="sm"
            onClick={() => setProductToDelete(null)}
            disabled={isDeleting}
          >
            Cancel
          </Button>
          <Button
            variant="destructive"
            size="sm"
            onClick={handleDeleteProduct}
            disabled={isDeleting}
          >
            {isDeleting ? "Deleting..." : "Confirm Delete"}
          </Button>
        </DialogFooter>
      </Dialog>
    </div>
  );
}

