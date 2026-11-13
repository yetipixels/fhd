-- =============================================================================
-- FAIR HOME DECOR — Supabase Categories Management Fix Script
-- Run this in your Supabase Dashboard:
-- https://supabase.com/dashboard/project/cfxcoorzcomorptmuala/sql/new
-- =============================================================================

-- 1. Ensure categories table exists with all required fields
CREATE TABLE IF NOT EXISTS public.categories (
    id UUID PRIMARY KEY DEFAULT gen_random_uuid(),
    name TEXT NOT NULL,
    slug TEXT NOT NULL UNIQUE,
    department TEXT NOT NULL DEFAULT 'furnishing',
    image_url TEXT,
    description TEXT,
    created_at TIMESTAMPTZ NOT NULL DEFAULT TIMEZONE('utc', NOW())
);

-- 2. Add department column if the table already existed without it
ALTER TABLE public.categories ADD COLUMN IF NOT EXISTS department TEXT NOT NULL DEFAULT 'furnishing';

-- 3. Add department check constraint to ensure clean taxonomy
ALTER TABLE public.categories DROP CONSTRAINT IF EXISTS check_category_department;
ALTER TABLE public.categories ADD CONSTRAINT check_category_department 
    CHECK (department IN ('furnishing', 'lighting', 'seating', 'accessories', 'art'));

-- 4. Create indexes for high-speed queries
CREATE INDEX IF NOT EXISTS idx_categories_slug ON public.categories(slug);
CREATE INDEX IF NOT EXISTS idx_categories_department ON public.categories(department);

-- 5. Fix Row-Level Security (RLS) so the Admin Console can insert, update, and delete
ALTER TABLE public.categories ENABLE ROW LEVEL SECURITY;

DROP POLICY IF EXISTS "Public can view categories" ON public.categories;
DROP POLICY IF EXISTS "Admins have full access on categories" ON public.categories;
DROP POLICY IF EXISTS "Enable read categories" ON public.categories;
DROP POLICY IF EXISTS "Enable full access for categories" ON public.categories;

CREATE POLICY "Enable read categories"
    ON public.categories FOR SELECT
    TO public
    USING (true);

CREATE POLICY "Enable full access for categories"
    ON public.categories FOR ALL
    TO anon, authenticated
    USING (true)
    WITH CHECK (true);

-- 6. Insert / Update the 9 Core Taxonomy Categories with Cloudinary assets
INSERT INTO public.categories (id, name, slug, department, image_url, description)
VALUES 
  (
    'ca86a0eb-eadf-42ba-98b6-f706beab411d', 
    'Accent Cabinets', 
    'accent-cabinets', 
    'furnishing', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg', 
    'Handcrafted solid wood storage cabinets with artisanal fluting, dovetail joinery, and solid brass hardware.'
  ),
  (
    'e1b10001-0000-0000-0000-000000000001', 
    'Bedside Tables', 
    'bedside-tables', 
    'furnishing', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/vyceapxju4hejrotm8ad.jpg', 
    'Solid timber bedside nightstands crafted with dovetail drawers and tailored proportions.'
  ),
  (
    'e1b10001-0000-0000-0000-000000000002', 
    'Bookshelves & Storage', 
    'bookshelves', 
    'furnishing', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/a6knrsuemunxp0fmfvhh.jpg', 
    'Heirloom open-shelving bookcases and modular architectural storage units.'
  ),
  (
    '449157dd-716b-4ef9-8c72-1df6604729af', 
    'Console Tables', 
    'console-tables', 
    'furnishing', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/tl7mjiee8dyyliuhi34x.jpg', 
    'Architectural entryway and living room statement consoles with solid timber pedestal bases.'
  ),
  (
    'e1b10001-0000-0000-0000-000000000003', 
    'Round Tables', 
    'round-tables', 
    'furnishing', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/zsgtqs6necrqmtspt0ss.jpg', 
    'Solid hardwood round dining tables and pedestal bistro centerpieces.'
  ),
  (
    'e1b10001-0000-0000-0000-000000000004', 
    'Side & Accent Tables', 
    'side-tables', 
    'furnishing', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/t5mnop522lxo5mro8jcv.jpg', 
    'Hand-turned timber accent side tables, sculptural pedestals, and lamp stands.'
  ),
  (
    'e1b10001-0000-0000-0000-000000000005', 
    'Study Tables & Desks', 
    'study-tables', 
    'furnishing', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/cep83frxdroa7zdgje94.jpg', 
    'Executive writing desks and study tables with generational mortise-and-tenon joinery.'
  ),
  (
    'e1b10001-0000-0000-0000-000000000006', 
    'Wooden Photo Frames', 
    'photo-frames', 
    'accessories', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/qabor2ys2c6kplhtp5b7.jpg', 
    'Artisanal hand-beveled solid wood photo frames and tabletop accents.'
  ),
  (
    'f809989d-1523-4750-8d73-c79eca3171c5', 
    'Holiday & Festive', 
    'holiday-decor', 
    'accessories', 
    'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/yg9wb1zkzgr4415lfkyq.jpg', 
    'Cast brass and antiqued metal reindeer, candelabras, and festive centerpiece collections.'
  )
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  department = EXCLUDED.department,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

-- Grant permissions to public roles
GRANT ALL ON TABLE public.categories TO anon, authenticated, service_role;

