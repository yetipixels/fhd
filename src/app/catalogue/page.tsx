"use client";

import React, { useState, useEffect, useMemo, Suspense } from "react";
import Link from "next/link";
import { useSearchParams, useRouter } from "next/navigation";
import { Header } from "@/components/common/Header";
import { Footer } from "@/components/common/Footer";
import { WelcomeModal } from "@/components/common/WelcomeModal";
import allProductsData from "@/data/products.json";
import { createClient } from "@/lib/supabase/client";
import { MOCK_CATEGORIES } from "@/lib/mock-data";
import "@/styles/catalogue.css";

export interface Product {
  id: string;
  sku: string;
  name: string;
  category: string;
  dimension: string;
  material: string;
  finish: string;
  moq: number;
  description: string;
  image: string;
  department?: string;
  // Legacy aliases for backward compatibility
  code?: string;
  tag?: string;
  dimensions?: string;
  subcategory?: string;
  subcatTitle?: string;
}

const DEPT_MAP: Record<string, string[]> = {
  furnishing: [
    "round-tables",
    "side-tables",
    "c-tables",
    "bedside-tables",
    "study-tables",
    "console-tables",
    "accent-cabinets",
    "bookshelves",
  ],
  holiday: ["holiday-decor"],
  accessories: ["photo-frames", "holiday-decor"],
  seating: [],
  lighting: ["table-lamps", "lamps"],
  art: [],
};

const DEPARTMENTS = [
  { slug: "furnishing", label: "Furnishing", href: "/catalogue?dept=furnishing" },
  { slug: "lighting", label: "Lighting", href: "/catalogue?dept=lighting" },
  { slug: "seating", label: "Seating", href: "/catalogue?dept=seating" },
  { slug: "accessories", label: "Accessories & Decor", href: "/catalogue?dept=accessories" },
  { slug: "art", label: "Art & Sculpture", href: "/catalogue?dept=art" },
];

const BASE_CATEGORIES = [
  { slug: "accent-cabinets", label: "Accent Cabinets", department: "furnishing" },
  { slug: "bedside-tables", label: "Bedside Tables", department: "furnishing" },
  { slug: "bookshelves", label: "Bookshelves & Storage", department: "furnishing" },
  { slug: "console-tables", label: "Console Tables", department: "furnishing" },
  { slug: "round-tables", label: "Round Tables", department: "furnishing" },
  { slug: "side-tables", label: "Side & Accent Tables", department: "furnishing" },
  { slug: "c-tables", label: "C-Tables & Sofa Accents", department: "furnishing" },
  { slug: "study-tables", label: "Study Tables & Desks", department: "furnishing" },
  { slug: "photo-frames", label: "Wooden Photo Frames", department: "accessories" },
  { slug: "holiday-decor", label: "Holiday & Festive", department: "accessories" },
  { slug: "table-lamps", label: "Artisanal Table Lamps", department: "lighting" },
];

const DEFAULT_CATALOGUE_SHOWCASE = {
  showcase1: {
    title: "Featured",
    subtitle: "Curated Trade Picks · Solid Hardwood",
    image: "https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg",
    actionType: "featured",
    linkUrl: "/catalogue?dept=furnishing",
  },
  showcase2: {
    title: "Hot Product",
    subtitle: "Top Volume Demand · Low MOQ",
    image: "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/zsgtqs6necrqmtspt0ss.jpg",
    actionType: "moq-asc",
    linkUrl: "/catalogue?dept=furnishing",
  },
  showcase3: {
    title: "Festive One",
    subtitle: "Holiday & Seasonal Accents · Ready to Ship",
    image: "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/yg9wb1zkzgr4415lfkyq.jpg",
    actionType: "holiday",
    linkUrl: "/catalogue?dept=accessories&category=Holiday%20%26%20Festive",
  },
  showcase4: {
    title: "New Product",
    subtitle: "2026 New Releases · Generational Craft",
    image: "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/tl7mjiee8dyyliuhi34x.jpg",
    actionType: "sku-desc",
    linkUrl: "/catalogue?dept=furnishing",
  },
};

function CatalogueContent() {
  const searchParams = useSearchParams();
  const router = useRouter();

  const [selectedDept, setSelectedDept] = useState("furnishing");
  const [selectedCategory, setSelectedCategory] = useState("all");
  const [selectedMaterial, setSelectedMaterial] = useState("all");
  const [selectedFinish, setSelectedFinish] = useState("all");
  const [selectedMoq, setSelectedMoq] = useState("all");
  const [searchQuery, setSearchQuery] = useState("");
  const [sortOption, setSortOption] = useState("featured");
  const [itemsPerPage, setItemsPerPage] = useState(12);
  const [currentPage, setCurrentPage] = useState(1);
  const [inStockOnly, setInStockOnly] = useState(true);
  const [containerOnly, setContainerOnly] = useState(true);

  const [showcase, setShowcase] = useState(DEFAULT_CATALOGUE_SHOWCASE);
  const [customCategories, setCustomCategories] = useState<any[]>([]);
  const [customProducts, setCustomProducts] = useState<Product[]>([]);

  // Sync showcase settings from admin Banner and Offers
  useEffect(() => {
    const loadShowcase = () => {
      try {
        const stored = localStorage.getItem("fhd_banners_settings");
        if (stored) {
          const parsed = JSON.parse(stored);
          setShowcase({
            showcase1: { ...DEFAULT_CATALOGUE_SHOWCASE.showcase1, ...(parsed.showcase1 || {}) },
            showcase2: { ...DEFAULT_CATALOGUE_SHOWCASE.showcase2, ...(parsed.showcase2 || {}) },
            showcase3: { ...DEFAULT_CATALOGUE_SHOWCASE.showcase3, ...(parsed.showcase3 || {}) },
            showcase4: { ...DEFAULT_CATALOGUE_SHOWCASE.showcase4, ...(parsed.showcase4 || {}) },
          });
        }
      } catch {}
    };
    loadShowcase();
    window.addEventListener("fhd_banners_updated", loadShowcase);
    return () => window.removeEventListener("fhd_banners_updated", loadShowcase);
  }, []);

  // Sync custom categories and published products from Supabase + Admin Local Cache
  useEffect(() => {
    const supabase = createClient();

    const syncAdminData = async () => {
      // 1. Sync Categories from Supabase & Local Admin Cache
      const deletedSlugs = new Set<string>();
      try {
        const storedDeleted = localStorage.getItem("fhd_deleted_categories");
        if (storedDeleted) {
          const parsed = JSON.parse(storedDeleted);
          if (Array.isArray(parsed)) {
            parsed.forEach((s) => deletedSlugs.add(String(s).toLowerCase()));
          }
        }
      } catch {}

      let localCats: any[] = [];
      try {
        const storedCats = localStorage.getItem("fhd_admin_categories");
        if (storedCats) {
          const parsed = JSON.parse(storedCats);
          if (Array.isArray(parsed)) {
            const legacyDummyCategoryIds = new Set([
              "cat-1", "cat-2", "cat-3", "cat-4", "cat-5", "cat-6", "cat-7", "cat-8", "cat-9", "cat-default"
            ]);
            localCats = parsed.filter(
              (c: any) =>
                !legacyDummyCategoryIds.has(c.id) &&
                !deletedSlugs.has(c.id?.toLowerCase()) &&
                !deletedSlugs.has(c.slug?.toLowerCase())
            );
          }
        }
      } catch {}

      // Read department overrides
      let localDepts: Record<string, string> = {};
      try {
        const storedDepts = localStorage.getItem("fhd_category_departments");
        if (storedDepts) localDepts = JSON.parse(storedDepts);
      } catch {}

      try {
        const { data: catData } = await supabase
          .from("categories")
          .select("*")
          .order("name", { ascending: true });

        const activeRemote = (catData || []).filter(
          (c: any) => !deletedSlugs.has(c.id?.toLowerCase()) && !deletedSlugs.has(c.slug?.toLowerCase())
        );

        const merged: any[] = activeRemote.map((rc: any) => {
          const localMatch = localCats.find(
            (lc: any) => lc.id === rc.id || lc.slug === rc.slug
          );
          const resolvedDept =
            localDepts[rc.id] ||
            localDepts[rc.slug] ||
            localMatch?.department ||
            rc.department ||
            "furnishing";
          return {
            ...rc,
            department: resolvedDept,
          };
        });

        localCats.forEach((lc) => {
          if (
            !deletedSlugs.has(lc.id?.toLowerCase()) &&
            !deletedSlugs.has(lc.slug?.toLowerCase()) &&
            !merged.some((m) => m.id === lc.id || m.slug === lc.slug)
          ) {
            const resolvedDept =
              localDepts[lc.id] ||
              localDepts[lc.slug] ||
              lc.department ||
              "furnishing";
            merged.push({ ...lc, department: resolvedDept });
          }
        });

        // Only inject MOCK_CATEGORIES if user has neither remote nor local categories
        if (merged.length === 0 && localCats.length === 0 && (!catData || catData.length === 0)) {
          MOCK_CATEGORIES.forEach((mc) => {
            if (
              !deletedSlugs.has(mc.id.toLowerCase()) &&
              !deletedSlugs.has(mc.slug.toLowerCase()) &&
              !merged.some((m) => m.id === mc.id || m.slug === mc.slug)
            ) {
              merged.push(mc);
            }
          });
        }
        setCustomCategories(merged);
      } catch (err) {
        console.warn("Could not fetch categories from Supabase, using local fallback:", err);
        const fallback = [...localCats];
        if (fallback.length === 0) {
          MOCK_CATEGORIES.forEach((mc) => {
            if (
              !deletedSlugs.has(mc.id.toLowerCase()) &&
              !deletedSlugs.has(mc.slug.toLowerCase()) &&
              !fallback.some((m) => m.id === mc.id || m.slug === mc.slug)
            ) {
              fallback.push(mc);
            }
          });
        }
        setCustomCategories(fallback);
      }

      // 2. Sync Products from Supabase & Local Admin Cache
      let localProds: any[] = [];
      try {
        const storedProds = localStorage.getItem("fhd_admin_products");
        if (storedProds) {
          const parsed = JSON.parse(storedProds);
          if (Array.isArray(parsed)) {
            const legacyDummyIds = new Set(["prod-1", "prod-2", "prod-3", "prod-4", "prod-5", "prod-6"]);
            localProds = parsed.filter((p: any) => !legacyDummyIds.has(p.id) && !p.id?.startsWith("legacy-"));
          }
        }
      } catch {}

      try {
        const { data: prodData } = await supabase
          .from("products")
          .select("*, category:categories(*)")
          .order("created_at", { ascending: false });

        const rawList = [...localProds];
        if (prodData && prodData.length > 0) {
          prodData.forEach((sp: any) => {
            if (!rawList.some((rp) => rp.id === sp.id || (rp.sku && sp.sku && rp.sku.toUpperCase() === sp.sku.toUpperCase()))) {
              rawList.push(sp);
            }
          });
        }

        const formatted: Product[] = rawList.map((p: any) => {
          const catName = p.category?.name || p.specifications?.Category || p.category_name || p.category || "Accent Cabinets";
          const subcatSlug = p.category?.slug || p.specifications?.Subcategory || p.subcategory || "accent-cabinets";
          const dept = p.category?.department || p.department || p.specifications?.Department || "furnishing";
          const dim = p.specifications?.Dimensions || p.specifications?.Dimension || p.dimensions || p.dimension || '30 x 14 x 30 in';
          const mat = p.specifications?.Material || p.material || "Solid Wood · Handcrafted";
          const fin = p.specifications?.Finish || p.finish || "Natural Satin Finish";
          const img = (p.images && p.images[0]) || p.image || "/assets/images/logo.png";

          return {
            id: p.id,
            sku: p.sku || p.code || "",
            name: p.name,
            category: catName,
            dimension: dim,
            dimensions: dim,
            material: mat,
            finish: fin,
            moq: p.moq || 5,
            description: p.description || "",
            image: img,
            department: dept,
            subcategory: subcatSlug,
            subcatTitle: catName,
          };
        });

        setCustomProducts(formatted);
      } catch (err) {
        console.warn("Could not fetch products from Supabase, using local fallback:", err);
      }
    };

    syncAdminData();
    window.addEventListener("fhd_categories_updated", syncAdminData);
    window.addEventListener("fhd_products_updated", syncAdminData);
    return () => {
      window.removeEventListener("fhd_categories_updated", syncAdminData);
      window.removeEventListener("fhd_products_updated", syncAdminData);
    };
  }, []);

  const [filterDrawerOpen, setFilterDrawerOpen] = useState(false);
  const [modalProduct, setModalProduct] = useState<Product | null>(null);
  const [modalQty, setModalQty] = useState<number>(5);
  const [favorites, setFavorites] = useState<string[]>([]);
  const [addedNotice, setAddedNotice] = useState<string | null>(null);

  // Sync favorites from localStorage
  useEffect(() => {
    try {
      const favs = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      setFavorites(Array.isArray(favs) ? favs : []);
    } catch {
      setFavorites([]);
    }
  }, []);

  const toggleFavorite = (skuOrCode: string) => {
    try {
      const favs = JSON.parse(localStorage.getItem("fhd_favorites") || "[]");
      let updated: string[];
      if (favs.includes(skuOrCode)) {
        updated = favs.filter((c: string) => c !== skuOrCode);
      } else {
        updated = [...favs, skuOrCode];
      }
      localStorage.setItem("fhd_favorites", JSON.stringify(updated));
      localStorage.setItem("fhd_favourites", JSON.stringify(updated));
      setFavorites(updated);
      window.dispatchEvent(new Event("fhd_favorites_updated"));

      const supabase = createClient();
      supabase.auth.getSession().then(({ data: { session } }) => {
        if (session?.user) {
          supabase.auth.updateUser({
            data: { wishlist: updated },
          });
        }
      });
    } catch (e) {
      console.error(e);
    }
  };

  const addToCart = (product: Product, quantity?: number) => {
    const qty = quantity && quantity > 0 ? quantity : product.moq || 5;
    try {
      const cart = JSON.parse(localStorage.getItem("fhd_cart") || "[]");
      const targetSku = product.sku || product.code;
      const existing = cart.find((i: any) => i.code === targetSku || i.sku === targetSku);
      if (existing) {
        existing.quantity = (existing.quantity || 0) + qty;
      } else {
        cart.push({
          id: product.id,
          code: targetSku,
          sku: targetSku,
          name: product.name,
          category: product.category,
          dimensions: product.dimension || product.dimensions,
          dimension: product.dimension || product.dimensions,
          material: product.material,
          finish: product.finish,
          moq: product.moq,
          image: product.image,
          quantity: qty,
          price: "Inquire / Trade",
        });
      }
      localStorage.setItem("fhd_cart", JSON.stringify(cart));
      window.dispatchEvent(new Event("fhd_cart_updated"));
      setAddedNotice(`Added ${qty} × ${targetSku} to Cart!`);
      setTimeout(() => setAddedNotice(null), 3500);
    } catch (e) {
      console.error(e);
    }
  };

  // Sync initial query params
  useEffect(() => {
    if (searchParams) {
      const subcat = searchParams.get("subcat");
      const cat = searchParams.get("category");
      const dept = searchParams.get("dept") || searchParams.get("type");
      const material = searchParams.get("material");
      const finish = searchParams.get("finish");
      const moq = searchParams.get("moq");
      const q = searchParams.get("search") || searchParams.get("q");

      if (cat) {
        setSelectedCategory(cat);
      } else if (subcat) {
        const found = BASE_CATEGORIES.find((c) => c.slug === subcat);
        setSelectedCategory(found ? found.label : subcat);
      } else {
        setSelectedCategory("all");
      }
      if (dept) {
        setSelectedDept(dept);
      } else {
        setSelectedDept("furnishing");
      }
      if (material) setSelectedMaterial(material);
      if (finish) setSelectedFinish(finish);
      if (moq) setSelectedMoq(moq);
      if (q) setSearchQuery(q);
    }
  }, [searchParams]);

  const allProducts: Product[] = useMemo(() => {
    const base = (allProductsData as Product[]) || [];
    if (!customProducts.length) return base;

    // Deduplicate: custom/admin products override base by SKU or ID
    const map = new Map<string, Product>();
    base.forEach((p) => {
      const key = (p.sku || p.code || p.id).toUpperCase();
      map.set(key, p);
    });
    customProducts.forEach((p) => {
      const key = (p.sku || p.code || p.id).toUpperCase();
      map.set(key, p);
    });
    return Array.from(map.values());
  }, [customProducts]);

  const activeCategories = useMemo(() => {
    // Read user-deleted categories so deleted categories are never shown
    const deletedSlugs = new Set<string>();
    try {
      const storedDeleted = localStorage.getItem("fhd_deleted_categories");
      if (storedDeleted) {
        const parsed = JSON.parse(storedDeleted);
        if (Array.isArray(parsed)) {
          parsed.forEach((s) => deletedSlugs.add(String(s).toLowerCase()));
        }
      }
    } catch {}

    // Read department overrides
    let localDepts: Record<string, string> = {};
    try {
      const storedDepts = localStorage.getItem("fhd_category_departments");
      if (storedDepts) localDepts = JSON.parse(storedDepts);
    } catch {}

    const combined: { slug: string; label: string; department: string }[] = [];

    if (customCategories && customCategories.length > 0) {
      customCategories.forEach((cc: any) => {
        const slug = (cc.slug || "").toLowerCase();
        const id = (cc.id || "").toLowerCase();
        if (!deletedSlugs.has(slug) && !deletedSlugs.has(id)) {
          const dept = localDepts[id] || localDepts[slug] || cc.department || "furnishing";
          combined.push({
            slug: cc.slug,
            label: cc.name || cc.label,
            department: dept,
          });
        }
      });
    } else {
      BASE_CATEGORIES.forEach((b) => {
        if (!deletedSlugs.has(b.slug.toLowerCase())) {
          const dept = localDepts[b.slug] || b.department || "furnishing";
          combined.push({ ...b, department: dept });
        }
      });
    }

    // Filter by selected department if not "all"
    let filtered = combined;
    if (selectedDept !== "all") {
      filtered = combined.filter((c) => c.department === selectedDept);
    }

    return filtered.map((cat) => {
      const catTarget = cat.label.toLowerCase().trim();
      const slugTarget = cat.slug.toLowerCase().trim();
      const count = allProducts.filter(
        (p) =>
          (p.department === cat.department || selectedDept === "all") &&
          ((p.category && (p.category.toLowerCase() === catTarget || p.category.toLowerCase().includes(catTarget))) ||
            (p.subcategory && (p.subcategory.toLowerCase() === slugTarget || p.subcategory.toLowerCase().includes(slugTarget))) ||
            (p.subcatTitle && (p.subcatTitle.toLowerCase() === catTarget || p.subcatTitle.toLowerCase().includes(catTarget))))
      ).length;
      return {
        ...cat,
        count,
      };
    });
  }, [customCategories, selectedDept, allProducts]);

  // Keep selectedCategory aligned when department changes
  useEffect(() => {
    if (selectedCategory !== "all" && activeCategories.length > 0) {
      const exists = activeCategories.some(
        (c) =>
          c.label.toLowerCase() === selectedCategory.toLowerCase() ||
          c.slug.toLowerCase() === selectedCategory.toLowerCase()
      );
      if (!exists) {
        setSelectedCategory("all");
      }
    }
  }, [selectedDept, activeCategories, selectedCategory]);

  const deptProductCount = useMemo(() => {
    if (selectedDept === "all") return allProducts.length;
    return allProducts.filter((p) => p.department === selectedDept).length;
  }, [allProducts, selectedDept]);

  // Dynamic MOQ options and counts based on current department
  const dynamicMoq = useMemo(() => {
    const baseList = selectedDept === "all"
      ? allProducts
      : allProducts.filter((p) => p.department === selectedDept);
    
    return {
      all: baseList.length,
      moq5: baseList.filter((p) => (p.moq || 5) <= 5).length,
      moq10: baseList.filter((p) => (p.moq || 5) === 10).length,
      moq25: baseList.filter((p) => (p.moq || 5) >= 25).length,
    };
  }, [allProducts, selectedDept]);

  // Dynamic Materials based on current department
  const dynamicMaterials = useMemo(() => {
    const baseList = selectedDept === "all"
      ? allProducts
      : allProducts.filter((p) => p.department === selectedDept);
    
    const map = new Map<string, number>();
    baseList.forEach((p) => {
      const mat = p.material || "Solid Wood · Handcrafted";
      map.set(mat, (map.get(mat) || 0) + 1);
    });

    return Array.from(map.entries()).map(([label, count]) => ({ label, count }));
  }, [allProducts, selectedDept]);

  // Dynamic Finishes based on current department
  const dynamicFinishes = useMemo(() => {
    const baseList = selectedDept === "all"
      ? allProducts
      : allProducts.filter((p) => p.department === selectedDept);
    
    const map = new Map<string, number>();
    baseList.forEach((p) => {
      const fin = p.finish || "Natural Satin Finish";
      map.set(fin, (map.get(fin) || 0) + 1);
    });

    return Array.from(map.entries()).map(([label, count]) => ({ label, count }));
  }, [allProducts, selectedDept]);

  // Filter & Sort
  const filteredProducts = useMemo(() => {
    let list = [...allProducts];

    // Department filter
    if (selectedDept !== "all") {
      list = list.filter((p) => p.department === selectedDept);
    }

    // Uniform Category filter
    if (selectedCategory !== "all") {
      const catTarget = selectedCategory.toLowerCase().trim();
      list = list.filter(
        (p) =>
          (p.category && (p.category.toLowerCase() === catTarget || p.category.toLowerCase().includes(catTarget))) ||
          (p.subcategory && (p.subcategory.toLowerCase() === catTarget || p.subcategory.toLowerCase().includes(catTarget))) ||
          (p.subcatTitle && (p.subcatTitle.toLowerCase() === catTarget || p.subcatTitle.toLowerCase().includes(catTarget)))
      );
    }

    // Material filter
    if (selectedMaterial !== "all") {
      const matTarget = selectedMaterial.toLowerCase().trim();
      list = list.filter((p) => p.material && p.material.toLowerCase().includes(matTarget));
    }

    // Finish filter
    if (selectedFinish !== "all") {
      const finTarget = selectedFinish.toLowerCase().trim();
      list = list.filter((p) => p.finish && p.finish.toLowerCase().includes(finTarget));
    }

    // MOQ filter
    if (selectedMoq !== "all") {
      if (selectedMoq === "5") {
        list = list.filter((p) => (p.moq || 5) <= 5);
      } else if (selectedMoq === "10") {
        list = list.filter((p) => (p.moq || 5) === 10);
      } else if (selectedMoq === "25") {
        list = list.filter((p) => (p.moq || 5) >= 25);
      }
    }

    // Search query
    if (searchQuery.trim()) {
      const q = searchQuery.toLowerCase().trim();
      list = list.filter(
        (p) =>
          p.sku.toLowerCase().includes(q) ||
          (p.code && p.code.toLowerCase().includes(q)) ||
          p.name.toLowerCase().includes(q) ||
          p.category.toLowerCase().includes(q) ||
          (p.dimension && p.dimension.toLowerCase().includes(q)) ||
          (p.dimensions && p.dimensions.toLowerCase().includes(q)) ||
          (p.material && p.material.toLowerCase().includes(q)) ||
          (p.finish && p.finish.toLowerCase().includes(q)) ||
          (p.description && p.description.toLowerCase().includes(q))
      );
    }

    // Sort
    if (sortOption === "sku-asc") {
      list.sort((a, b) => (a.sku || a.code || "").localeCompare(b.sku || b.code || ""));
    } else if (sortOption === "sku-desc") {
      list.sort((a, b) => (b.sku || b.code || "").localeCompare(a.sku || a.code || ""));
    } else if (sortOption === "moq-asc") {
      list.sort((a, b) => (a.moq || 5) - (b.moq || 5));
    } else if (sortOption === "moq-desc") {
      list.sort((a, b) => (b.moq || 5) - (a.moq || 5));
    } else if (sortOption === "dim-asc") {
      list.sort((a, b) =>
        (a.dimension || a.dimensions || "").localeCompare(b.dimension || b.dimensions || "")
      );
    } else if (sortOption === "category-asc") {
      list.sort((a, b) => a.category.localeCompare(b.category));
    }

    return list;
  }, [
    allProducts,
    selectedDept,
    selectedCategory,
    selectedMaterial,
    selectedFinish,
    selectedMoq,
    searchQuery,
    sortOption,
  ]);

  const totalCount = filteredProducts.length;
  const totalPages = Math.ceil(totalCount / itemsPerPage) || 1;
  const startIndex = (currentPage - 1) * itemsPerPage;
  const visibleProducts = filteredProducts.slice(startIndex, startIndex + itemsPerPage);

  const scrollToFirstItemSection = () => {
    if (typeof window === "undefined") return;
    setTimeout(() => {
      const target =
        document.getElementById("firstItemSection") ||
        document.getElementById("productGrid") ||
        document.querySelector(".product-grid") ||
        document.querySelector(".main-catalogue-view") ||
        document.getElementById("catalogueTopAnchor");

      if (target) {
        // Sticky header (~82px) + Sticky ribbon (~48px) + breathing gap (~14px) = ~144px
        const headerOffset = 144;
        const rect = target.getBoundingClientRect();
        const targetTop = rect.top + window.pageYOffset - headerOffset;

        window.scrollTo({
          top: Math.max(0, targetTop),
          behavior: "smooth",
        });
      }
    }, 60);
  };

  const scrollToCatalogueTop = () => {
    scrollToFirstItemSection();
  };

  const handleDeptSelect = (dept: string) => {
    setSelectedDept(dept);
    setSelectedCategory("all");
    setCurrentPage(1);
    scrollToCatalogueTop();
  };

  const handleCategorySelect = (catName: string) => {
    setSelectedCategory(catName);
    setCurrentPage(1);
    scrollToCatalogueTop();
  };

  const handleMaterialSelect = (mat: string) => {
    setSelectedMaterial(mat);
    setCurrentPage(1);
    scrollToCatalogueTop();
  };

  const handleFinishSelect = (fin: string) => {
    setSelectedFinish(fin);
    setCurrentPage(1);
    scrollToCatalogueTop();
  };

  const handleMoqSelect = (m: string) => {
    setSelectedMoq(m);
    setCurrentPage(1);
    scrollToCatalogueTop();
  };

  const handleSortChange = (sort: string) => {
    setSortOption(sort);
    setCurrentPage(1);
    scrollToCatalogueTop();
  };

  const resetFilters = () => {
    setSelectedCategory("all");
    setSelectedMaterial("all");
    setSelectedFinish("all");
    setSelectedMoq("all");
    setSearchQuery("");
    setSortOption("featured");
    setCurrentPage(1);
    setFilterDrawerOpen(false);
    scrollToCatalogueTop();
  };

  const handleShowcaseClick = (card: { actionType: string; linkUrl?: string }) => {
    if (card.actionType === "featured") {
      handleSortChange("featured");
      setSelectedCategory("all");
      setSelectedDept("furnishing");
      scrollToCatalogueTop();
    } else if (card.actionType === "moq-asc") {
      handleSortChange("moq-asc");
      setSelectedCategory("all");
      scrollToCatalogueTop();
    } else if (card.actionType === "holiday") {
      setSelectedDept("accessories");
      setSelectedCategory("Holiday & Festive");
      setCurrentPage(1);
      scrollToCatalogueTop();
    } else if (card.actionType === "sku-desc") {
      handleSortChange("sku-desc");
      setSelectedCategory("all");
      scrollToCatalogueTop();
    } else if (card.actionType === "link" && card.linkUrl) {
      if (card.linkUrl.startsWith("/")) {
        router.push(card.linkUrl);
      } else {
        window.location.href = card.linkUrl;
      }
    } else {
      handleSortChange("featured");
      scrollToCatalogueTop();
    }
  };

  const getImgSrc = (img?: string) => {
    if (!img) return "/assets/images/logo.png";
    if (img.startsWith("http://") || img.startsWith("https://")) return img;
    if (img.startsWith("/http://") || img.startsWith("/https://")) return img.substring(1);
    return img.startsWith("/") ? img : "/" + img;
  };

  return (
    <>
      <Header activePage="catalogue" />

      {/* Floating Added Notice */}
      {addedNotice && (
        <div
          style={{
            position: "fixed",
            bottom: "24px",
            right: "24px",
            background: "#2B2520",
            color: "#FAF8F5",
            padding: "12px 24px",
            borderRadius: "6px",
            boxShadow: "0 4px 20px rgba(0,0,0,0.25)",
            zIndex: 9999,
            fontSize: "13px",
            fontWeight: 600,
            display: "flex",
            alignItems: "center",
            gap: "8px",
          }}
        >
          <span style={{ color: "#7C8C6E" }}>✓</span>
          <span>{addedNotice}</span>
          <Link href="/cart" style={{ color: "#7C8C6E", textDecoration: "underline", marginLeft: "8px" }}>
            View Cart &rarr;
          </Link>
        </div>
      )}

      {/* Mobile Live Search Bar */}
      <div className="mobile-search-bar">
        <div className="nav-center-search" style={{ display: "block" }}>
          <svg
            width="16"
            height="16"
            viewBox="0 0 24 24"
            fill="none"
            stroke="currentColor"
            strokeWidth="2"
            strokeLinecap="round"
            strokeLinejoin="round"
          >
            <circle cx="11" cy="11" r="8"></circle>
            <line x1="21" y1="21" x2="16.65" y2="16.65"></line>
          </svg>
          <input
            type="text"
            value={searchQuery}
            onChange={(e) => {
              setSearchQuery(e.target.value);
              setCurrentPage(1);
            }}
            placeholder="Search by SKU, Category, Dimensions, Material..."
          />
        </div>
      </div>

      {/* DEPARTMENT NAVIGATION RIBBON */}
      <nav className="category-ribbon">
        <div className="category-ribbon-inner">
          {DEPARTMENTS.map((dept) => {
            const isActive = selectedDept === dept.slug;
            return (
              <Link
                key={dept.slug}
                href={dept.href}
                className={`ribbon-item ${isActive ? "active" : ""}`}
                onClick={(e) => {
                  e.preventDefault();
                  router.push(dept.href, { scroll: false });
                  setSelectedDept(dept.slug);
                  setSelectedCategory("all");
                  setCurrentPage(1);
                  scrollToFirstItemSection();
                }}
              >
                {dept.label}
              </Link>
            );
          })}
        </div>
      </nav>

      {/* HERO FEATURE SHOWCASE */}
      <section className="feature-showcase">
        <div className="showcase-grid">
          {/* 1. Card 1 */}
          <div
            className="showcase-card"
            onClick={() => handleShowcaseClick(showcase.showcase1)}
            style={{ cursor: "pointer" }}
          >
            <div className="showcase-img-wrap">
              <img
                src={getImgSrc(showcase.showcase1.image)}
                alt={showcase.showcase1.title}
                onError={(e) => {
                  (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                }}
              />
            </div>
            <div className="showcase-content">
              <h4>{showcase.showcase1.title}</h4>
              <span>{showcase.showcase1.subtitle}</span>
            </div>
          </div>

          {/* 2. Card 2 */}
          <div
            className="showcase-card"
            onClick={() => handleShowcaseClick(showcase.showcase2)}
            style={{ cursor: "pointer" }}
          >
            <div className="showcase-img-wrap">
              <img
                src={getImgSrc(showcase.showcase2.image)}
                alt={showcase.showcase2.title}
                onError={(e) => {
                  (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                }}
              />
            </div>
            <div className="showcase-content">
              <h4>{showcase.showcase2.title}</h4>
              <span>{showcase.showcase2.subtitle}</span>
            </div>
          </div>

          {/* 3. Card 3 */}
          <div
            className="showcase-card"
            onClick={() => handleShowcaseClick(showcase.showcase3)}
            style={{ cursor: "pointer" }}
          >
            <div className="showcase-img-wrap">
              <img
                src={getImgSrc(showcase.showcase3.image)}
                alt={showcase.showcase3.title}
                onError={(e) => {
                  (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                }}
              />
            </div>
            <div className="showcase-content">
              <h4>{showcase.showcase3.title}</h4>
              <span>{showcase.showcase3.subtitle}</span>
            </div>
          </div>

          {/* 4. Card 4 */}
          <div
            className="showcase-card"
            onClick={() => handleShowcaseClick(showcase.showcase4)}
            style={{ cursor: "pointer" }}
          >
            <div className="showcase-img-wrap">
              <img
                src={getImgSrc(showcase.showcase4.image)}
                alt={showcase.showcase4.title}
                onError={(e) => {
                  (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                }}
              />
            </div>
            <div className="showcase-content">
              <h4>{showcase.showcase4.title}</h4>
              <span>{showcase.showcase4.subtitle}</span>
            </div>
          </div>
        </div>
      </section>

      {/* Filter Drawer Backdrop Overlay */}
      {filterDrawerOpen && (
        <div className="filter-drawer-overlay open active" onClick={() => setFilterDrawerOpen(false)} />
      )}

      {/* Anchor for scroll-up on filter click */}
      <div id="catalogueTopAnchor" style={{ scrollMarginTop: "90px" }} />

      {/* MAIN CATALOGUE SECTION */}
      <div className="catalogue-container">
        {/* Mobile Filter & Sort Drawer Toggle */}
        <div className="mobile-filter-header">
          <button type="button" className="btn-toggle-mobile-filters" onClick={() => setFilterDrawerOpen(true)}>
            <span>
              <svg
                width="15"
                height="15"
                viewBox="0 0 24 24"
                fill="none"
                stroke="currentColor"
                strokeWidth="2.5"
                style={{ verticalAlign: "middle", marginRight: "6px" }}
              >
                <polygon points="22 3 2 3 10 12.46 10 19 14 21 14 12.46 22 3" />
              </svg>
              Filter &amp; Refine
            </span>
            <span style={{ fontSize: "0.76rem", fontWeight: 700, color: "var(--color-sage-dark)" }}>
              Adjust &rarr;
            </span>
          </button>
        </div>

        {/* LEFT FILTER SIDEBAR */}
        <aside className={`filter-sidebar ${filterDrawerOpen ? "open" : ""}`} id="filterSidebar">
          <div className="filter-drawer-header">
            <div className="filter-drawer-title-wrap">
              <h3>Catalogue Filters</h3>
            </div>
            <div style={{ display: "flex", alignItems: "center", gap: "10px" }}>
              <button type="button" className="btn-clear-filters" onClick={resetFilters}>
                Reset All
              </button>
              <button
                type="button"
                className="btn-close-filter-drawer"
                onClick={() => setFilterDrawerOpen(false)}
                aria-label="Close filters"
              >
                &times;
              </button>
            </div>
          </div>

          <div className="filter-drawer-body">
            {/* Availability Toggles */}
            <div className="toggle-group">
              <label className="toggle-label">
                <span>In Stock / Ready to Ship</span>
                <span className="switch">
                  <input
                    type="checkbox"
                    checked={inStockOnly}
                    onChange={(e) => setInStockOnly(e.target.checked)}
                  />
                  <span className="slider"></span>
                </span>
              </label>
              <label className="toggle-label">
                <span>Container Load (HC40)</span>
                <span className="switch">
                  <input
                    type="checkbox"
                    checked={containerOnly}
                    onChange={(e) => setContainerOnly(e.target.checked)}
                  />
                  <span className="slider"></span>
                </span>
              </label>
            </div>

            {/* Sort Filter */}
            <div className="filter-section">
              <div className="filter-section-title">Sort By</div>
              <ul className="radio-list">
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="sortOption"
                      value="featured"
                      checked={sortOption === "featured"}
                      onChange={() => handleSortChange("featured")}
                    />{" "}
                    Featured
                  </label>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="sortOption"
                      value="sku-asc"
                      checked={sortOption === "sku-asc"}
                      onChange={() => handleSortChange("sku-asc")}
                    />{" "}
                    SKU Code (A – Z)
                  </label>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="sortOption"
                      value="moq-asc"
                      checked={sortOption === "moq-asc"}
                      onChange={() => handleSortChange("moq-asc")}
                    />{" "}
                    MOQ (Lowest first)
                  </label>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="sortOption"
                      value="moq-desc"
                      checked={sortOption === "moq-desc"}
                      onChange={() => handleSortChange("moq-desc")}
                    />{" "}
                    MOQ (Volume pack first)
                  </label>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="sortOption"
                      value="category-asc"
                      checked={sortOption === "category-asc"}
                      onChange={() => handleSortChange("category-asc")}
                    />{" "}
                    Category (A – Z)
                  </label>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="sortOption"
                      value="dim-asc"
                      checked={sortOption === "dim-asc"}
                      onChange={() => handleSortChange("dim-asc")}
                    />{" "}
                    Dimensions (Compact first)
                  </label>
                </li>
              </ul>
            </div>

            {/* Category Filter */}
            <div className="filter-section">
              <div className="filter-section-title">Category ({activeCategories.length})</div>
              <ul className="radio-list">
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="categoryOption"
                      value="all"
                      checked={selectedCategory === "all"}
                      onChange={() => handleCategorySelect("all")}
                    />{" "}
                    All Categories
                  </label>
                  <span className="filter-count">{deptProductCount}</span>
                </li>
                {activeCategories.map((cat) => (
                  <li key={cat.slug} className="filter-option">
                    <label>
                      <input
                        type="radio"
                        name="categoryOption"
                        value={cat.label}
                        checked={selectedCategory === cat.label}
                        onChange={() => handleCategorySelect(cat.label)}
                      />{" "}
                      {cat.label}
                    </label>
                    <span className="filter-count">{cat.count}</span>
                  </li>
                ))}
              </ul>
            </div>

            {/* Minimum Order Quantity (MOQ) */}
            <div className="filter-section">
              <div className="filter-section-title">Minimum Order Quantity (MOQ)</div>
              <ul className="radio-list">
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="moqOption"
                      value="all"
                      checked={selectedMoq === "all"}
                      onChange={() => handleMoqSelect("all")}
                    />{" "}
                    All MOQs
                  </label>
                  <span className="filter-count">{dynamicMoq.all}</span>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="moqOption"
                      value="5"
                      checked={selectedMoq === "5"}
                      onChange={() => handleMoqSelect("5")}
                    />{" "}
                    MOQ 5 pcs (Large Tables &amp; Cabinets)
                  </label>
                  <span className="filter-count">{dynamicMoq.moq5}</span>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="moqOption"
                      value="10"
                      checked={selectedMoq === "10"}
                      onChange={() => handleMoqSelect("10")}
                    />{" "}
                    MOQ 10 pcs (Side &amp; Bedside Tables)
                  </label>
                  <span className="filter-count">{dynamicMoq.moq10}</span>
                </li>
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="moqOption"
                      value="25"
                      checked={selectedMoq === "25"}
                      onChange={() => handleMoqSelect("25")}
                    />{" "}
                    MOQ 25+ pcs (Photo Frames &amp; Accents)
                  </label>
                  <span className="filter-count">{dynamicMoq.moq25}</span>
                </li>
              </ul>
            </div>

            {/* Material Filter */}
            <div className="filter-section">
              <div className="filter-section-title">Material</div>
              <ul className="radio-list">
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="materialOption"
                      value="all"
                      checked={selectedMaterial === "all"}
                      onChange={() => handleMaterialSelect("all")}
                    />{" "}
                    All Materials
                  </label>
                  <span className="filter-count">{deptProductCount}</span>
                </li>
                {dynamicMaterials.map((mat) => (
                  <li key={mat.label} className="filter-option">
                    <label>
                      <input
                        type="radio"
                        name="materialOption"
                        value={mat.label}
                        checked={selectedMaterial === mat.label}
                        onChange={() => handleMaterialSelect(mat.label)}
                      />{" "}
                      {mat.label}
                    </label>
                    <span className="filter-count">{mat.count}</span>
                  </li>
                ))}
              </ul>
            </div>

            {/* Finish Filter */}
            <div className="filter-section">
              <div className="filter-section-title">Finish</div>
              <ul className="radio-list">
                <li className="filter-option">
                  <label>
                    <input
                      type="radio"
                      name="finishOption"
                      value="all"
                      checked={selectedFinish === "all"}
                      onChange={() => handleFinishSelect("all")}
                    />{" "}
                    All Finishes
                  </label>
                  <span className="filter-count">{deptProductCount}</span>
                </li>
                {dynamicFinishes.map((fin) => (
                  <li key={fin.label} className="filter-option">
                    <label>
                      <input
                        type="radio"
                        name="finishOption"
                        value={fin.label}
                        checked={selectedFinish === fin.label}
                        onChange={() => handleFinishSelect(fin.label)}
                      />{" "}
                      {fin.label}
                    </label>
                    <span className="filter-count">{fin.count}</span>
                  </li>
                ))}
              </ul>
            </div>
          </div>

          <div className="filter-drawer-footer">
            <button type="button" className="btn-drawer-reset" onClick={resetFilters}>
              Reset All
            </button>
            <button
              type="button"
              className="btn-drawer-apply"
              onClick={() => setFilterDrawerOpen(false)}
            >
              Apply Filters
            </button>
          </div>
        </aside>

        {/* RIGHT MAIN PRODUCT GRID */}
        <main id="firstItemSection" className="main-catalogue-view" style={{ scrollMarginTop: "144px" }}>
          {/* Top info bar */}
          <div className="catalogue-top-bar">
            <div className="results-info">
              Showing{" "}
              <strong>
                {totalCount > 0 ? `${startIndex + 1}–${Math.min(startIndex + itemsPerPage, totalCount)}` : "0"}
              </strong>{" "}
              of <strong>{totalCount}</strong> products
            </div>

            <div className="view-controls">
              <label style={{ fontSize: "0.74rem", color: "var(--color-brown)" }}>Per page:</label>
              <select
                value={itemsPerPage}
                onChange={(e) => {
                  setItemsPerPage(Number(e.target.value));
                  setCurrentPage(1);
                }}
                className="items-per-page-select"
              >
                <option value={12}>12 items</option>
                <option value={24}>24 items</option>
                <option value={48}>48 items</option>
              </select>
            </div>
          </div>

          {/* Active filters tags bar */}
          {(selectedCategory !== "all" ||
            selectedMaterial !== "all" ||
            selectedFinish !== "all" ||
            selectedMoq !== "all" ||
            selectedDept !== "all" ||
            searchQuery) && (
            <div className="active-filters-bar" style={{ display: "flex", gap: "8px", flexWrap: "wrap", marginBottom: "16px" }}>
              {selectedCategory !== "all" && (
                <span className="filter-tag" onClick={() => setSelectedCategory("all")}>
                  Category: {selectedCategory} &times;
                </span>
              )}
              {selectedMaterial !== "all" && (
                <span className="filter-tag" onClick={() => setSelectedMaterial("all")}>
                  Material: {selectedMaterial} &times;
                </span>
              )}
              {selectedFinish !== "all" && (
                <span className="filter-tag" onClick={() => setSelectedFinish("all")}>
                  Finish: {selectedFinish} &times;
                </span>
              )}
              {selectedMoq !== "all" && (
                <span className="filter-tag" onClick={() => setSelectedMoq("all")}>
                  MOQ: {selectedMoq} pcs &times;
                </span>
              )}
              {selectedDept !== "all" && (
                <span className="filter-tag" onClick={() => setSelectedDept("all")}>
                  Dept: {selectedDept} &times;
                </span>
              )}
              {searchQuery && (
                <span className="filter-tag" onClick={() => setSearchQuery("")}>
                  Search: &ldquo;{searchQuery}&rdquo; &times;
                </span>
              )}
              <button
                type="button"
                onClick={resetFilters}
                style={{
                  background: "none",
                  border: "none",
                  fontSize: "12px",
                  color: "var(--color-sage-dark)",
                  cursor: "pointer",
                  textDecoration: "underline",
                }}
              >
                Clear all
              </button>
            </div>
          )}

          {/* Product Cards Grid - Clean & Minimal Matching Second Image */}
          {visibleProducts.length > 0 ? (
            <div className="product-grid" id="productGrid">
              {visibleProducts.map((p) => {
                const targetSku = p.sku || p.code || p.id || "";
                const isFav = favorites.includes(targetSku);
                return (
                  <article
                    key={targetSku || p.id}
                    className="product-card"
                  >
                    {/* Image wrap with hover zoom */}
                    <div
                      className="product-card-img-wrap"
                      onClick={() => router.push(`/products/${encodeURIComponent(targetSku)}`)}
                    >
                      <span className="product-badge-subcat">
                        {p.tag || p.subcatTitle || p.category}
                      </span>
                      <span className="product-badge-code">{targetSku}</span>
                      <button
                        type="button"
                        className={`btn-card-fav ${isFav ? "is-fav" : ""}`}
                        onClick={(e) => {
                          e.stopPropagation();
                          if (targetSku) toggleFavorite(targetSku);
                        }}
                        title={isFav ? "Saved in Favourites" : "Save to Favourites"}
                        aria-label="Favourite"
                      >
                        <svg
                          viewBox="0 0 24 24"
                          width="18"
                          height="18"
                          fill={isFav ? "#B83B3B" : "none"}
                          stroke={isFav ? "#B83B3B" : "currentColor"}
                          strokeWidth="2"
                        >
                          <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z" />
                        </svg>
                      </button>
                      <img
                        src={getImgSrc(p.image)}
                        alt={p.name}
                        loading="lazy"
                        onError={(e) => {
                          (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                        }}
                      />
                    </div>

                    {/* Card Body - Minimal & Clean Matching Image 2 */}
                    <div className="product-card-body">
                      <Link href={`/products/${encodeURIComponent(targetSku)}`}>
                        <h3 className="product-card-title">{p.name}</h3>
                      </Link>

                      <div className="product-dimensions-box">
                        <svg width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                          <rect x="3" y="3" width="18" height="18" rx="2" />
                          <line x1="3" y1="9" x2="21" y2="9" />
                          <line x1="9" y1="21" x2="9" y2="9" />
                        </svg>
                        <span>{p.dimension || p.dimensions}</span>
                      </div>

                      <div className="product-price-row">
                        <span className="product-price-val">$XXX</span>
                        <span className="product-price-note">TRADE / WHOLESALE</span>
                      </div>

                      <p className="product-card-desc">{p.description}</p>

                      <div className="product-card-footer">
                        <button
                          type="button"
                          className="btn-card-addcart"
                          onClick={(e) => {
                            e.stopPropagation();
                            addToCart(p, p.moq || 5);
                          }}
                        >
                          <svg width="13" height="13" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2.2">
                            <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
                            <line x1="3" y1="6" x2="21" y2="6" />
                            <path d="M16 10a4 4 0 0 1-8 0" />
                          </svg>
                          ADD TO CART
                        </button>
                        <Link
                          href={`/contact?subject=Inquiry%20for%20${encodeURIComponent(targetSku)}`}
                          className="btn-card-inquire"
                          onClick={(e) => e.stopPropagation()}
                        >
                          INQUIRE
                        </Link>
                      </div>
                    </div>
                  </article>
                );
              })}
            </div>
          ) : (
            <div className="empty-state" style={{ display: "block" }}>
              <h3>No matching products found</h3>
              <p>Try searching for a different keyword or resetting your filters to see our full catalogue.</p>
              <button className="btn-contact-nav" onClick={resetFilters}>
                Reset All Filters
              </button>
            </div>
          )}

          {/* Pagination */}
          {totalPages > 1 && (
            <div className="pagination-bar">
              <button
                type="button"
                className="pagination-nav-btn"
                disabled={currentPage === 1}
                onClick={() => {
                  setCurrentPage((p) => Math.max(1, p - 1));
                  scrollToCatalogueTop();
                }}
                aria-label="Previous page"
              >
                &larr; Prev
              </button>
              {(() => {
                const getPaginationItems = (current: number, total: number): (number | string)[] => {
                  if (total <= 7) {
                    return Array.from({ length: total }, (_, i) => i + 1);
                  }
                  if (current <= 4) {
                    return [1, 2, 3, 4, 5, "...", total];
                  }
                  if (current >= total - 3) {
                    return [1, "...", total - 4, total - 3, total - 2, total - 1, total];
                  }
                  return [1, "...", current - 1, current, current + 1, "...", total];
                };

                return getPaginationItems(currentPage, totalPages).map((item, idx) => {
                  if (item === "...") {
                    return (
                      <span key={`ellipsis-${idx}`} className="pagination-ellipsis">
                        &hellip;
                      </span>
                    );
                  }
                  const pageNum = Number(item);
                  const isActive = currentPage === pageNum;
                  return (
                    <button
                      key={pageNum}
                      type="button"
                      className={`pagination-num-btn ${isActive ? "active" : ""}`}
                      onClick={() => {
                        setCurrentPage(pageNum);
                        scrollToCatalogueTop();
                      }}
                      aria-label={`Page ${pageNum}`}
                      aria-current={isActive ? "page" : undefined}
                    >
                      {pageNum}
                    </button>
                  );
                });
              })()}
              <button
                type="button"
                className="pagination-nav-btn"
                disabled={currentPage === totalPages}
                onClick={() => {
                  setCurrentPage((p) => Math.min(totalPages, p + 1));
                  scrollToCatalogueTop();
                }}
                aria-label="Next page"
              >
                Next &rarr;
              </button>
            </div>
          )}
        </main>
      </div>

      {/* CURATED LIVING BANNER */}
      <section className="curated-banner">
        <h2>
          Heirloom Quality &middot; <em>Handcrafted Solid Wood</em>
        </h2>
        <p>
          Every piece in our collection is masterfully crafted with generational joinery techniques, sustainably sourced
          hardwoods, and bespoke finish customizability tailored for wholesale and retail elegance.
        </p>
        <Link href="/contact?subject=wholesale" className="btn-banner-action">
          Request Container Catalogue &amp; Pricing
        </Link>
      </section>

      {/* QUICK VIEW MODAL WITH 6-POINT UNIFORM SPECS */}
      {modalProduct && (
        <div
          className="modal-backdrop active"
          onClick={(e) => {
            if (e.target === e.currentTarget) setModalProduct(null);
          }}
        >
          <div className="modal-box">
            <button className="btn-modal-close" onClick={() => setModalProduct(null)} aria-label="Close modal">
              &times;
            </button>
            <div className="modal-img-wrap">
              <img
                src={getImgSrc(modalProduct.image)}
                alt={modalProduct.name}
                onError={(e) => {
                  (e.target as HTMLImageElement).src = "/assets/images/logo.png";
                }}
              />
            </div>
            <div className="modal-details">
              <div style={{ display: "flex", gap: "8px", alignItems: "center", marginBottom: "8px" }}>
                <span className="modal-badge">{modalProduct.category}</span>
                <span
                  style={{
                    fontSize: "0.68rem",
                    fontWeight: 700,
                    padding: "3px 8px",
                    borderRadius: "3px",
                    background: "var(--color-dark)",
                    color: "#FFFFFF",
                    fontFamily: "var(--font-sans)",
                    letterSpacing: "0.08em",
                  }}
                >
                  SKU: {modalProduct.sku || modalProduct.code}
                </span>
              </div>
              <h2 className="modal-title">{modalProduct.name}</h2>

              <div className="modal-price-box">
                <span className="modal-price-val">$XXX</span>
                <span className="modal-price-note">Trade / Wholesale Pricing</span>
              </div>

              {/* 6-POINT UNIFORM SPECIFICATIONS TABLE */}
              <div className="modal-specs-table">
                <div className="spec-row">
                  <span>1. SKU:</span>
                  <span style={{ fontFamily: "monospace", letterSpacing: "0.05em" }}>
                    {modalProduct.sku || modalProduct.code}
                  </span>
                </div>
                <div className="spec-row">
                  <span>2. Category:</span>
                  <span>{modalProduct.category}</span>
                </div>
                <div className="spec-row">
                  <span>3. Dimension:</span>
                  <span>{modalProduct.dimension || modalProduct.dimensions}</span>
                </div>
                <div className="spec-row">
                  <span>4. Material:</span>
                  <span>{modalProduct.material}</span>
                </div>
                <div className="spec-row">
                  <span>5. Finish:</span>
                  <span>{modalProduct.finish}</span>
                </div>
                <div className="spec-row">
                  <span>6. Minimum Order Quantity (MOQ):</span>
                  <span style={{ color: "var(--color-sage-dark)", fontWeight: 700 }}>
                    {modalProduct.moq} pcs (Wholesale Pack)
                  </span>
                </div>
              </div>

              <p className="modal-desc">{modalProduct.description}</p>

              {/* Wholesale Quantity Stepper */}
              <div className="modal-qty-container">
                <span className="modal-qty-label">Order Quantity:</span>
                <div className="modal-qty-stepper">
                  <button
                    type="button"
                    className="btn-qty-step"
                    disabled={modalQty <= (modalProduct.moq || 1)}
                    onClick={() => setModalQty((q) => Math.max(modalProduct.moq || 1, q - 1))}
                    aria-label="Decrease quantity"
                  >
                    &minus;
                  </button>
                  <input
                    type="number"
                    className="modal-qty-input"
                    value={modalQty}
                    min={modalProduct.moq || 1}
                    onChange={(e) => setModalQty(Math.max(1, parseInt(e.target.value) || 1))}
                    aria-label="Order quantity"
                  />
                  <button
                    type="button"
                    className="btn-qty-step"
                    onClick={() => setModalQty((q) => q + 1)}
                    aria-label="Increase quantity"
                  >
                    +
                  </button>
                </div>
                <span style={{ fontSize: "0.72rem", color: "var(--color-brown)", fontWeight: 600 }}>units</span>
              </div>
              <div className="modal-moq-hint">
                &bull; Wholesale order minimum is {modalProduct.moq} units for container/freight consolidation.
              </div>

              <div className="modal-actions">
                <button
                  type="button"
                  className="btn-modal-buynow"
                  onClick={() => {
                    addToCart(modalProduct, modalQty);
                    setModalProduct(null);
                  }}
                >
                  <svg width="15" height="15" viewBox="0 0 24 24" fill="none" stroke="currentColor" strokeWidth="2">
                    <path d="M6 2L3 6v14a2 2 0 0 0 2 2h14a2 2 0 0 0 2-2V6l-3-4z" />
                    <line x1="3" y1="6" x2="21" y2="6" />
                    <path d="M16 10a4 4 0 0 1-8 0" />
                  </svg>
                  Add {modalQty} units to Cart
                </button>
                <button
                  type="button"
                  className="btn-modal-fav"
                  onClick={() => toggleFavorite(modalProduct.sku || modalProduct.code || "")}
                  title="Save to Favourites"
                >
                  <svg
                    width="16"
                    height="16"
                    viewBox="0 0 24 24"
                    fill={favorites.includes(modalProduct.sku || modalProduct.code || "") ? "var(--color-dark)" : "none"}
                    stroke="currentColor"
                    strokeWidth="2"
                  >
                    <path d="M20.84 4.61a5.5 5.5 0 0 0-7.78 0L12 5.67l-1.06-1.06a5.5 5.5 0 0 0-7.78 7.78l1.06 1.06L12 21.23l7.78-7.78 1.06-1.06a5.5 5.5 0 0 0 0-7.78z" />
                  </svg>
                  <span>
                    {favorites.includes(modalProduct.sku || modalProduct.code || "") ? "Saved in Favourites" : "Save to Favourites"}
                  </span>
                </button>
                <Link
                  href={`/contact?subject=Inquiry%20for%20SKU%20${encodeURIComponent(modalProduct.sku || modalProduct.code || "")}`}
                  className="btn-modal-enquire"
                >
                  Inquire / Custom Order
                </Link>
              </div>
            </div>
          </div>
        </div>
      )}

      <Footer />
      <WelcomeModal />
    </>
  );
}

export default function CataloguePage() {
  return (
    <Suspense fallback={<div style={{ padding: "40px", textAlign: "center" }}>Loading catalogue...</div>}>
      <CatalogueContent />
    </Suspense>
  );
}
