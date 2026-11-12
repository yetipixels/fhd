"use client";

import React, { useState, useEffect, useMemo } from "react";
import Link from "next/link";
import Image from "next/image";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { Product } from "@/lib/types";
import { MOCK_PRODUCTS } from "@/lib/mock-data";
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
} from "lucide-react";
import { toast } from "sonner";

export default function AdminProductsPage() {
  const [products, setProducts] = useState<Product[]>(MOCK_PRODUCTS);
  const [searchQuery, setSearchQuery] = useState("");
  const [loading, setLoading] = useState(true);

  // Delete modal state
  const [productToDelete, setProductToDelete] = useState<Product | null>(null);
  const [isDeleting, setIsDeleting] = useState(false);

  const supabase = createClient();

  const fetchProducts = async () => {
    try {
      const { data, error } = await supabase
        .from("products")
        .select("*, category:categories(*)")
        .order("created_at", { ascending: false });

      if (!error && data && data.length > 0) {
        setProducts(data as Product[]);
      }
    } catch (err) {
      console.warn("Using fallback mock products for admin:", err);
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchProducts();
  }, []);

  // Toggle in-stock status
  const handleToggleStock = async (product: Product) => {
    const updatedStatus = !product.in_stock;

    // Optimistic UI update
    setProducts((prev) =>
      prev.map((p) =>
        p.id === product.id ? { ...p, in_stock: updatedStatus } : p
      )
    );

    try {
      const { error } = await supabase
        .from("products")
        .update({ in_stock: updatedStatus })
        .eq("id", product.id);

      if (error) {
        toast.error("Could not update stock status in database.");
        // Revert on error
        setProducts((prev) =>
          prev.map((p) =>
            p.id === product.id ? { ...p, in_stock: !updatedStatus } : p
          )
        );
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

    try {
      const { error } = await supabase
        .from("products")
        .delete()
        .eq("id", productToDelete.id);

      if (error) {
        toast.error(`Failed to delete: ${error.message}`);
      } else {
        setProducts((prev) => prev.filter((p) => p.id !== productToDelete.id));
        toast.success("Product deleted successfully!");
      }
    } catch (err) {
      // Optimistic local deletion for mock products
      setProducts((prev) => prev.filter((p) => p.id !== productToDelete.id));
      toast.success("Product removed from view.");
    } finally {
      setIsDeleting(false);
      setProductToDelete(null);
    }
  };

  // Search filter
  const filteredProducts = useMemo(() => {
    if (!searchQuery.trim()) return products;
    const q = searchQuery.toLowerCase().trim();
    return products.filter(
      (p) =>
        p.name.toLowerCase().includes(q) ||
        p.sku.toLowerCase().includes(q) ||
        p.category?.name?.toLowerCase().includes(q)
    );
  }, [products, searchQuery]);

  return (
    <div className="flex-1 space-y-8 pb-12">
      <AdminHeader
        title="Products Management"
        subtitle="Manage wholesale catalog items, configure volume tiers, and toggle inventory availability."
      />

      <div className="px-6 sm:px-8 space-y-6">
        {/* Controls Bar */}
        <div className="flex flex-col sm:flex-row sm:items-center justify-between gap-4">
          <div className="relative flex-1 max-w-md">
            <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-stone-400" />
            <Input
              placeholder="Search by Product Name, SKU..."
              value={searchQuery}
              onChange={(e) => setSearchQuery(e.target.value)}
              className="pl-10 bg-white"
            />
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
                <TableHead>Category</TableHead>
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
                filteredProducts.map((product) => (
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
                          className="font-semibold text-fhd-dark hover:text-fhd-sage flex items-center space-x-1 text-sm"
                        >
                          <span>{product.name}</span>
                          <ExternalLink className="w-3 h-3 opacity-50" />
                        </Link>
                        <p className="text-[11px] font-mono text-stone-500">
                          SKU: {product.sku}
                        </p>
                      </div>
                    </TableCell>

                    {/* Category */}
                    <TableCell className="text-xs text-stone-600">
                      {product.category?.name || "Handcrafted Timber"}
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
                ))
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

