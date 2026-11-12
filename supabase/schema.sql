-- =============================================================================
-- FAIR HOME DECOR — B2B Wholesale Platform Database Schema
-- Supabase PostgreSQL Engine (App Router + SSR + RLS Support)
-- =============================================================================

-- Enable required extensions
CREATE EXTENSION IF NOT EXISTS "uuid-ossp";

-- -----------------------------------------------------------------------------
-- 1. PROFILES TABLE
-- Extends auth.users with business wholesale buyer details and roles
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.profiles (
    id UUID PRIMARY KEY REFERENCES auth.users(id) ON DELETE CASCADE,
    email TEXT NOT NULL,
    company_name TEXT,
    tax_vat_number TEXT,
    phone TEXT,
    role TEXT NOT NULL DEFAULT 'buyer' CHECK (role IN ('admin', 'buyer')),
    is_approved BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW()),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW())
);

-- Index for role lookup
CREATE INDEX IF NOT EXISTS idx_profiles_role ON public.profiles(role);
CREATE INDEX IF NOT EXISTS idx_profiles_email ON public.profiles(email);

-- -----------------------------------------------------------------------------
-- 2. CATEGORIES TABLE
-- Product taxonomy
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.categories (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    slug TEXT NOT NULL UNIQUE,
    image_url TEXT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW())
);

CREATE INDEX IF NOT EXISTS idx_categories_slug ON public.categories(slug);

-- -----------------------------------------------------------------------------
-- 3. PRODUCTS TABLE
-- Wholesale B2B catalog items with MOQ and dynamic bulk pricing tiers
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.products (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    category_id UUID REFERENCES public.categories(id) ON DELETE SET NULL,
    name TEXT NOT NULL,
    slug TEXT NOT NULL UNIQUE,
    sku TEXT NOT NULL UNIQUE,
    description TEXT,
    base_price NUMERIC(10, 2) NOT NULL DEFAULT 0.00,
    moq INTEGER NOT NULL DEFAULT 1 CHECK (moq >= 1),
    bulk_tiers JSONB NOT NULL DEFAULT '[]'::jsonb, 
    -- Format: [{"min_qty": 10, "max_qty": 49, "unit_price": 45.00}, {"min_qty": 50, "max_qty": null, "unit_price": 38.00}]
    images TEXT[] NOT NULL DEFAULT '{}'::TEXT[],
    specifications JSONB NOT NULL DEFAULT '{}'::jsonb,
    -- Format: {"Dimensions": "30 x 14 x 30 in", "Material": "Solid Teak Wood", "Finish": "Natural / Walnut"}
    in_stock BOOLEAN NOT NULL DEFAULT TRUE,
    featured BOOLEAN NOT NULL DEFAULT FALSE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW()),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW())
);

CREATE INDEX IF NOT EXISTS idx_products_category ON public.products(category_id);
CREATE INDEX IF NOT EXISTS idx_products_sku ON public.products(sku);
CREATE INDEX IF NOT EXISTS idx_products_slug ON public.products(slug);
CREATE INDEX IF NOT EXISTS idx_products_in_stock ON public.products(in_stock);

-- -----------------------------------------------------------------------------
-- 4. QUOTE_REQUESTS TABLE (B2B Purchase Inquiries / RFQ)
-- -----------------------------------------------------------------------------
CREATE TABLE IF NOT EXISTS public.quote_requests (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    buyer_id UUID REFERENCES public.profiles(id) ON DELETE SET NULL,
    company_name TEXT NOT NULL,
    contact_email TEXT NOT NULL,
    contact_phone TEXT,
    tax_vat_number TEXT,
    shipping_address TEXT,
    items JSONB NOT NULL DEFAULT '[]'::jsonb,
    -- Format: [{"product_id": "...", "sku": "...", "name": "...", "quantity": 50, "applied_unit_price": 38.00}]
    estimated_total NUMERIC(12, 2) NOT NULL DEFAULT 0.00,
    notes TEXT,
    status TEXT NOT NULL DEFAULT 'pending' CHECK (status IN ('pending', 'quoted', 'approved', 'dispatched', 'cancelled')),
    created_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW()),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW())
);

CREATE INDEX IF NOT EXISTS idx_quote_requests_buyer ON public.quote_requests(buyer_id);
CREATE INDEX IF NOT EXISTS idx_quote_requests_status ON public.quote_requests(status);
CREATE INDEX IF NOT EXISTS idx_quote_requests_created ON public.quote_requests(created_at DESC);

-- -----------------------------------------------------------------------------
-- 5. ROW LEVEL SECURITY (RLS) & HELPER FUNCTIONS
-- -----------------------------------------------------------------------------
ALTER TABLE public.profiles ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.products ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.quote_requests ENABLE ROW LEVEL SECURITY;

-- Helper function to check if the current user is an admin
CREATE OR REPLACE FUNCTION public.is_admin()
RETURNS BOOLEAN
LANGUAGE sql
SECURITY DEFINER
SET search_path = public
STABLE
AS $$
    SELECT EXISTS (
        SELECT 1 FROM public.profiles
        WHERE id = auth.uid() AND role = 'admin'
    );
$$;

-- PROFILES POLICIES
DROP POLICY IF EXISTS "Public can view basic profiles" ON public.profiles;
DROP POLICY IF EXISTS "Admins have full access on profiles" ON public.profiles;
DROP POLICY IF EXISTS "Users can view and update their own profile" ON public.profiles;

CREATE POLICY "Admins have full access on profiles"
    ON public.profiles FOR ALL
    TO authenticated
    USING (public.is_admin())
    WITH CHECK (public.is_admin());

CREATE POLICY "Users can view their own profile"
    ON public.profiles FOR SELECT
    TO authenticated
    USING (id = auth.uid());

CREATE POLICY "Users can update their own profile"
    ON public.profiles FOR UPDATE
    TO authenticated
    USING (id = auth.uid())
    WITH CHECK (id = auth.uid());

-- CATEGORIES POLICIES
DROP POLICY IF EXISTS "Public can view categories" ON public.categories;
DROP POLICY IF EXISTS "Admins have full access on categories" ON public.categories;

CREATE POLICY "Public can view categories"
    ON public.categories FOR SELECT
    TO public
    USING (true);

CREATE POLICY "Admins have full access on categories"
    ON public.categories FOR ALL
    TO authenticated
    USING (public.is_admin())
    WITH CHECK (public.is_admin());

-- PRODUCTS POLICIES
DROP POLICY IF EXISTS "Public can view products" ON public.products;
DROP POLICY IF EXISTS "Admins have full access on products" ON public.products;

CREATE POLICY "Public can view products"
    ON public.products FOR SELECT
    TO public
    USING (true);

CREATE POLICY "Admins have full access on products"
    ON public.products FOR ALL
    TO authenticated
    USING (public.is_admin())
    WITH CHECK (public.is_admin());

-- QUOTE_REQUESTS POLICIES
DROP POLICY IF EXISTS "Admins have full access on quote_requests" ON public.quote_requests;
DROP POLICY IF EXISTS "Buyers can view their own quote requests" ON public.quote_requests;
DROP POLICY IF EXISTS "Anyone can submit a quote request" ON public.quote_requests;

CREATE POLICY "Admins have full access on quote_requests"
    ON public.quote_requests FOR ALL
    TO authenticated
    USING (public.is_admin())
    WITH CHECK (public.is_admin());

CREATE POLICY "Buyers can view their own quote requests"
    ON public.quote_requests FOR SELECT
    TO authenticated
    USING (buyer_id = auth.uid());

CREATE POLICY "Anyone can submit a quote request"
    ON public.quote_requests FOR INSERT
    TO public
    WITH CHECK (
        buyer_id IS NULL OR buyer_id = auth.uid()
    );

-- -----------------------------------------------------------------------------
-- 6. AUTOMATIC PROFILE CREATION TRIGGER
-- Whenever a user signs up via Supabase Auth, populate public.profiles
-- -----------------------------------------------------------------------------
CREATE OR REPLACE FUNCTION public.handle_new_user()
RETURNS TRIGGER
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = public
AS $$
BEGIN
    INSERT INTO public.profiles (
        id,
        email,
        company_name,
        tax_vat_number,
        phone,
        role,
        is_approved
    )
    VALUES (
        NEW.id,
        NEW.email,
        COALESCE(NEW.raw_user_meta_data->>'company_name', ''),
        COALESCE(NEW.raw_user_meta_data->>'tax_vat_number', ''),
        COALESCE(NEW.raw_user_meta_data->>'phone', ''),
        COALESCE(NEW.raw_user_meta_data->>'role', 'buyer'),
        -- If user signed up with admin metadata, check if this is the very first profile or approve default
        CASE 
            WHEN (NEW.raw_user_meta_data->>'role') = 'admin' THEN TRUE
            ELSE FALSE
        END
    );
    RETURN NEW;
END;
$$;

DROP TRIGGER IF EXISTS on_auth_user_created ON auth.users;
CREATE TRIGGER on_auth_user_created
    AFTER INSERT ON auth.users
    FOR EACH ROW EXECUTE FUNCTION public.handle_new_user();

-- -----------------------------------------------------------------------------
-- 7. DEFAULT SEED DATA
-- Categories and initial flagship wholesale products
-- -----------------------------------------------------------------------------
INSERT INTO public.categories (name, slug, description, image_url)
VALUES
    ('Accent Cabinets', 'accent-cabinets', 'Handcrafted solid wood storage cabinets with artisanal joinery', 'https://images.unsplash.com/photo-1595428774223-ef52624120d2?w=800&q=80'),
    ('Coffee Tables', 'coffee-tables', 'Solid timber and sculptural nesting coffee tables', 'https://images.unsplash.com/photo-1533090161767-e6ffed986c88?w=800&q=80'),
    ('Console Tables', 'console-tables', 'Architectural hallway and living room console statements', 'https://images.unsplash.com/photo-1586023492125-27b2c045efd7?w=800&q=80'),
    ('Dining Tables', 'dining-tables', 'Grand solid oak and walnut dining centerpieces', 'https://images.unsplash.com/photo-1615066390971-03e4e1c36ddf?w=800&q=80'),
    ('Embroidered Cushions', 'embroidered-cushions', 'Hand-stitched heritage textiles and premium linen cushions', 'https://images.unsplash.com/photo-1584100936595-c0654b55a2e2?w=800&q=80'),
    ('Holiday & Accents', 'holiday-accents', 'Artisanal brass, silver, and crackle-glass festive accents', 'https://images.unsplash.com/photo-1544816155-12df9643f363?w=800&q=80')
ON CONFLICT (slug) DO NOTHING;

-- Seed Sample Flagship Products
INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
SELECT 
    c.id,
    'Artisanal Fluted Accent Cabinet',
    'artisanal-fluted-accent-cabinet-fhd-af-1001',
    'FHD-AF-1001',
    'Handcrafted solid teak accent cabinet featuring tailored fluted tambour doors, solid brass pull accents, and two interior adjustable shelves. Designed specifically for boutique hospitality and luxury interior residential procurement.',
    420.00,
    5,
    '[
        {"min_qty": 5, "max_qty": 14, "unit_price": 420.00},
        {"min_qty": 15, "max_qty": 39, "unit_price": 375.00},
        {"min_qty": 40, "max_qty": null, "unit_price": 320.00}
    ]'::jsonb,
    ARRAY['https://images.unsplash.com/photo-1595428774223-ef52624120d2?w=1200&q=85', 'https://images.unsplash.com/photo-1538688525198-9b88f6f53126?w=1200&q=85'],
    '{"Dimensions": "36\"W x 16\"D x 34\"H", "Material": "Solid Teak & Natural Cane", "Finish": "Warm Honey / Matte Protective Lacquer", "Weight": "68 lbs", "Assembly": "Fully Assembled"}'::jsonb,
    TRUE,
    TRUE
FROM public.categories c WHERE c.slug = 'accent-cabinets'
ON CONFLICT (sku) DO NOTHING;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
SELECT 
    c.id,
    'Scandi Minimalist Dual Nesting Coffee Tables',
    'scandi-minimalist-nesting-coffee-tables-fhd-ct-2004',
    'FHD-CT-2004',
    'Sculptural organic nesting coffee tables with soft bevelled chamfer edges and solid oak dowel leg frame. Ships nested to minimize container freight volume for bulk wholesale buyers.',
    280.00,
    10,
    '[
        {"min_qty": 10, "max_qty": 24, "unit_price": 280.00},
        {"min_qty": 25, "max_qty": 49, "unit_price": 245.00},
        {"min_qty": 50, "max_qty": null, "unit_price": 210.00}
    ]'::jsonb,
    ARRAY['https://images.unsplash.com/photo-1533090161767-e6ffed986c88?w=1200&q=85'],
    '{"Dimensions (Large)": "38\"Dia x 18\"H", "Dimensions (Small)": "24\"Dia x 15\"H", "Material": "Solid White Oak", "Finish": "Natural UV Cured Finish", "Packaging": "Flat-Pack Commercial Cartons"}'::jsonb,
    TRUE,
    TRUE
FROM public.categories c WHERE c.slug = 'coffee-tables'
ON CONFLICT (sku) DO NOTHING;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
SELECT 
    c.id,
    'Heritage Hand-Embroidered Botanical Cushion Set',
    'heritage-botanical-cushion-set-fhd-cu-5012',
    'FHD-CU-5012',
    'High-thread-count Belgian linen cushion covers with intricate golden floral zardozi threadwork. Backed with heavy concealed YKK zip and piped edges. Sold in wholesale bundle master packs.',
    28.00,
    25,
    '[
        {"min_qty": 25, "max_qty": 74, "unit_price": 28.00},
        {"min_qty": 75, "max_qty": 149, "unit_price": 23.50},
        {"min_qty": 150, "max_qty": null, "unit_price": 19.00}
    ]'::jsonb,
    ARRAY['https://images.unsplash.com/photo-1584100936595-c0654b55a2e2?w=1200&q=85'],
    '{"Size": "20 x 20 in (50 x 50 cm)", "Fabric": "100% Belgian Linen", "Embroidery": "Metallic & Rayon Thread", "Closure": "Concealed YKK Zipper", "Inner Insert": "Sold as Cover Only or with Feather Fill"}'::jsonb,
    TRUE,
    TRUE
FROM public.categories c WHERE c.slug = 'embroidered-cushions'
ON CONFLICT (sku) DO NOTHING;

