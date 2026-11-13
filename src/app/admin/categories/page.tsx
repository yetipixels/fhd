"use client";

import React, { useState, useEffect } from "react";
import Image from "next/image";
import { AdminHeader } from "@/components/admin/AdminHeader";
import { createClient } from "@/lib/supabase/client";
import { Category } from "@/lib/types";
import { MOCK_CATEGORIES } from "@/lib/mock-data";
import { CloudinaryUploader } from "@/components/admin/CloudinaryUploader";
import { Button } from "@/components/ui/button";
import { Input } from "@/components/ui/input";
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
import { Plus, Edit, Trash2, Layers, AlertTriangle } from "lucide-react";
import { toast } from "sonner";

const TAXONOMY_DEPARTMENTS = [
  { value: "furnishing", label: "Furnishing" },
  { value: "lighting", label: "Lighting" },
  { value: "seating", label: "Seating" },
  { value: "accessories", label: "Accessories & Decor" },
  { value: "art", label: "Art & Sculpture" },
];

export default function AdminCategoriesPage() {
  const [categories, setCategories] = useState<Category[]>(MOCK_CATEGORIES);
  const [loading, setLoading] = useState(true);

  // Modal State for Add / Edit
  const [isModalOpen, setIsModalOpen] = useState(false);
  const [editingCategory, setEditingCategory] = useState<Category | null>(null);
  const [name, setName] = useState("");
  const [slug, setSlug] = useState("");
  const [department, setDepartment] = useState("furnishing");
  const [description, setDescription] = useState("");
  const [imageUrl, setImageUrl] = useState<string[]>([]);
  const [saving, setSaving] = useState(false);

  // Delete State
  const [categoryToDelete, setCategoryToDelete] = useState<Category | null>(null);
  const [isDeleting, setIsDeleting] = useState(false);

  const supabase = createClient();

  const fetchCategories = async () => {
    try {
      // 1. Read deleted IDs/slugs so user-deleted categories are NEVER resurrected
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

      // 2. Read local admin categories cache
      let localCats: Category[] = [];
      const legacyDummyCategoryIds = new Set([
        "cat-1", "cat-2", "cat-3", "cat-4", "cat-5", "cat-6", "cat-7", "cat-8", "cat-9", "cat-default"
      ]);
      const legacyDummyCategoryNames = new Set([
        "Living Room", "Dining Room", "Bedroom", "Office", "Lighting", "Textiles & Rugs", "Decor & Accessories", "Outdoor", "Holiday Special"
      ]);
      const filterOutDummyCats = (items: any[]): Category[] => {
        if (!Array.isArray(items)) return [];
        return items.filter(
          (c) =>
            !legacyDummyCategoryIds.has(c.id) &&
            !legacyDummyCategoryNames.has(c.name) &&
            !deletedSlugs.has(c.id?.toLowerCase()) &&
            !deletedSlugs.has(c.slug?.toLowerCase())
        );
      };

      try {
        const stored = localStorage.getItem("fhd_admin_categories");
        if (stored) {
          localCats = filterOutDummyCats(JSON.parse(stored));
        }
      } catch {}

      // 3. Read explicit department assignments from local storage
      let localDepts: Record<string, string> = {};
      try {
        const storedDepts = localStorage.getItem("fhd_category_departments");
        if (storedDepts) {
          localDepts = JSON.parse(storedDepts);
        }
      } catch {}

      // Pre-seed localDepts from localCats
      localCats.forEach((lc) => {
        if (lc.department) {
          if (lc.id && !localDepts[lc.id]) localDepts[lc.id] = lc.department;
          if (lc.slug && !localDepts[lc.slug]) localDepts[lc.slug] = lc.department;
        }
      });

      // 4. Query Supabase categories table
      const { data, error } = await supabase
        .from("categories")
        .select("*")
        .order("name", { ascending: true });

      if (!error && data && data.length > 0) {
        // Filter out any categories the user explicitly deleted
        const activeRemote = (data as Category[]).filter(
          (c) => !deletedSlugs.has(c.id?.toLowerCase()) && !deletedSlugs.has(c.slug?.toLowerCase())
        );

        // Merge remote categories, PRESERVING local department edits
        const merged: Category[] = activeRemote.map((rc) => {
          const localMatch = localCats.find(
            (lc) =>
              (lc.id && rc.id && lc.id.toLowerCase() === rc.id.toLowerCase()) ||
              (lc.slug && rc.slug && lc.slug.toLowerCase() === rc.slug.toLowerCase()) ||
              (lc.name && rc.name && lc.name.trim().toLowerCase() === rc.name.trim().toLowerCase())
          );
          const deptOverride =
            (rc.id && (localDepts[rc.id] || localDepts[rc.id.toLowerCase()])) ||
            (rc.slug && (localDepts[rc.slug] || localDepts[rc.slug.toLowerCase()])) ||
            (rc.name && localDepts[rc.name.trim().toLowerCase()]) ||
            (localMatch?.id && (localDepts[localMatch.id] || localDepts[localMatch.id.toLowerCase()])) ||
            (localMatch?.slug && (localDepts[localMatch.slug] || localDepts[localMatch.slug.toLowerCase()])) ||
            localMatch?.department;

          const resolvedDept = deptOverride || rc.department || "furnishing";

          return {
            ...rc,
            department: resolvedDept,
            description: rc.description || localMatch?.description || "",
            image_url: rc.image_url || localMatch?.image_url,
          };
        });

        // Keep any newly added local categories not yet in Supabase
        localCats.forEach((lc) => {
          if (!merged.some((m) => m.id === lc.id || m.slug === lc.slug)) {
            const deptOverride =
              (lc.id && (localDepts[lc.id] || localDepts[lc.id.toLowerCase()])) ||
              (lc.slug && (localDepts[lc.slug] || localDepts[lc.slug.toLowerCase()])) ||
              (lc.name && localDepts[lc.name.trim().toLowerCase()]);
            const resolvedDept = deptOverride || lc.department || "furnishing";
            merged.push({ ...lc, department: resolvedDept });
          }
        });

        setCategories(merged);
        localStorage.setItem("fhd_admin_categories", JSON.stringify(merged));
      } else if (localCats.length > 0) {
        // If Supabase returned empty/error, preserve user's local category list
        const updated = localCats.map((lc) => ({
          ...lc,
          department: localDepts[lc.id] || localDepts[lc.slug] || lc.department || "furnishing",
        }));
        setCategories(updated);
      } else {
        // First run ever: initialize with MOCK_CATEGORIES
        const initial = MOCK_CATEGORIES.filter(
          (mc) => !deletedSlugs.has(mc.id.toLowerCase()) && !deletedSlugs.has(mc.slug.toLowerCase())
        ).map((mc) => ({
          ...mc,
          department: localDepts[mc.id] || localDepts[mc.slug] || mc.department || "furnishing",
        }));
        setCategories(initial);
        localStorage.setItem("fhd_admin_categories", JSON.stringify(initial));
      }
    } catch (err) {
      console.warn("Using local cache for admin categories:", err);
      try {
        const stored = localStorage.getItem("fhd_admin_categories");
        if (stored) {
          setCategories(JSON.parse(stored));
        } else {
          setCategories(MOCK_CATEGORIES);
        }
      } catch {
        setCategories(MOCK_CATEGORIES);
      }
    } finally {
      setLoading(false);
    }
  };

  useEffect(() => {
    fetchCategories();
  }, []);

  const openCreateModal = () => {
    setEditingCategory(null);
    setName("");
    setSlug("");
    setDepartment("furnishing");
    setDescription("");
    setImageUrl([]);
    setIsModalOpen(true);
  };

  const openEditModal = (cat: Category) => {
    setEditingCategory(cat);
    setName(cat.name);
    setSlug(cat.slug);
    setDepartment(cat.department || "furnishing");
    setDescription(cat.description || "");
    setImageUrl(cat.image_url ? [cat.image_url] : []);
    setIsModalOpen(true);
  };

  const handleNameChange = (val: string) => {
    setName(val);
    if (!editingCategory) {
      setSlug(val.toLowerCase().replace(/[^a-z0-9]+/g, "-").replace(/^-+|-+$/g, ""));
    }
  };

  const handleSaveCategory = async (e: React.FormEvent) => {
    e.preventDefault();
    if (!name.trim() || !slug.trim()) {
      toast.error("Category name and slug are required.");
      return;
    }

    setSaving(true);
    const catSlug = slug.trim().toLowerCase();
    const payload = {
      name: name.trim(),
      slug: catSlug,
      department: department,
      description: description.trim(),
      image_url: imageUrl[0] || null,
    };

    // If re-adding/editing a category, remove it from the deleted set
    try {
      const storedDeleted = JSON.parse(localStorage.getItem("fhd_deleted_categories") || "[]");
      const updatedDeleted = storedDeleted.filter(
        (s: string) => s.toLowerCase() !== catSlug && (editingCategory ? s !== editingCategory.id : true)
      );
      localStorage.setItem("fhd_deleted_categories", JSON.stringify(updatedDeleted));
    } catch {}

    let updatedCats = [...categories];

    if (editingCategory) {
      updatedCats = categories.map((c) =>
        c.id === editingCategory.id ? { ...c, ...payload } : c
      );
      setCategories(updatedCats);
      toast.success("Category updated!");
    } else {
      const newCatId =
        typeof crypto !== "undefined" && crypto.randomUUID
          ? crypto.randomUUID()
          : `e1b10001-0000-4000-8000-${Date.now().toString(16).padStart(12, "0")}`;

      const newCat: Category = {
        id: newCatId,
        ...payload,
        image_url: payload.image_url || undefined,
      };
      updatedCats = [...categories, newCat];
      setCategories(updatedCats);
      toast.success("Category created!");
    }

    // Persist department explicitly in fhd_category_departments map
    const targetId = editingCategory ? editingCategory.id : updatedCats[updatedCats.length - 1].id;
    try {
      const storedDepts = JSON.parse(localStorage.getItem("fhd_category_departments") || "{}");
      const deptVal = department.toLowerCase();
      storedDepts[catSlug] = deptVal;
      storedDepts[catSlug.toLowerCase()] = deptVal;
      storedDepts[name.trim().toLowerCase()] = deptVal;
      if (editingCategory) {
        if (editingCategory.id) {
          storedDepts[editingCategory.id] = deptVal;
          storedDepts[editingCategory.id.toLowerCase()] = deptVal;
        }
        if (editingCategory.slug) {
          storedDepts[editingCategory.slug] = deptVal;
          storedDepts[editingCategory.slug.toLowerCase()] = deptVal;
        }
        if (editingCategory.name) {
          storedDepts[editingCategory.name.trim().toLowerCase()] = deptVal;
        }
      }
      if (targetId) {
        storedDepts[targetId] = deptVal;
        storedDepts[targetId.toLowerCase()] = deptVal;
      }
      localStorage.setItem("fhd_category_departments", JSON.stringify(storedDepts));
    } catch {}

    try {
      localStorage.setItem("fhd_admin_categories", JSON.stringify(updatedCats));
      window.dispatchEvent(new Event("fhd_categories_updated"));
    } catch {}

    // Safe Supabase upsert / update
    try {
      if (editingCategory) {
        // Attempt update by ID with select verification
        const { data: updateData, error: idErr } = await supabase
          .from("categories")
          .update(payload)
          .eq("id", targetId)
          .select();

        if (idErr || !updateData || updateData.length === 0) {
          // If no row updated by ID, attempt update by slug
          const { data: slugData, error: slugErr } = await supabase
            .from("categories")
            .update(payload)
            .eq("slug", catSlug)
            .select();

          if (slugErr || !slugData || slugData.length === 0) {
            // Upsert fallback with onConflict: slug
            const { error: upsertErr } = await supabase
              .from("categories")
              .upsert({ id: targetId, ...payload }, { onConflict: "slug" });

            if (upsertErr) {
              console.warn("Supabase upsert with department failed, falling back without department:", upsertErr);
              await supabase
                .from("categories")
                .upsert(
                  {
                    id: targetId,
                    name: payload.name,
                    slug: payload.slug,
                    description: payload.description,
                    image_url: payload.image_url,
                  },
                  { onConflict: "slug" }
                );
            }
          }
        }
      } else {
        const insertPayload = {
          id: targetId,
          ...payload,
        };
        const { error } = await supabase
          .from("categories")
          .upsert(insertPayload, { onConflict: "slug" });

        if (error) {
          console.warn("Supabase category insert error (column may be missing):", error);
          await supabase.from("categories").upsert(
            {
              id: insertPayload.id,
              name: payload.name,
              slug: payload.slug,
              description: payload.description,
              image_url: payload.image_url,
            },
            { onConflict: "slug" }
          );
        }
      }
    } catch (err: any) {
      console.warn("Supabase category save:", err);
    } finally {
      setIsModalOpen(false);
      setSaving(false);
    }
  };

  const handleDelete = async () => {
    if (!categoryToDelete) return;
    setIsDeleting(true);

    try {
      // Remove from department overrides
      try {
        const storedDepts = JSON.parse(localStorage.getItem("fhd_category_departments") || "{}");
        delete storedDepts[categoryToDelete.id];
        if (categoryToDelete.slug) delete storedDepts[categoryToDelete.slug];
        localStorage.setItem("fhd_category_departments", JSON.stringify(storedDepts));
      } catch {}

      // 1. Persist deletion in fhd_deleted_categories so it never resurrects on refresh
      try {
        const storedDeleted = JSON.parse(localStorage.getItem("fhd_deleted_categories") || "[]");
        storedDeleted.push(categoryToDelete.id);
        if (categoryToDelete.slug) storedDeleted.push(categoryToDelete.slug.toLowerCase());
        localStorage.setItem("fhd_deleted_categories", JSON.stringify(Array.from(new Set(storedDeleted))));
      } catch {}

      // 2. Remove from active state & local storage
      const updated = categories.filter(
        (c) => c.id !== categoryToDelete.id && c.slug !== categoryToDelete.slug
      );
      setCategories(updated);
      try {
        localStorage.setItem("fhd_admin_categories", JSON.stringify(updated));
        window.dispatchEvent(new Event("fhd_categories_updated"));
      } catch {}

      // 3. Delete from Supabase
      const { error } = await supabase
        .from("categories")
        .delete()
        .eq("id", categoryToDelete.id);

      if (error) {
        console.warn("Supabase delete category error:", error);
      }
      toast.success("Category deleted!");
    } catch (err) {
      console.warn("Error deleting category:", err);
      toast.success("Category removed.");
    } finally {
      setIsDeleting(false);
      setCategoryToDelete(null);
    }
  };

  return (
    <div className="flex-1 space-y-8 pb-12">
      <AdminHeader
        title="Category Management"
        subtitle="Organize product collections, set taxonomy slugs, and manage banner media."
      />

      <div className="px-6 sm:px-8 space-y-6">
        <div className="flex items-center justify-between">
          <span className="text-xs text-stone-500 font-mono">
            {categories.length} Taxonomy Categories
          </span>
          <Button
            variant="default"
            size="default"
            onClick={openCreateModal}
            className="space-x-1.5"
          >
            <Plus className="w-4 h-4" />
            <span>Add Category</span>
          </Button>
        </div>

        {/* Categories Table */}
        <div className="rounded-lg border border-fhd-border bg-white shadow-xs overflow-hidden">
          <Table>
            <TableHeader>
              <TableRow>
                <TableHead className="w-20">Banner</TableHead>
                <TableHead>Category Name</TableHead>
                <TableHead>Taxonomy Department</TableHead>
                <TableHead>Slug</TableHead>
                <TableHead>Description</TableHead>
                <TableHead className="text-right">Actions</TableHead>
              </TableRow>
            </TableHeader>
            <TableBody>
              {categories.map((cat) => (
                <TableRow key={cat.id}>
                  <TableCell>
                    <div className="relative w-14 h-10 rounded-md overflow-hidden bg-fhd-cream border border-fhd-border">
                      {cat.image_url ? (
                        <Image
                          src={cat.image_url}
                          alt={cat.name}
                          fill
                          className="object-cover"
                        />
                      ) : (
                        <div className="w-full h-full flex items-center justify-center text-[9px] text-stone-400">
                          <Layers className="w-3.5 h-3.5" />
                        </div>
                      )}
                    </div>
                  </TableCell>
                  <TableCell className="font-semibold text-fhd-dark font-serif text-base">
                    {cat.name}
                  </TableCell>
                  <TableCell>
                    <span className="inline-flex items-center px-2.5 py-1 rounded-full text-[11px] font-semibold bg-[#EFEAE2] text-[#425238] border border-[#D5CDC0] capitalize">
                      {TAXONOMY_DEPARTMENTS.find((d) => d.value === cat.department)?.label || cat.department || "Furnishing"}
                    </span>
                  </TableCell>
                  <TableCell className="font-mono text-xs text-stone-500">
                    {cat.slug}
                  </TableCell>
                  <TableCell className="text-xs text-stone-600 max-w-xs truncate">
                    {cat.description || "N/A"}
                  </TableCell>
                  <TableCell className="text-right">
                    <div className="flex items-center justify-end space-x-1">
                      <Button
                        variant="ghost"
                        size="sm"
                        onClick={() => openEditModal(cat)}
                        className="p-2 h-9 w-9"
                        title="Edit"
                      >
                        <Edit className="w-4 h-4 text-stone-600" />
                      </Button>
                      <Button
                        variant="ghost"
                        size="sm"
                        onClick={() => setCategoryToDelete(cat)}
                        className="p-2 h-9 w-9 text-stone-400 hover:text-red-700"
                        title="Delete"
                      >
                        <Trash2 className="w-4 h-4" />
                      </Button>
                    </div>
                  </TableCell>
                </TableRow>
              ))}
            </TableBody>
          </Table>
        </div>
      </div>

      {/* Add / Edit Category Dialog */}
      <Dialog open={isModalOpen} onOpenChange={setIsModalOpen}>
        <DialogHeader>
          <DialogTitle>
            {editingCategory ? `Edit Category: ${editingCategory.name}` : "Create Category"}
          </DialogTitle>
          <DialogDescription>
            Specify category name, taxonomy department classification, URL slug, and optional Cloudinary hero thumbnail.
          </DialogDescription>
        </DialogHeader>

        <form onSubmit={handleSaveCategory} className="space-y-4">
          <div className="space-y-1.5">
            <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
              Category Name *
            </label>
            <Input
              required
              placeholder="e.g. Dining Tables"
              value={name}
              onChange={(e) => handleNameChange(e.target.value)}
            />
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
              Taxonomy Category / Department *
            </label>
            <select
              value={department}
              onChange={(e) => setDepartment(e.target.value)}
              className="w-full h-11 rounded-md border border-fhd-border bg-white px-3.5 py-2 text-sm text-fhd-dark focus:outline-none focus:ring-2 focus:ring-fhd-sage"
            >
              {TAXONOMY_DEPARTMENTS.map((dept) => (
                <option key={dept.value} value={dept.value}>
                  {dept.label}
                </option>
              ))}
            </select>
            <p className="text-[11px] text-stone-500">
              Select which department collection (Furnishing, Lighting, Seating, Accessories &amp; Decor, Art &amp; Sculpture) this category belongs to.
            </p>
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
              URL Slug *
            </label>
            <Input
              required
              placeholder="dining-tables"
              value={slug}
              onChange={(e) => setSlug(e.target.value)}
              className="font-mono text-xs"
            />
          </div>

          <div className="space-y-1.5">
            <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark">
              Short Description
            </label>
            <Input
              placeholder="Brief wholesale collection description..."
              value={description}
              onChange={(e) => setDescription(e.target.value)}
            />
          </div>

          <div className="space-y-2 pt-2">
            <label className="text-xs font-semibold uppercase tracking-wider text-fhd-dark block">
              Banner Thumbnail (Cloudinary or URL)
            </label>
            <CloudinaryUploader
              images={imageUrl}
              onChange={setImageUrl}
              maxFiles={1}
            />
          </div>

          <DialogFooter>
            <Button
              type="button"
              variant="outline"
              size="sm"
              onClick={() => setIsModalOpen(false)}
            >
              Cancel
            </Button>
            <Button type="submit" size="sm" disabled={saving}>
              {saving ? "Saving..." : editingCategory ? "Update Category" : "Create Category"}
            </Button>
          </DialogFooter>
        </form>
      </Dialog>

      {/* Delete Confirmation Modal */}
      <Dialog
        open={Boolean(categoryToDelete)}
        onOpenChange={(open) => !open && setCategoryToDelete(null)}
      >
        <DialogHeader>
          <div className="w-10 h-10 rounded-full bg-red-100 text-red-700 flex items-center justify-center mb-2">
            <AlertTriangle className="w-5 h-5" />
          </div>
          <DialogTitle>Delete Category</DialogTitle>
          <DialogDescription>
            Are you sure you want to delete category{" "}
            <span className="font-semibold text-fhd-dark">{categoryToDelete?.name}</span>?
            Associated products will remain intact with category unlinked.
          </DialogDescription>
        </DialogHeader>
        <DialogFooter>
          <Button
            variant="outline"
            size="sm"
            onClick={() => setCategoryToDelete(null)}
            disabled={isDeleting}
          >
            Cancel
          </Button>
          <Button
            variant="destructive"
            size="sm"
            onClick={handleDelete}
            disabled={isDeleting}
          >
            {isDeleting ? "Deleting..." : "Confirm Delete"}
          </Button>
        </DialogFooter>
      </Dialog>
    </div>
  );
}

