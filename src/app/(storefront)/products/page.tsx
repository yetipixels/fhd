"use client";

import React, { useState, useMemo, useEffect, Suspense } from "react";
import { useSearchParams } from "next/navigation";
import { Product, Category } from "@/lib/types";
import { MOCK_CATEGORIES, MOCK_PRODUCTS } from "@/lib/mock-data";
import { ProductCard } from "@/components/storefront/ProductCard";
import { Input } from "@/components/ui/input";
import { Button } from "@/components/ui/button";
import { Search, Filter, X } from "lucide-react";
import { createClient } from "@/lib/supabase/client";

function ProductsContent() {
  const searchParams = useSearchParams();
  const initialCategory = searchParams ? searchParams.get("category") || "all" : "all";

  const [products, setProducts] = useState<Product[]>(MOCK_PRODUCTS);
  const [categories, setCategories] = useState<Category[]>(MOCK_CATEGORIES);
  const [selectedCategory, setSelectedCategory] = useState<string>(initialCategory);
  const [searchQuery, setSearchQuery] = useState<string>("");
  const [sortBy, setSortBy] = useState<string>("featured");

  // Sync category param if URL changes
  useEffect(() => {
    if (searchParams) {
      const cat = searchParams.get("category");
      if (cat) {
        setSelectedCategory(cat);
      }
    }
  }, [searchParams]);

  // Fetch real data from Supabase if available
  useEffect(() => {
    async function fetchData() {
      const supabase = createClient();
      try {
        const { data: catData } = await supabase.from("categories").select("*");
        if (catData && catData.length > 0) {
          setCategories(catData);
        }

        const { data: prodData } = await supabase
          .from("products")
          .select("*, category:categories(*)")
          .eq("in_stock", true);

        if (prodData && prodData.length > 0) {
          setProducts(prodData);
        }
      } catch (err) {
        console.warn("Using default mock products:", err);
      }
    }

    fetchData();
  }, []);

  // Filter & Search Logic
  const filteredProducts = useMemo(() => {
    return products.filter((prod) => {
      // Category Filter
      if (selectedCategory !== "all") {
        const matchesCategorySlug =
          prod.category?.slug === selectedCategory ||
          categories.find((c) => c.id === prod.category_id)?.slug === selectedCategory;
        if (!matchesCategorySlug) return false;
      }

      // Search Query: Name, SKU, Tag, Description
      if (searchQuery.trim() !== "") {
        const query = searchQuery.toLowerCase().trim();
        const matchesName = prod.name.toLowerCase().includes(query);
        const matchesSku = prod.sku.toLowerCase().includes(query);
        const matchesDesc = prod.description?.toLowerCase().includes(query);
        if (!matchesName && !matchesSku && !matchesDesc) return false;
      }

      return true;
    }).sort((a, b) => {
      if (sortBy === "price-asc") return a.base_price - b.base_price;
      if (sortBy === "price-desc") return b.base_price - a.base_price;
      if (sortBy === "moq-asc") return a.moq - b.moq;
      if (sortBy === "name") return a.name.localeCompare(b.name);
      return 0; // Default order
    });
  }, [products, categories, selectedCategory, searchQuery, sortBy]);

  return (
    <div className="space-y-10">
      {/* Filter & Search Bar */}
      <div className="flex flex-col md:flex-row md:items-center justify-between gap-4 bg-fhd-cream/40 p-4 rounded-lg border border-fhd-border">
        {/* Search input */}
        <div className="relative flex-1 max-w-md">
          <Search className="absolute left-3.5 top-1/2 -translate-y-1/2 w-4 h-4 text-stone-400" />
          <Input
            type="text"
            placeholder="Search by Product Name, SKU (e.g. FHD-AF-1001)..."
            value={searchQuery}
            onChange={(e) => setSearchQuery(e.target.value)}
            className="pl-10 pr-9 bg-white"
          />
          {searchQuery && (
            <button
              onClick={() => setSearchQuery("")}
              className="absolute right-3 top-1/2 -translate-y-1/2 text-stone-400 hover:text-fhd-dark"
            >
              <X className="w-4 h-4" />
            </button>
          )}
        </div>

        {/* Sort & Quick Stats */}
        <div className="flex items-center space-x-3">
          <span className="text-xs text-stone-500 font-medium">Sort by:</span>
          <select
            value={sortBy}
            onChange={(e) => setSortBy(e.target.value)}
            className="h-11 rounded-md border border-fhd-border bg-white px-3 py-2 text-xs uppercase tracking-wider text-fhd-dark focus:outline-none focus:ring-2 focus:ring-fhd-sage"
          >
            <option value="featured">Featured / Default</option>
            <option value="price-asc">Wholesale Price: Low to High</option>
            <option value="price-desc">Wholesale Price: High to Low</option>
            <option value="moq-asc">MOQ: Lowest First</option>
            <option value="name">Alphabetical (A - Z)</option>
          </select>
        </div>
      </div>

      {/* Category Pills */}
      <div className="flex items-center space-x-2 overflow-x-auto pb-2 scrollbar-none">
        <Button
          variant={selectedCategory === "all" ? "default" : "secondary"}
          size="sm"
          onClick={() => setSelectedCategory("all")}
          className="rounded-full text-xs"
        >
          All Products ({products.length})
        </Button>
        {categories.map((cat) => (
          <Button
            key={cat.id}
            variant={selectedCategory === cat.slug ? "default" : "secondary"}
            size="sm"
            onClick={() => setSelectedCategory(cat.slug)}
            className="rounded-full text-xs whitespace-nowrap"
          >
            {cat.name}
          </Button>
        ))}
      </div>

      {/* Product Grid or Empty State */}
      {filteredProducts.length === 0 ? (
        <div className="py-20 text-center space-y-4 bg-white rounded-lg border border-fhd-border">
          <Filter className="w-12 h-12 mx-auto text-stone-300" />
          <h3 className="font-serif text-2xl text-fhd-dark font-normal">
            No matching products found
          </h3>
          <p className="text-xs text-stone-500 max-w-sm mx-auto">
            Try adjusting your search criteria, clearing the category filter, or searching by a different SKU.
          </p>
          <Button
            variant="outline"
            size="sm"
            onClick={() => {
              setSearchQuery("");
              setSelectedCategory("all");
            }}
          >
            Reset Filters
          </Button>
        </div>
      ) : (
        <div className="grid grid-cols-1 sm:grid-cols-2 lg:grid-cols-3 gap-8">
          {filteredProducts.map((product) => (
            <ProductCard key={product.id} product={product} />
          ))}
        </div>
      )}
    </div>
  );
}

export default function ProductsPage() {
  return (
    <div className="max-w-7xl mx-auto px-4 sm:px-6 lg:px-8 py-12 space-y-10">
      {/* Page Header */}
      <div className="border-b border-fhd-border pb-8 space-y-3">
        <span className="text-xs uppercase tracking-widest text-fhd-sage font-semibold">
          Commercial Procurement
        </span>
        <h1 className="font-serif text-4xl sm:text-5xl font-normal text-fhd-dark">
          Wholesale B2B Product Catalog
        </h1>
        <p className="text-sm text-stone-600 max-w-2xl font-sans leading-relaxed">
          Explore our collection of solid timber furnishings, casegoods, and hand-embroidered textiles. All products feature minimum order quantities (MOQ) and tiered wholesale volume discounts.
        </p>
      </div>

      <Suspense fallback={<div className="py-12 text-center text-xs text-stone-400">Loading catalog...</div>}>
        <ProductsContent />
      </Suspense>
    </div>
  );
}
