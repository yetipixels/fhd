export interface BulkTier {
  min_qty: number;
  max_qty: number | null;
  unit_price: number;
}

export interface Category {
  id: string;
  name: string;
  slug: string;
  image_url?: string | null;
  description?: string | null;
  created_at?: string;
}

export interface Product {
  id: string;
  category_id?: string;
  category?: Category;
  name: string;
  slug: string;
  sku: string;
  description: string;
  base_price: number;
  moq: number;
  bulk_tiers: BulkTier[];
  images: string[];
  specifications: Record<string, string>;
  in_stock: boolean;
  featured?: boolean;
  created_at?: string;
  updated_at?: string;
}

export type UserRole = "admin" | "buyer";

export interface Profile {
  id: string;
  email: string;
  company_name?: string;
  tax_vat_number?: string;
  phone?: string;
  role: UserRole;
  is_approved: boolean;
  created_at?: string;
  updated_at?: string;
}

export interface QuoteRequestItem {
  product_id: string;
  sku: string;
  name: string;
  image?: string;
  quantity: number;
  applied_unit_price: number;
  subtotal: number;
  moq: number;
}

export type QuoteStatus = "pending" | "quoted" | "approved" | "dispatched" | "cancelled";

export interface QuoteRequest {
  id: string;
  buyer_id?: string | null;
  company_name: string;
  contact_email: string;
  contact_phone?: string;
  tax_vat_number?: string;
  shipping_address?: string;
  items: QuoteRequestItem[];
  estimated_total: number;
  notes?: string;
  status: QuoteStatus;
  created_at: string;
  updated_at?: string;
}
