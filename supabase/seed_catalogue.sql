-- =============================================================================
-- FAIR HOME DECOR — Complete Real Catalogue Seed Script
-- Includes all 9 Taxonomy Categories and 443 Real Catalogue Products with Cloudinary Images
-- Run this script in your Supabase Dashboard -> SQL Editor
-- =============================================================================

-- 1. CATEGORIES SEED
INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('ca86a0eb-eadf-42ba-98b6-f706beab411d', 'Accent Cabinets', 'accent-cabinets', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg', 'Handcrafted solid wood storage cabinets with artisanal fluting, dovetail joinery, and solid brass hardware.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('e1b10001-0000-0000-0000-000000000001', 'Bedside Tables', 'bedside-tables', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/vyceapxju4hejrotm8ad.jpg', 'Solid timber bedside nightstands crafted with dovetail drawers and tailored proportions.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('e1b10001-0000-0000-0000-000000000002', 'Bookshelves & Storage', 'bookshelves', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/a6knrsuemunxp0fmfvhh.jpg', 'Heirloom open-shelving bookcases and modular architectural storage units.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('449157dd-716b-4ef9-8c72-1df6604729af', 'Console Tables', 'console-tables', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/tl7mjiee8dyyliuhi34x.jpg', 'Architectural entryway and living room statement consoles with solid timber pedestal bases.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('e1b10001-0000-0000-0000-000000000003', 'Round Tables', 'round-tables', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/zsgtqs6necrqmtspt0ss.jpg', 'Solid hardwood round dining tables and pedestal bistro centerpieces.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('e1b10001-0000-0000-0000-000000000004', 'Side & Accent Tables', 'side-tables', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/t5mnop522lxo5mro8jcv.jpg', 'Hand-turned timber accent side tables, sculptural pedestals, and lamp stands.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('e1b10001-0000-0000-0000-000000000005', 'Study Tables & Desks', 'study-tables', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/cep83frxdroa7zdgje94.jpg', 'Executive writing desks and study tables with generational mortise-and-tenon joinery.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('e1b10001-0000-0000-0000-000000000006', 'Wooden Photo Frames', 'photo-frames', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/qabor2ys2c6kplhtp5b7.jpg', 'Artisanal hand-beveled solid wood photo frames and tabletop accents.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('f809989d-1523-4750-8d73-c79eca3171c5', 'Holiday & Festive', 'holiday-decor', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/yg9wb1zkzgr4415lfkyq.jpg', 'Cast brass and antiqued metal reindeer, candelabras, and festive centerpiece collections.')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;


-- 2. PRODUCTS SEED (443 CATALOGUE PIECES)

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1001',
  'accent-cabinet-fhd-af-1001-fhd-af-1001',
  'FHD-AF-1001',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  447.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 447.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 402.75}, {"min_qty": 41, "max_qty": null, "unit_price": 358.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg']::TEXT[],
  '{"Dimensions": "30 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1002',
  'accent-cabinet-fhd-af-1002-fhd-af-1002',
  'FHD-AF-1002',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  450.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 450.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 405.0}, {"min_qty": 41, "max_qty": null, "unit_price": 360.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/ntnmshxwngbx6y0f8cqa.jpg']::TEXT[],
  '{"Dimensions": "30 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1003',
  'accent-cabinet-fhd-af-1003-fhd-af-1003',
  'FHD-AF-1003',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  452.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 452.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 407.25}, {"min_qty": 41, "max_qty": null, "unit_price": 362.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522242/o8opfjm2xs2lvxcjfz2w.jpg']::TEXT[],
  '{"Dimensions": "30 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1004',
  'accent-cabinet-fhd-af-1004-fhd-af-1004',
  'FHD-AF-1004',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  455.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 455.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 409.5}, {"min_qty": 41, "max_qty": null, "unit_price": 364.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/bmnnb4ctflwjqljypvgf.jpg']::TEXT[],
  '{"Dimensions": "30 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1005',
  'accent-cabinet-fhd-af-1005-fhd-af-1005',
  'FHD-AF-1005',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  457.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 457.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 411.75}, {"min_qty": 41, "max_qty": null, "unit_price": 366.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/uoknis5wgikanlyqhe6x.jpg']::TEXT[],
  '{"Dimensions": "32 x 14 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1006',
  'accent-cabinet-fhd-af-1006-fhd-af-1006',
  'FHD-AF-1006',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  460.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 460.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 414.0}, {"min_qty": 41, "max_qty": null, "unit_price": 368.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/inuyqq2p6pkpxqiwnw3y.jpg']::TEXT[],
  '{"Dimensions": "32 x 16 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1007',
  'accent-cabinet-fhd-af-1007-fhd-af-1007',
  'FHD-AF-1007',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  462.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 462.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 416.25}, {"min_qty": 41, "max_qty": null, "unit_price": 370.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/dlmrnjzzzqxlkguo9gih.jpg']::TEXT[],
  '{"Dimensions": "36 x 14 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1008',
  'accent-cabinet-fhd-af-1008-fhd-af-1008',
  'FHD-AF-1008',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  465.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 465.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 418.5}, {"min_qty": 41, "max_qty": null, "unit_price": 372.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522285/dks0d6hhaitzygroj2u6.jpg']::TEXT[],
  '{"Dimensions": "32 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1009',
  'accent-cabinet-fhd-af-1009-fhd-af-1009',
  'FHD-AF-1009',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  467.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 467.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 420.75}, {"min_qty": 41, "max_qty": null, "unit_price": 374.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522240/tp04ax9omninuadcbq0q.jpg']::TEXT[],
  '{"Dimensions": "36 x 12 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1010',
  'accent-cabinet-fhd-af-1010-fhd-af-1010',
  'FHD-AF-1010',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  470.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 470.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 423.0}, {"min_qty": 41, "max_qty": null, "unit_price": 376.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/kocnkmz32qcapfoxwzat.jpg']::TEXT[],
  '{"Dimensions": "35 x 12 x 29.5 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1011',
  'accent-cabinet-fhd-af-1011-fhd-af-1011',
  'FHD-AF-1011',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  472.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 472.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 425.25}, {"min_qty": 41, "max_qty": null, "unit_price": 378.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522270/ri3y64tkczxj6dcr8q5a.jpg']::TEXT[],
  '{"Dimensions": "36 x 12 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1012',
  'accent-cabinet-fhd-af-1012-fhd-af-1012',
  'FHD-AF-1012',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  475.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 475.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 427.5}, {"min_qty": 41, "max_qty": null, "unit_price": 380.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/uu4aef80lbhnnavot5hr.jpg']::TEXT[],
  '{"Dimensions": "33 x 12 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1013',
  'accent-cabinet-fhd-af-1013-fhd-af-1013',
  'FHD-AF-1013',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  477.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 477.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 429.75}, {"min_qty": 41, "max_qty": null, "unit_price": 382.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522266/agofpqe2mcmqzgvhygyj.jpg']::TEXT[],
  '{"Dimensions": "36 x 15 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1014',
  'accent-cabinet-fhd-af-1014-fhd-af-1014',
  'FHD-AF-1014',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  480.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 480.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 432.0}, {"min_qty": 41, "max_qty": null, "unit_price": 384.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/mz0ka3rg4iiwmtl99lby.jpg']::TEXT[],
  '{"Dimensions": "34 x 12 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1015',
  'accent-cabinet-fhd-af-1015-fhd-af-1015',
  'FHD-AF-1015',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/d7uobjyvivu4zcsnmuer.jpg']::TEXT[],
  '{"Dimensions": "32 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1016',
  'accent-cabinet-fhd-af-1016-fhd-af-1016',
  'FHD-AF-1016',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  397.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 397.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 357.75}, {"min_qty": 41, "max_qty": null, "unit_price": 318.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/qel9yurjwuebtk7rfwdn.jpg']::TEXT[],
  '{"Dimensions": "32 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1017',
  'accent-cabinet-fhd-af-1017-fhd-af-1017',
  'FHD-AF-1017',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  400.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 400.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 360.0}, {"min_qty": 41, "max_qty": null, "unit_price": 320.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/obayuozcsciziad7ov8w.jpg']::TEXT[],
  '{"Dimensions": "30 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1018',
  'accent-cabinet-fhd-af-1018-fhd-af-1018',
  'FHD-AF-1018',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  402.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 402.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 362.25}, {"min_qty": 41, "max_qty": null, "unit_price": 322.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/ptvpefxw7ipgkha0azlp.jpg']::TEXT[],
  '{"Dimensions": "36 x 13 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1019',
  'accent-cabinet-fhd-af-1019-fhd-af-1019',
  'FHD-AF-1019',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  405.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 405.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 364.5}, {"min_qty": 41, "max_qty": null, "unit_price": 324.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/hrq2alhdabkoywmi0w8o.jpg']::TEXT[],
  '{"Dimensions": "39 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1020',
  'accent-cabinet-fhd-af-1020-fhd-af-1020',
  'FHD-AF-1020',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  407.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 407.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 366.75}, {"min_qty": 41, "max_qty": null, "unit_price": 326.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/qxggdklzyoqtjspbtsmp.jpg']::TEXT[],
  '{"Dimensions": "36 x 13 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1021',
  'accent-cabinet-fhd-af-1021-fhd-af-1021',
  'FHD-AF-1021',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  410.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 410.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 369.0}, {"min_qty": 41, "max_qty": null, "unit_price": 328.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/tuklqqsj59reqw5sjgmg.jpg']::TEXT[],
  '{"Dimensions": "36 x 13 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1022',
  'accent-cabinet-fhd-af-1022-fhd-af-1022',
  'FHD-AF-1022',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  412.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 412.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 371.25}, {"min_qty": 41, "max_qty": null, "unit_price": 330.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/r5a1emw22psuxjazcx4x.jpg']::TEXT[],
  '{"Dimensions": "36 x 15 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1023',
  'accent-cabinet-fhd-af-1023-fhd-af-1023',
  'FHD-AF-1023',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  415.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 415.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 373.5}, {"min_qty": 41, "max_qty": null, "unit_price": 332.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/v5lpkvyym6zv8xr1pujc.jpg']::TEXT[],
  '{"Dimensions": "36 x 16 x 35 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1024',
  'accent-cabinet-fhd-af-1024-fhd-af-1024',
  'FHD-AF-1024',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  417.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 417.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 375.75}, {"min_qty": 41, "max_qty": null, "unit_price": 334.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/axwjak1paxhsq0cqkbam.jpg']::TEXT[],
  '{"Dimensions": "30 x 18 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1025',
  'accent-cabinet-fhd-af-1025-fhd-af-1025',
  'FHD-AF-1025',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  420.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 420.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 378.0}, {"min_qty": 41, "max_qty": null, "unit_price": 336.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522272/zko8q1ox1nc87a51osm4.jpg']::TEXT[],
  '{"Dimensions": "39 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1026',
  'accent-cabinet-fhd-af-1026-fhd-af-1026',
  'FHD-AF-1026',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  422.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 422.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 380.25}, {"min_qty": 41, "max_qty": null, "unit_price": 338.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/achkazpw6wx7s4ywkj0w.jpg']::TEXT[],
  '{"Dimensions": "39 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1027',
  'accent-cabinet-fhd-af-1027-fhd-af-1027',
  'FHD-AF-1027',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  425.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 425.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 382.5}, {"min_qty": 41, "max_qty": null, "unit_price": 340.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/mv61ydyrnyb2ovwewpmv.jpg']::TEXT[],
  '{"Dimensions": "39 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1028',
  'accent-cabinet-fhd-af-1028-fhd-af-1028',
  'FHD-AF-1028',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  427.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 427.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 384.75}, {"min_qty": 41, "max_qty": null, "unit_price": 342.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522289/diqwrbirnqewqwim9at5.jpg']::TEXT[],
  '{"Dimensions": "32 x 14 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1029',
  'accent-cabinet-fhd-af-1029-fhd-af-1029',
  'FHD-AF-1029',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  430.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 430.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 387.0}, {"min_qty": 41, "max_qty": null, "unit_price": 344.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/mzxacyb6lsniwsez97rb.jpg']::TEXT[],
  '{"Dimensions": "36 x 13 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'ca86a0eb-eadf-42ba-98b6-f706beab411d',
  'Accent Cabinet FHD-AF-1030',
  'accent-cabinet-fhd-af-1030-fhd-af-1030',
  'FHD-AF-1030',
  'Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.',
  432.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 432.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 389.25}, {"min_qty": 41, "max_qty": null, "unit_price": 346.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/zjzz8geprcn9zq6fcfiy.jpg']::TEXT[],
  '{"Dimensions": "36 x 13 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Accent Cabinets", "Subcategory": "accent-cabinets"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1001',
  'bedside-table-fhd-bst-1001-fhd-bst-1001',
  'FHD-BST-1001',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  237.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 237.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 213.75}, {"min_qty": 81, "max_qty": null, "unit_price": 190.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/vyceapxju4hejrotm8ad.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 26 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1002',
  'bedside-table-fhd-bst-1002-fhd-bst-1002',
  'FHD-BST-1002',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  240.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 240.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 216.0}, {"min_qty": 81, "max_qty": null, "unit_price": 192.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522201/fepfrjhkb8rs9atfzvtg.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 26 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1003',
  'bedside-table-fhd-bst-1003-fhd-bst-1003',
  'FHD-BST-1003',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  242.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 242.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 218.25}, {"min_qty": 81, "max_qty": null, "unit_price": 194.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/fqdj0arshpwutl4b62qh.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 26 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1004',
  'bedside-table-fhd-bst-1004-fhd-bst-1004',
  'FHD-BST-1004',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  245.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 245.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 220.5}, {"min_qty": 81, "max_qty": null, "unit_price": 196.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/swtehu3kdstsmybmtjf9.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1005',
  'bedside-table-fhd-bst-1005-fhd-bst-1005',
  'FHD-BST-1005',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  247.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 247.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 222.75}, {"min_qty": 81, "max_qty": null, "unit_price": 198.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/bomhqylqbwrprrtpsaob.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1006',
  'bedside-table-fhd-bst-1006-fhd-bst-1006',
  'FHD-BST-1006',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  250.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 250.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 225.0}, {"min_qty": 81, "max_qty": null, "unit_price": 200.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/yibyknvy2bmii7va1aro.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1007',
  'bedside-table-fhd-bst-1007-fhd-bst-1007',
  'FHD-BST-1007',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  252.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 252.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 227.25}, {"min_qty": 81, "max_qty": null, "unit_price": 202.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522286/nevdeqp70slszmpb1lji.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1008',
  'bedside-table-fhd-bst-1008-fhd-bst-1008',
  'FHD-BST-1008',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  255.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 255.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 229.5}, {"min_qty": 81, "max_qty": null, "unit_price": 204.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522207/tmjxzzs30sf1ckxtge9j.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1009',
  'bedside-table-fhd-bst-1009-fhd-bst-1009',
  'FHD-BST-1009',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  257.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 257.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 231.75}, {"min_qty": 81, "max_qty": null, "unit_price": 206.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/uutx3idj9wtfejnv5s4c.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1010',
  'bedside-table-fhd-bst-1010-fhd-bst-1010',
  'FHD-BST-1010',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  260.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 260.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 234.0}, {"min_qty": 81, "max_qty": null, "unit_price": 208.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/co40g7mqfvjyglnkk5ah.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1011',
  'bedside-table-fhd-bst-1011-fhd-bst-1011',
  'FHD-BST-1011',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  262.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 262.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 236.25}, {"min_qty": 81, "max_qty": null, "unit_price": 210.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/gw8zg4l6vk1xzupi0fnv.jpg']::TEXT[],
  '{"Dimensions": "17 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1012',
  'bedside-table-fhd-bst-1012-fhd-bst-1012',
  'FHD-BST-1012',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  265.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 265.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 238.5}, {"min_qty": 81, "max_qty": null, "unit_price": 212.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/yc3upthrxya23avbpiyx.jpg']::TEXT[],
  '{"Dimensions": "17 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1013',
  'bedside-table-fhd-bst-1013-fhd-bst-1013',
  'FHD-BST-1013',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  267.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 267.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 240.75}, {"min_qty": 81, "max_qty": null, "unit_price": 214.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/ml0pjiqgqgyefcfgiabr.jpg']::TEXT[],
  '{"Dimensions": "17 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1014',
  'bedside-table-fhd-bst-1014-fhd-bst-1014',
  'FHD-BST-1014',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  270.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 270.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 243.0}, {"min_qty": 81, "max_qty": null, "unit_price": 216.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/iouuzjknl81hp1oabioa.jpg']::TEXT[],
  '{"Dimensions": "17 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1015',
  'bedside-table-fhd-bst-1015-fhd-bst-1015',
  'FHD-BST-1015',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  185.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 185.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 166.5}, {"min_qty": 81, "max_qty": null, "unit_price": 148.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522230/ytoysyjnaj9hsnm2o1b1.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1016',
  'bedside-table-fhd-bst-1016-fhd-bst-1016',
  'FHD-BST-1016',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  187.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 187.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 168.75}, {"min_qty": 81, "max_qty": null, "unit_price": 150.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/fbbermuddja6gjlbfgrq.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1017',
  'bedside-table-fhd-bst-1017-fhd-bst-1017',
  'FHD-BST-1017',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  190.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 190.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 171.0}, {"min_qty": 81, "max_qty": null, "unit_price": 152.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522287/yuueqjcprtvlcowxqxup.jpg']::TEXT[],
  '{"Dimensions": "22 x 16 x 26 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1018',
  'bedside-table-fhd-bst-1018-fhd-bst-1018',
  'FHD-BST-1018',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  192.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 192.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 173.25}, {"min_qty": 81, "max_qty": null, "unit_price": 154.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522195/hx7bqq6qqcz79eipyfd1.jpg']::TEXT[],
  '{"Dimensions": "22 x 16 x 26 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1019',
  'bedside-table-fhd-bst-1019-fhd-bst-1019',
  'FHD-BST-1019',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  195.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 195.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 175.5}, {"min_qty": 81, "max_qty": null, "unit_price": 156.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/blpcvihzgpevgineohjp.jpg']::TEXT[],
  '{"Dimensions": "22 x 16 x 25 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1020',
  'bedside-table-fhd-bst-1020-fhd-bst-1020',
  'FHD-BST-1020',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  197.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 197.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 177.75}, {"min_qty": 81, "max_qty": null, "unit_price": 158.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/kwm4haefn4aeuv9qeoih.jpg']::TEXT[],
  '{"Dimensions": "22 x 16 x 25 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1021',
  'bedside-table-fhd-bst-1021-fhd-bst-1021',
  'FHD-BST-1021',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  200.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 200.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 180.0}, {"min_qty": 81, "max_qty": null, "unit_price": 160.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/sw70hlz2roncvdaztedd.jpg']::TEXT[],
  '{"Dimensions": "22 x 16 x 25 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1022',
  'bedside-table-fhd-bst-1022-fhd-bst-1022',
  'FHD-BST-1022',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  202.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 202.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 182.25}, {"min_qty": 81, "max_qty": null, "unit_price": 162.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/vvko4311a4uuxngb7dvw.jpg']::TEXT[],
  '{"Dimensions": "22 x 16 x 25 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1023',
  'bedside-table-fhd-bst-1023-fhd-bst-1023',
  'FHD-BST-1023',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  205.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 205.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 184.5}, {"min_qty": 81, "max_qty": null, "unit_price": 164.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522261/tu6gyqkqy89ti6hsjvxs.jpg']::TEXT[],
  '{"Dimensions": "21 x 16 x 27 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1024',
  'bedside-table-fhd-bst-1024-fhd-bst-1024',
  'FHD-BST-1024',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  207.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 207.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 186.75}, {"min_qty": 81, "max_qty": null, "unit_price": 166.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/cmppyelyw2gycpbw9dat.jpg']::TEXT[],
  '{"Dimensions": "21 x 16 x 27 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1025',
  'bedside-table-fhd-bst-1025-fhd-bst-1025',
  'FHD-BST-1025',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  210.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 210.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 189.0}, {"min_qty": 81, "max_qty": null, "unit_price": 168.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522268/awxm3kvt78e52zgeqewc.jpg']::TEXT[],
  '{"Dimensions": "21 x 16 x 27 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1026',
  'bedside-table-fhd-bst-1026-fhd-bst-1026',
  'FHD-BST-1026',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  212.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 212.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 191.25}, {"min_qty": 81, "max_qty": null, "unit_price": 170.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522199/i6wsmnohrjtiwbdiwqux.jpg']::TEXT[],
  '{"Dimensions": "21 x 16 x 27 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1027',
  'bedside-table-fhd-bst-1027-fhd-bst-1027',
  'FHD-BST-1027',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  215.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 215.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 193.5}, {"min_qty": 81, "max_qty": null, "unit_price": 172.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/fnk8chmmfzqudsrepopj.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1028',
  'bedside-table-fhd-bst-1028-fhd-bst-1028',
  'FHD-BST-1028',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  217.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 217.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 195.75}, {"min_qty": 81, "max_qty": null, "unit_price": 174.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522294/bnghtqgyyhdstfmhp5vt.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1029',
  'bedside-table-fhd-bst-1029-fhd-bst-1029',
  'FHD-BST-1029',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  220.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 220.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 198.0}, {"min_qty": 81, "max_qty": null, "unit_price": 176.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522224/us9uqyj8ofcbvjse4zob.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1030',
  'bedside-table-fhd-bst-1030-fhd-bst-1030',
  'FHD-BST-1030',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  222.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 222.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 200.25}, {"min_qty": 81, "max_qty": null, "unit_price": 178.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/u8zkgo9i1bag3zivaz2s.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1031',
  'bedside-table-fhd-bst-1031-fhd-bst-1031',
  'FHD-BST-1031',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  225.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 225.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 202.5}, {"min_qty": 81, "max_qty": null, "unit_price": 180.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522201/z1eeryl7ge4cairnb5jq.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1032',
  'bedside-table-fhd-bst-1032-fhd-bst-1032',
  'FHD-BST-1032',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  227.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 227.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 204.75}, {"min_qty": 81, "max_qty": null, "unit_price": 182.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522230/ee19agkbblxdpu7sb0xt.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1033',
  'bedside-table-fhd-bst-1033-fhd-bst-1033',
  'FHD-BST-1033',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  230.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 230.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 207.0}, {"min_qty": 81, "max_qty": null, "unit_price": 184.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/mqocgsznucskejcemrvs.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1034',
  'bedside-table-fhd-bst-1034-fhd-bst-1034',
  'FHD-BST-1034',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  232.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 232.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 209.25}, {"min_qty": 81, "max_qty": null, "unit_price": 186.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/kkx0dn8hgdz7uxlp5339.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1035',
  'bedside-table-fhd-bst-1035-fhd-bst-1035',
  'FHD-BST-1035',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  235.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 235.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 211.5}, {"min_qty": 81, "max_qty": null, "unit_price": 188.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/ew5d8fe2soxk1kwkpq5y.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1036',
  'bedside-table-fhd-bst-1036-fhd-bst-1036',
  'FHD-BST-1036',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  237.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 237.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 213.75}, {"min_qty": 81, "max_qty": null, "unit_price": 190.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522264/zyfmv94nhlghvy005qqr.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1037',
  'bedside-table-fhd-bst-1037-fhd-bst-1037',
  'FHD-BST-1037',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  240.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 240.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 216.0}, {"min_qty": 81, "max_qty": null, "unit_price": 192.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/mjotjhpadpbwpuftk0yz.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1038',
  'bedside-table-fhd-bst-1038-fhd-bst-1038',
  'FHD-BST-1038',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  242.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 242.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 218.25}, {"min_qty": 81, "max_qty": null, "unit_price": 194.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522199/lyawo4jpgdttf365zern.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1039',
  'bedside-table-fhd-bst-1039-fhd-bst-1039',
  'FHD-BST-1039',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  245.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 245.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 220.5}, {"min_qty": 81, "max_qty": null, "unit_price": 196.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522224/vn3wjkx7s24pnbm9nvas.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1040',
  'bedside-table-fhd-bst-1040-fhd-bst-1040',
  'FHD-BST-1040',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  247.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 247.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 222.75}, {"min_qty": 81, "max_qty": null, "unit_price": 198.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/eksyszhw8fp9srxua4h3.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1041',
  'bedside-table-fhd-bst-1041-fhd-bst-1041',
  'FHD-BST-1041',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  250.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 250.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 225.0}, {"min_qty": 81, "max_qty": null, "unit_price": 200.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/bkawzac3wlnkaig8xnlr.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1042',
  'bedside-table-fhd-bst-1042-fhd-bst-1042',
  'FHD-BST-1042',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  252.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 252.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 227.25}, {"min_qty": 81, "max_qty": null, "unit_price": 202.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/qenxkrcc6md32v92vg8x.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1043',
  'bedside-table-fhd-bst-1043-fhd-bst-1043',
  'FHD-BST-1043',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  255.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 255.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 229.5}, {"min_qty": 81, "max_qty": null, "unit_price": 204.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522285/bhgbaozac5chnxdvkxfg.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1044',
  'bedside-table-fhd-bst-1044-fhd-bst-1044',
  'FHD-BST-1044',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  257.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 257.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 231.75}, {"min_qty": 81, "max_qty": null, "unit_price": 206.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522233/yahn8fncheget3o2hnyh.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1045',
  'bedside-table-fhd-bst-1045-fhd-bst-1045',
  'FHD-BST-1045',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  260.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 260.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 234.0}, {"min_qty": 81, "max_qty": null, "unit_price": 208.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/qhcfhlkpmzqmtnjit7hl.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1046',
  'bedside-table-fhd-bst-1046-fhd-bst-1046',
  'FHD-BST-1046',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  262.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 262.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 236.25}, {"min_qty": 81, "max_qty": null, "unit_price": 210.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/tukinnduo1ctdyps3fqj.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1047',
  'bedside-table-fhd-bst-1047-fhd-bst-1047',
  'FHD-BST-1047',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  265.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 265.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 238.5}, {"min_qty": 81, "max_qty": null, "unit_price": 212.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/avoai4ttvyd1dsoee0gd.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1048',
  'bedside-table-fhd-bst-1048-fhd-bst-1048',
  'FHD-BST-1048',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  267.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 267.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 240.75}, {"min_qty": 81, "max_qty": null, "unit_price": 214.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/uputettyoklzsedhu8xy.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 25 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1049',
  'bedside-table-fhd-bst-1049-fhd-bst-1049',
  'FHD-BST-1049',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  270.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 270.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 243.0}, {"min_qty": 81, "max_qty": null, "unit_price": 216.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/h0oocermnjw3somdiogp.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 26 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1050',
  'bedside-table-fhd-bst-1050-fhd-bst-1050',
  'FHD-BST-1050',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  185.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 185.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 166.5}, {"min_qty": 81, "max_qty": null, "unit_price": 148.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/jssbpuvrycjwqsd1jmqc.jpg']::TEXT[],
  '{"Dimensions": "20 x 16 x 26 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1051',
  'bedside-table-fhd-bst-1051-fhd-bst-1051',
  'FHD-BST-1051',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  187.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 187.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 168.75}, {"min_qty": 81, "max_qty": null, "unit_price": 150.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/ot9whqqygpydxkayegxw.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1052',
  'bedside-table-fhd-bst-1052-fhd-bst-1052',
  'FHD-BST-1052',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  190.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 190.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 171.0}, {"min_qty": 81, "max_qty": null, "unit_price": 152.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/zixtcu9im4ekcnppqhds.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1053',
  'bedside-table-fhd-bst-1053-fhd-bst-1053',
  'FHD-BST-1053',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  192.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 192.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 173.25}, {"min_qty": 81, "max_qty": null, "unit_price": 154.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/dhxqdmp3etvnkpc6izyg.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1054',
  'bedside-table-fhd-bst-1054-fhd-bst-1054',
  'FHD-BST-1054',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  195.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 195.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 175.5}, {"min_qty": 81, "max_qty": null, "unit_price": 156.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522235/idky4f4ukqdpk7t9ckv2.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1055',
  'bedside-table-fhd-bst-1055-fhd-bst-1055',
  'FHD-BST-1055',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  197.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 197.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 177.75}, {"min_qty": 81, "max_qty": null, "unit_price": 158.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/lt8cekbmainzm1cfzot6.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1056',
  'bedside-table-fhd-bst-1056-fhd-bst-1056',
  'FHD-BST-1056',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  200.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 200.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 180.0}, {"min_qty": 81, "max_qty": null, "unit_price": 160.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/ewhijnl8etlhh2k0jvpo.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1057',
  'bedside-table-fhd-bst-1057-fhd-bst-1057',
  'FHD-BST-1057',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  202.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 202.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 182.25}, {"min_qty": 81, "max_qty": null, "unit_price": 162.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/an6fwhsqwnddksapjrul.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1058',
  'bedside-table-fhd-bst-1058-fhd-bst-1058',
  'FHD-BST-1058',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  205.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 205.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 184.5}, {"min_qty": 81, "max_qty": null, "unit_price": 164.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/ij60qtisx1iqzksiug1l.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1059',
  'bedside-table-fhd-bst-1059-fhd-bst-1059',
  'FHD-BST-1059',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  207.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 207.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 186.75}, {"min_qty": 81, "max_qty": null, "unit_price": 166.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/rizixct54eg5ghajq8ya.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1060',
  'bedside-table-fhd-bst-1060-fhd-bst-1060',
  'FHD-BST-1060',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  210.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 210.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 189.0}, {"min_qty": 81, "max_qty": null, "unit_price": 168.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522291/ceutamqbb8z81h4ap9tk.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1061',
  'bedside-table-fhd-bst-1061-fhd-bst-1061',
  'FHD-BST-1061',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  212.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 212.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 191.25}, {"min_qty": 81, "max_qty": null, "unit_price": 170.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/kb7s2aaftgxilo2l5fai.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1062',
  'bedside-table-fhd-bst-1062-fhd-bst-1062',
  'FHD-BST-1062',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  215.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 215.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 193.5}, {"min_qty": 81, "max_qty": null, "unit_price": 172.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/ssr11uvnzkboqcjyvzcz.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1063',
  'bedside-table-fhd-bst-1063-fhd-bst-1063',
  'FHD-BST-1063',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  217.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 217.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 195.75}, {"min_qty": 81, "max_qty": null, "unit_price": 174.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/fl80k38ddcp9napspm4y.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000001',
  'Bedside Table FHD-BST-1064',
  'bedside-table-fhd-bst-1064-fhd-bst-1064',
  'FHD-BST-1064',
  'Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.',
  220.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 220.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 198.0}, {"min_qty": 81, "max_qty": null, "unit_price": 176.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/fbdwem8ms6meqbjyr0am.jpg']::TEXT[],
  '{"Dimensions": "18 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bedside Tables", "Subcategory": "bedside-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1001',
  'study-tables-&-desk-fhd-stt-1001-fhd-stt-1001',
  'FHD-STT-1001',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  442.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 442.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 398.25}, {"min_qty": 41, "max_qty": null, "unit_price": 354.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/cep83frxdroa7zdgje94.jpg']::TEXT[],
  '{"Dimensions": "50 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1002',
  'study-tables-&-desk-fhd-stt-1002-fhd-stt-1002',
  'FHD-STT-1002',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  445.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 445.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 400.5}, {"min_qty": 41, "max_qty": null, "unit_price": 356.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/dw6kyk0jjnsal71mto2l.jpg']::TEXT[],
  '{"Dimensions": "50 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1003',
  'study-tables-&-desk-fhd-stt-1003-fhd-stt-1003',
  'FHD-STT-1003',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  447.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 447.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 402.75}, {"min_qty": 41, "max_qty": null, "unit_price": 358.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/qv4uqxuvarw8qre4bzzw.jpg']::TEXT[],
  '{"Dimensions": "52 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1004',
  'study-tables-&-desk-fhd-stt-1004-fhd-stt-1004',
  'FHD-STT-1004',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  450.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 450.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 405.0}, {"min_qty": 41, "max_qty": null, "unit_price": 360.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/nvc1ggwifgvopv7rxpem.jpg']::TEXT[],
  '{"Dimensions": "52 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1005',
  'study-tables-&-desk-fhd-stt-1005-fhd-stt-1005',
  'FHD-STT-1005',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  452.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 452.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 407.25}, {"min_qty": 41, "max_qty": null, "unit_price": 362.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/vm3qybautbxetb4qn36r.jpg']::TEXT[],
  '{"Dimensions": "46 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1006',
  'study-tables-&-desk-fhd-stt-1006-fhd-stt-1006',
  'FHD-STT-1006',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  455.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 455.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 409.5}, {"min_qty": 41, "max_qty": null, "unit_price": 364.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522270/uenh74lebnkvgpqbaj9d.jpg']::TEXT[],
  '{"Dimensions": "46 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1007',
  'study-tables-&-desk-fhd-stt-1007-fhd-stt-1007',
  'FHD-STT-1007',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  457.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 457.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 411.75}, {"min_qty": 41, "max_qty": null, "unit_price": 366.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/nvdrte0tmzxxhmrfvvbb.jpg']::TEXT[],
  '{"Dimensions": "54 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1008',
  'study-tables-&-desk-fhd-stt-1008-fhd-stt-1008',
  'FHD-STT-1008',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  460.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 460.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 414.0}, {"min_qty": 41, "max_qty": null, "unit_price": 368.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/ffju0fhmoqrmt94kbbhg.jpg']::TEXT[],
  '{"Dimensions": "55 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1009',
  'study-tables-&-desk-fhd-stt-1009-fhd-stt-1009',
  'FHD-STT-1009',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  462.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 462.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 416.25}, {"min_qty": 41, "max_qty": null, "unit_price": 370.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/r4anjqcgnfdm3i1kttyi.jpg']::TEXT[],
  '{"Dimensions": "48 x 18 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1010',
  'study-tables-&-desk-fhd-stt-1010-fhd-stt-1010',
  'FHD-STT-1010',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  465.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 465.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 418.5}, {"min_qty": 41, "max_qty": null, "unit_price": 372.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/i9fv6tkjfsfbieahh7t8.jpg']::TEXT[],
  '{"Dimensions": "52 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1011',
  'study-tables-&-desk-fhd-stt-1011-fhd-stt-1011',
  'FHD-STT-1011',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  467.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 467.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 420.75}, {"min_qty": 41, "max_qty": null, "unit_price": 374.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/vhyu8nnahgsrzwyzvsth.jpg']::TEXT[],
  '{"Dimensions": "48 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1012',
  'study-tables-&-desk-fhd-stt-1012-fhd-stt-1012',
  'FHD-STT-1012',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  470.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 470.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 423.0}, {"min_qty": 41, "max_qty": null, "unit_price": 376.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/kqbabc7nvegxupbxxvln.jpg']::TEXT[],
  '{"Dimensions": "55 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1013',
  'study-tables-&-desk-fhd-stt-1013-fhd-stt-1013',
  'FHD-STT-1013',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  472.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 472.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 425.25}, {"min_qty": 41, "max_qty": null, "unit_price": 378.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/upeqgqedt0ni2isklfpk.jpg']::TEXT[],
  '{"Dimensions": "47 x 17 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1014',
  'study-tables-&-desk-fhd-stt-1014-fhd-stt-1014',
  'FHD-STT-1014',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  475.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 475.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 427.5}, {"min_qty": 41, "max_qty": null, "unit_price": 380.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/egblhytj9xzkrbd3g8tz.jpg']::TEXT[],
  '{"Dimensions": "54 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1015',
  'study-tables-&-desk-fhd-stt-1015-fhd-stt-1015',
  'FHD-STT-1015',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  390.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 390.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 351.0}, {"min_qty": 41, "max_qty": null, "unit_price": 312.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/eujgeo8z5uvnewcbhocd.jpg']::TEXT[],
  '{"Dimensions": "36 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1016',
  'study-tables-&-desk-fhd-stt-1016-fhd-stt-1016',
  'FHD-STT-1016',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  392.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 392.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 353.25}, {"min_qty": 41, "max_qty": null, "unit_price": 314.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/ignqpbswhzcvqw3mx171.jpg']::TEXT[],
  '{"Dimensions": "36 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1017',
  'study-tables-&-desk-fhd-stt-1017-fhd-stt-1017',
  'FHD-STT-1017',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/ripfrmhme8cwiw8mz9o3.jpg']::TEXT[],
  '{"Dimensions": "52 x 18 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1018',
  'study-tables-&-desk-fhd-stt-1018-fhd-stt-1018',
  'FHD-STT-1018',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  397.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 397.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 357.75}, {"min_qty": 41, "max_qty": null, "unit_price": 318.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/qyqopm0wmazvxcpkjtuy.jpg']::TEXT[],
  '{"Dimensions": "54 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1019',
  'study-tables-&-desk-fhd-stt-1019-fhd-stt-1019',
  'FHD-STT-1019',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  400.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 400.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 360.0}, {"min_qty": 41, "max_qty": null, "unit_price": 320.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/w8xybm2both3kre2sqpc.jpg']::TEXT[],
  '{"Dimensions": "52 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1020',
  'study-tables-&-desk-fhd-stt-1020-fhd-stt-1020',
  'FHD-STT-1020',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  402.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 402.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 362.25}, {"min_qty": 41, "max_qty": null, "unit_price": 322.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/xm8wzy2wml1u4m6fvvvm.jpg']::TEXT[],
  '{"Dimensions": "57 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1021',
  'study-tables-&-desk-fhd-stt-1021-fhd-stt-1021',
  'FHD-STT-1021',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  405.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 405.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 364.5}, {"min_qty": 41, "max_qty": null, "unit_price": 324.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/gnhxxkajkd0cm2cfzjxj.jpg']::TEXT[],
  '{"Dimensions": "47 x 17 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1022',
  'study-tables-&-desk-fhd-stt-1022-fhd-stt-1022',
  'FHD-STT-1022',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  407.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 407.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 366.75}, {"min_qty": 41, "max_qty": null, "unit_price": 326.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/pfocfxqfyjfsdltofulz.jpg']::TEXT[],
  '{"Dimensions": "52 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1023',
  'study-tables-&-desk-fhd-stt-1023-fhd-stt-1023',
  'FHD-STT-1023',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  410.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 410.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 369.0}, {"min_qty": 41, "max_qty": null, "unit_price": 328.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522193/htthbbc3jiqioszrl9iu.jpg']::TEXT[],
  '{"Dimensions": "47 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1024',
  'study-tables-&-desk-fhd-stt-1024-fhd-stt-1024',
  'FHD-STT-1024',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  412.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 412.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 371.25}, {"min_qty": 41, "max_qty": null, "unit_price": 330.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/bvunuknggvklzmglz8ns.jpg']::TEXT[],
  '{"Dimensions": "36 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1025',
  'study-tables-&-desk-fhd-stt-1025-fhd-stt-1025',
  'FHD-STT-1025',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  415.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 415.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 373.5}, {"min_qty": 41, "max_qty": null, "unit_price": 332.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/kk4wqshyqvlsgcr8bffd.jpg']::TEXT[],
  '{"Dimensions": "64 x 24 x 29.5 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1026',
  'study-tables-&-desk-fhd-stt-1026-fhd-stt-1026',
  'FHD-STT-1026',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  417.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 417.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 375.75}, {"min_qty": 41, "max_qty": null, "unit_price": 334.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/zareroccmdgmjljy8sg7.jpg']::TEXT[],
  '{"Dimensions": "65 x 29 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1027',
  'study-tables-&-desk-fhd-stt-1027-fhd-stt-1027',
  'FHD-STT-1027',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  420.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 420.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 378.0}, {"min_qty": 41, "max_qty": null, "unit_price": 336.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/rtza6lt7e0ejvdityk2e.jpg']::TEXT[],
  '{"Dimensions": "84 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1028',
  'study-tables-&-desk-fhd-stt-1028-fhd-stt-1028',
  'FHD-STT-1028',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  422.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 422.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 380.25}, {"min_qty": 41, "max_qty": null, "unit_price": 338.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/a7fe6dokio5fv2x8ltkm.jpg']::TEXT[],
  '{"Dimensions": "60 x 30 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1029',
  'study-tables-&-desk-fhd-stt-1029-fhd-stt-1029',
  'FHD-STT-1029',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  425.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 425.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 382.5}, {"min_qty": 41, "max_qty": null, "unit_price": 340.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/ugzfwinomxsz6v9mheh9.jpg']::TEXT[],
  '{"Dimensions": "64 x 24 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1030',
  'study-tables-&-desk-fhd-stt-1030-fhd-stt-1030',
  'FHD-STT-1030',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  427.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 427.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 384.75}, {"min_qty": 41, "max_qty": null, "unit_price": 342.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/grdfzpzb2pp23j5blqfu.jpg']::TEXT[],
  '{"Dimensions": "72 x 30 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1031',
  'study-tables-&-desk-fhd-stt-1031-fhd-stt-1031',
  'FHD-STT-1031',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  430.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 430.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 387.0}, {"min_qty": 41, "max_qty": null, "unit_price": 344.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/rv46hulh7chozqjuusio.jpg']::TEXT[],
  '{"Dimensions": "60 x 30 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1032',
  'study-tables-&-desk-fhd-stt-1032-fhd-stt-1032',
  'FHD-STT-1032',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  432.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 432.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 389.25}, {"min_qty": 41, "max_qty": null, "unit_price": 346.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/ln48x9tn8utkhytpsq30.jpg']::TEXT[],
  '{"Dimensions": "64 x 30 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1033',
  'study-tables-&-desk-fhd-stt-1033-fhd-stt-1033',
  'FHD-STT-1033',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  435.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 435.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 391.5}, {"min_qty": 41, "max_qty": null, "unit_price": 348.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/qwurcusqtgho64hmcwdz.jpg']::TEXT[],
  '{"Dimensions": "48 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1034',
  'study-tables-&-desk-fhd-stt-1034-fhd-stt-1034',
  'FHD-STT-1034',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  437.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 437.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 393.75}, {"min_qty": 41, "max_qty": null, "unit_price": 350.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/sxm6wisfw2bqvazz5rky.jpg']::TEXT[],
  '{"Dimensions": "48 x 24 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1035',
  'study-tables-&-desk-fhd-stt-1035-fhd-stt-1035',
  'FHD-STT-1035',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  440.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 440.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 396.0}, {"min_qty": 41, "max_qty": null, "unit_price": 352.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/mq7xcpppqwmufykykffe.jpg']::TEXT[],
  '{"Dimensions": "64 x 29 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1036',
  'study-tables-&-desk-fhd-stt-1036-fhd-stt-1036',
  'FHD-STT-1036',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  442.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 442.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 398.25}, {"min_qty": 41, "max_qty": null, "unit_price": 354.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522226/vfq8bzs7xet3jkdjrpkh.jpg']::TEXT[],
  '{"Dimensions": "60 x 18 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1037',
  'study-tables-&-desk-fhd-stt-1037-fhd-stt-1037',
  'FHD-STT-1037',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  445.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 445.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 400.5}, {"min_qty": 41, "max_qty": null, "unit_price": 356.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/s8ufoiuaywpfthkvo1xp.jpg']::TEXT[],
  '{"Dimensions": "60 x 23 x 31 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1038',
  'study-tables-&-desk-fhd-stt-1038-fhd-stt-1038',
  'FHD-STT-1038',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  447.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 447.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 402.75}, {"min_qty": 41, "max_qty": null, "unit_price": 358.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/vu5mv3pnnuo13l6k7anw.jpg']::TEXT[],
  '{"Dimensions": "55 x 27 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1039',
  'study-tables-&-desk-fhd-stt-1039-fhd-stt-1039',
  'FHD-STT-1039',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  450.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 450.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 405.0}, {"min_qty": 41, "max_qty": null, "unit_price": 360.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522193/kpsrc4ozx5shcfis48rk.jpg']::TEXT[],
  '{"Dimensions": "77 x 31 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1040',
  'study-tables-&-desk-fhd-stt-1040-fhd-stt-1040',
  'FHD-STT-1040',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  452.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 452.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 407.25}, {"min_qty": 41, "max_qty": null, "unit_price": 362.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/d4ostk4f1ef2qc4krkuc.jpg']::TEXT[],
  '{"Dimensions": "70 x 27 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1041',
  'study-tables-&-desk-fhd-stt-1041-fhd-stt-1041',
  'FHD-STT-1041',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  455.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 455.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 409.5}, {"min_qty": 41, "max_qty": null, "unit_price": 364.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/roukvrkskgpcfuhwwsfj.jpg']::TEXT[],
  '{"Dimensions": "70 x 27 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1042',
  'study-tables-&-desk-fhd-stt-1042-fhd-stt-1042',
  'FHD-STT-1042',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  457.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 457.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 411.75}, {"min_qty": 41, "max_qty": null, "unit_price": 366.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/ghunuwdq9jmifgtmhd4v.jpg']::TEXT[],
  '{"Dimensions": "70 x 27 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1043',
  'study-tables-&-desk-fhd-stt-1043-fhd-stt-1043',
  'FHD-STT-1043',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  460.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 460.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 414.0}, {"min_qty": 41, "max_qty": null, "unit_price": 368.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/bqqvomkclsaywfndsv3c.jpg']::TEXT[],
  '{"Dimensions": "44 x 24 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1044',
  'study-tables-&-desk-fhd-stt-1044-fhd-stt-1044',
  'FHD-STT-1044',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  462.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 462.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 416.25}, {"min_qty": 41, "max_qty": null, "unit_price": 370.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522201/p2mt5qizgzd2nfwzg4qi.jpg']::TEXT[],
  '{"Dimensions": "50 x 24 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1045',
  'study-tables-&-desk-fhd-stt-1045-fhd-stt-1045',
  'FHD-STT-1045',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  465.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 465.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 418.5}, {"min_qty": 41, "max_qty": null, "unit_price": 372.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/qrar1y6ujlvqp1ciuq82.jpg']::TEXT[],
  '{"Dimensions": "60 x 20 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1046',
  'study-tables-&-desk-fhd-stt-1046-fhd-stt-1046',
  'FHD-STT-1046',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  467.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 467.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 420.75}, {"min_qty": 41, "max_qty": null, "unit_price": 374.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/rz7do7ljrhq6ybpgcabc.jpg']::TEXT[],
  '{"Dimensions": "48 x 24 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1047',
  'study-tables-&-desk-fhd-stt-1047-fhd-stt-1047',
  'FHD-STT-1047',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  470.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 470.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 423.0}, {"min_qty": 41, "max_qty": null, "unit_price": 376.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522261/np57hduflw0qif5rrfb2.jpg']::TEXT[],
  '{"Dimensions": "48 x 24 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000005',
  'Study Tables & Desk FHD-STT-1048',
  'study-tables-&-desk-fhd-stt-1048-fhd-stt-1048',
  'FHD-STT-1048',
  'Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.',
  472.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 472.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 425.25}, {"min_qty": 41, "max_qty": null, "unit_price": 378.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/ut5ripyckacbgtbaojgt.jpg']::TEXT[],
  '{"Dimensions": "46 x 22 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Study Tables & Desks", "Subcategory": "study-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1001',
  'console-table-fhd-cst-1001-fhd-cst-1001',
  'FHD-CST-1001',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  372.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 372.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 335.25}, {"min_qty": 41, "max_qty": null, "unit_price": 298.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/tl7mjiee8dyyliuhi34x.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1002',
  'console-table-fhd-cst-1002-fhd-cst-1002',
  'FHD-CST-1002',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  375.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 375.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 337.5}, {"min_qty": 41, "max_qty": null, "unit_price": 300.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/izwsnfszc3ofernepi4y.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1003',
  'console-table-fhd-cst-1003-fhd-cst-1003',
  'FHD-CST-1003',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  377.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 377.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 339.75}, {"min_qty": 41, "max_qty": null, "unit_price": 302.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522209/jok0akww0qy1l9d1djzx.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1004',
  'console-table-fhd-cst-1004-fhd-cst-1004',
  'FHD-CST-1004',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  380.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 380.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 342.0}, {"min_qty": 41, "max_qty": null, "unit_price": 304.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/qmb5t4jfshc9p1w8eyke.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1005',
  'console-table-fhd-cst-1005-fhd-cst-1005',
  'FHD-CST-1005',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  382.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 382.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 344.25}, {"min_qty": 41, "max_qty": null, "unit_price": 306.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/qzl5ireuqzfadzdfadka.jpg']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1006',
  'console-table-fhd-cst-1006-fhd-cst-1006',
  'FHD-CST-1006',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/wizoluhcy4grkgphkrwn.jpg']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1007',
  'console-table-fhd-cst-1007-fhd-cst-1007',
  'FHD-CST-1007',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  387.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 387.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 348.75}, {"min_qty": 41, "max_qty": null, "unit_price": 310.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/wbcnwnjcrxw35z3ajw8e.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1008',
  'console-table-fhd-cst-1008-fhd-cst-1008',
  'FHD-CST-1008',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  390.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 390.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 351.0}, {"min_qty": 41, "max_qty": null, "unit_price": 312.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/pires5wu0g0la8jcijbj.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1009',
  'console-table-fhd-cst-1009-fhd-cst-1009',
  'FHD-CST-1009',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  392.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 392.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 353.25}, {"min_qty": 41, "max_qty": null, "unit_price": 314.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/mbvlwmpp1eiqcjuhlhzd.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1010',
  'console-table-fhd-cst-1010-fhd-cst-1010',
  'FHD-CST-1010',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522184/wiezfks3xayjqbdzux3x.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1011',
  'console-table-fhd-cst-1011-fhd-cst-1011',
  'FHD-CST-1011',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  397.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 397.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 357.75}, {"min_qty": 41, "max_qty": null, "unit_price": 318.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/kmfexgp1i5d9fj0soyy8.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1012',
  'console-table-fhd-cst-1012-fhd-cst-1012',
  'FHD-CST-1012',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  400.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 400.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 360.0}, {"min_qty": 41, "max_qty": null, "unit_price": 320.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/bywdeiknmawv5ftztjie.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1013',
  'console-table-fhd-cst-1013-fhd-cst-1013',
  'FHD-CST-1013',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  402.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 402.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 362.25}, {"min_qty": 41, "max_qty": null, "unit_price": 322.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/xc8ip53iewthw95eqmqo.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1014',
  'console-table-fhd-cst-1014-fhd-cst-1014',
  'FHD-CST-1014',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  405.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 405.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 364.5}, {"min_qty": 41, "max_qty": null, "unit_price": 324.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/rkidp2rj38hn3ob95vms.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1015',
  'console-table-fhd-cst-1015-fhd-cst-1015',
  'FHD-CST-1015',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  320.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 320.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 288.0}, {"min_qty": 41, "max_qty": null, "unit_price": 256.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/keuyxm8mdmzdgu6vzoyi.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1016',
  'console-table-fhd-cst-1016-fhd-cst-1016',
  'FHD-CST-1016',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  322.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 322.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 290.25}, {"min_qty": 41, "max_qty": null, "unit_price": 258.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/e03tykqfioozhzgqsrvx.jpg']::TEXT[],
  '{"Dimensions": "38 x 13 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1017',
  'console-table-fhd-cst-1017-fhd-cst-1017',
  'FHD-CST-1017',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  325.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 325.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 292.5}, {"min_qty": 41, "max_qty": null, "unit_price": 260.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/s7qqwcwxoxyrdhngi2x0.jpg']::TEXT[],
  '{"Dimensions": "38 x 13 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1018',
  'console-table-fhd-cst-1018-fhd-cst-1018',
  'FHD-CST-1018',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  327.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 327.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 294.75}, {"min_qty": 41, "max_qty": null, "unit_price": 262.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/pjtcbljgxsfhmv3evr08.jpg']::TEXT[],
  '{"Dimensions": "40 x 13 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1019',
  'console-table-fhd-cst-1019-fhd-cst-1019',
  'FHD-CST-1019',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  330.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 330.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 297.0}, {"min_qty": 41, "max_qty": null, "unit_price": 264.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/kks6qeivcli2rfxsm57g.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1020',
  'console-table-fhd-cst-1020-fhd-cst-1020',
  'FHD-CST-1020',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  332.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 332.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 299.25}, {"min_qty": 41, "max_qty": null, "unit_price": 266.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522259/fpgve81jflpxj90uwrko.jpg']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1021',
  'console-table-fhd-cst-1021-fhd-cst-1021',
  'FHD-CST-1021',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  335.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 335.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 301.5}, {"min_qty": 41, "max_qty": null, "unit_price": 268.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/lj3udswijxuxjj0jk2zb.jpg']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1022',
  'console-table-fhd-cst-1022-fhd-cst-1022',
  'FHD-CST-1022',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  337.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 337.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 303.75}, {"min_qty": 41, "max_qty": null, "unit_price": 270.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/ysr49bijowl9yap7tewl.jpg']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1023',
  'console-table-fhd-cst-1023-fhd-cst-1023',
  'FHD-CST-1023',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  340.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 340.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 306.0}, {"min_qty": 41, "max_qty": null, "unit_price": 272.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/rnymiaxcr4tbsifqlqtx.jpg']::TEXT[],
  '{"Dimensions": "42 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1024',
  'console-table-fhd-cst-1024-fhd-cst-1024',
  'FHD-CST-1024',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  342.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 342.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 308.25}, {"min_qty": 41, "max_qty": null, "unit_price": 274.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522235/fd20wgv5yannzev55j0s.jpg']::TEXT[],
  '{"Dimensions": "42 x 16 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1025',
  'console-table-fhd-cst-1025-fhd-cst-1025',
  'FHD-CST-1025',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  345.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 345.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 310.5}, {"min_qty": 41, "max_qty": null, "unit_price": 276.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/i3e6jegrifwy2y8y5rxf.jpg']::TEXT[],
  '{"Dimensions": "Custom Dimensions", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1026',
  'console-table-fhd-cst-1026-fhd-cst-1026',
  'FHD-CST-1026',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  347.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 347.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 312.75}, {"min_qty": 41, "max_qty": null, "unit_price": 278.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522289/xawmfwn7buu2ueveposj.jpg']::TEXT[],
  '{"Dimensions": "Custom Dimensions", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1027',
  'console-table-fhd-cst-1027-fhd-cst-1027',
  'FHD-CST-1027',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  350.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 350.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 315.0}, {"min_qty": 41, "max_qty": null, "unit_price": 280.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/wkjistphsh0sjvogmvyd.jpg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1028',
  'console-table-fhd-cst-1028-fhd-cst-1028',
  'FHD-CST-1028',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  352.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 352.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 317.25}, {"min_qty": 41, "max_qty": null, "unit_price": 282.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/q6xcf8h6sutr0hkznasa.jpg']::TEXT[],
  '{"Dimensions": "42 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1029',
  'console-table-fhd-cst-1029-fhd-cst-1029',
  'FHD-CST-1029',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  355.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 355.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 319.5}, {"min_qty": 41, "max_qty": null, "unit_price": 284.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522287/p421uf0jtjhz9yfgwo28.jpg']::TEXT[],
  '{"Dimensions": "44 x 14 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Console Table FHD-CST-1030',
  'console-table-fhd-cst-1030-fhd-cst-1030',
  'FHD-CST-1030',
  'Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.',
  357.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 357.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 321.75}, {"min_qty": 41, "max_qty": null, "unit_price": 286.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/yukxrd0wkbwypcn9qjlx.jpg']::TEXT[],
  '{"Dimensions": "44 x 14 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1001',
  'bookshelves-&-storage-fhd-bs-1001-fhd-bs-1001',
  'FHD-BS-1001',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  412.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 412.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 371.25}, {"min_qty": 41, "max_qty": null, "unit_price": 330.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/a6knrsuemunxp0fmfvhh.jpg']::TEXT[],
  '{"Dimensions": "26 x 13 x 38 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1002',
  'bookshelves-&-storage-fhd-bs-1002-fhd-bs-1002',
  'FHD-BS-1002',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  415.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 415.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 373.5}, {"min_qty": 41, "max_qty": null, "unit_price": 332.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522254/gzb8whgu0gsqtqjw7env.jpg']::TEXT[],
  '{"Dimensions": "21 x 11 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1013',
  'bookshelves-&-storage-fhd-bs-1013-fhd-bs-1013',
  'FHD-BS-1013',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  442.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 442.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 398.25}, {"min_qty": 41, "max_qty": null, "unit_price": 354.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/ohbypgqcqwcjglnrqnra.jpg']::TEXT[],
  '{"Dimensions": "Custom Dimensions", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1014',
  'bookshelves-&-storage-fhd-bs-1014-fhd-bs-1014',
  'FHD-BS-1014',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  445.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 445.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 400.5}, {"min_qty": 41, "max_qty": null, "unit_price": 356.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/y123eb6cxrp53stk4zld.jpg']::TEXT[],
  '{"Dimensions": "Custom Dimensions", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1015',
  'bookshelves-&-storage-fhd-bs-1015-fhd-bs-1015',
  'FHD-BS-1015',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  360.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 360.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 324.0}, {"min_qty": 41, "max_qty": null, "unit_price": 288.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/vy0m99kaqck52msabaq4.jpg']::TEXT[],
  '{"Dimensions": "24 x 14 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1016',
  'bookshelves-&-storage-fhd-bs-1016-fhd-bs-1016',
  'FHD-BS-1016',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  362.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 362.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 326.25}, {"min_qty": 41, "max_qty": null, "unit_price": 290.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522197/lyjcfyqostntfeo0lqrd.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1017',
  'bookshelves-&-storage-fhd-bs-1017-fhd-bs-1017',
  'FHD-BS-1017',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  365.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 365.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 328.5}, {"min_qty": 41, "max_qty": null, "unit_price": 292.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/y72c5uuhwdij8wbded3o.jpg']::TEXT[],
  '{"Dimensions": "24 x 14 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1018',
  'bookshelves-&-storage-fhd-bs-1018-fhd-bs-1018',
  'FHD-BS-1018',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  367.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 367.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 330.75}, {"min_qty": 41, "max_qty": null, "unit_price": 294.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/c8ltf0a7lrzbhbf0griq.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1019',
  'bookshelves-&-storage-fhd-bs-1019-fhd-bs-1019',
  'FHD-BS-1019',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  370.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 370.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 333.0}, {"min_qty": 41, "max_qty": null, "unit_price": 296.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/fqoy53cdvj6uldzaj12b.jpg']::TEXT[],
  '{"Dimensions": "24 x 14 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1020',
  'bookshelves-&-storage-fhd-bs-1020-fhd-bs-1020',
  'FHD-BS-1020',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  372.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 372.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 335.25}, {"min_qty": 41, "max_qty": null, "unit_price": 298.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/kjdgtzrtxoefbz3bq8m2.jpg']::TEXT[],
  '{"Dimensions": "20 x 14 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1021',
  'bookshelves-&-storage-fhd-bs-1021-fhd-bs-1021',
  'FHD-BS-1021',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  375.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 375.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 337.5}, {"min_qty": 41, "max_qty": null, "unit_price": 300.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/csbbnmiy4hzyksh0anas.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 38 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1022',
  'bookshelves-&-storage-fhd-bs-1022-fhd-bs-1022',
  'FHD-BS-1022',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  377.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 377.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 339.75}, {"min_qty": 41, "max_qty": null, "unit_price": 302.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/ivks0dggftm52ktpxf0p.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 38 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1023',
  'bookshelves-&-storage-fhd-bs-1023-fhd-bs-1023',
  'FHD-BS-1023',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  380.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 380.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 342.0}, {"min_qty": 41, "max_qty": null, "unit_price": 304.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/oa2toaxsf82lrs22sh3g.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 38 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1024',
  'bookshelves-&-storage-fhd-bs-1024-fhd-bs-1024',
  'FHD-BS-1024',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  382.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 382.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 344.25}, {"min_qty": 41, "max_qty": null, "unit_price": 306.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/qw6cdjw6mxdsr7wmehdd.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 38 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1025',
  'bookshelves-&-storage-fhd-bs-1025-fhd-bs-1025',
  'FHD-BS-1025',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/fzgupjrsvqfew3gcjdzt.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 38 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1026',
  'bookshelves-&-storage-fhd-bs-1026-fhd-bs-1026',
  'FHD-BS-1026',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  387.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 387.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 348.75}, {"min_qty": 41, "max_qty": null, "unit_price": 310.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/oj0icttnl3kzntn2dngy.jpg']::TEXT[],
  '{"Dimensions": "22 x 14 x 38 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1029',
  'bookshelves-&-storage-fhd-bs-1029-fhd-bs-1029',
  'FHD-BS-1029',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/vl7tezpgkazcx03kywuf.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1030',
  'bookshelves-&-storage-fhd-bs-1030-fhd-bs-1030',
  'FHD-BS-1030',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  397.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 397.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 357.75}, {"min_qty": 41, "max_qty": null, "unit_price": 318.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/abhkd2lr2mqlwhoinkqd.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1031',
  'bookshelves-&-storage-fhd-bs-1031-fhd-bs-1031',
  'FHD-BS-1031',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  400.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 400.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 360.0}, {"min_qty": 41, "max_qty": null, "unit_price": 320.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/u8xppweuswi5manwd0zs.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1032',
  'bookshelves-&-storage-fhd-bs-1032-fhd-bs-1032',
  'FHD-BS-1032',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  402.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 402.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 362.25}, {"min_qty": 41, "max_qty": null, "unit_price": 322.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/ofeonkthoqa1u3nhdnq0.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1033',
  'bookshelves-&-storage-fhd-bs-1033-fhd-bs-1033',
  'FHD-BS-1033',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  405.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 405.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 364.5}, {"min_qty": 41, "max_qty": null, "unit_price": 324.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/mkeexkgs9emlt2bto3v1.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1034',
  'bookshelves-&-storage-fhd-bs-1034-fhd-bs-1034',
  'FHD-BS-1034',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  407.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 407.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 366.75}, {"min_qty": 41, "max_qty": null, "unit_price": 326.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/uenxkybmxxsft7jo2jxp.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1035',
  'bookshelves-&-storage-fhd-bs-1035-fhd-bs-1035',
  'FHD-BS-1035',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  410.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 410.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 369.0}, {"min_qty": 41, "max_qty": null, "unit_price": 328.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/naqoex992vqb5w16muje.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1036',
  'bookshelves-&-storage-fhd-bs-1036-fhd-bs-1036',
  'FHD-BS-1036',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  412.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 412.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 371.25}, {"min_qty": 41, "max_qty": null, "unit_price": 330.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/p8hwukl3kom5rps3yrsg.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1037',
  'bookshelves-&-storage-fhd-bs-1037-fhd-bs-1037',
  'FHD-BS-1037',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  415.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 415.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 373.5}, {"min_qty": 41, "max_qty": null, "unit_price": 332.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/yyxr6vtr4ppcra0cadb4.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1038',
  'bookshelves-&-storage-fhd-bs-1038-fhd-bs-1038',
  'FHD-BS-1038',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  417.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 417.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 375.75}, {"min_qty": 41, "max_qty": null, "unit_price": 334.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/uey3cv93sm5nenfkkwve.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1039',
  'bookshelves-&-storage-fhd-bs-1039-fhd-bs-1039',
  'FHD-BS-1039',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  420.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 420.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 378.0}, {"min_qty": 41, "max_qty": null, "unit_price": 336.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/vhwlhzcgkr3colxbfvih.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1040',
  'bookshelves-&-storage-fhd-bs-1040-fhd-bs-1040',
  'FHD-BS-1040',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  422.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 422.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 380.25}, {"min_qty": 41, "max_qty": null, "unit_price": 338.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522186/trbfsc5jxvgpn9c3wwsy.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1041',
  'bookshelves-&-storage-fhd-bs-1041-fhd-bs-1041',
  'FHD-BS-1041',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  425.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 425.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 382.5}, {"min_qty": 41, "max_qty": null, "unit_price": 340.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/zy1p3bbnicswq5wfwzdf.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1042',
  'bookshelves-&-storage-fhd-bs-1042-fhd-bs-1042',
  'FHD-BS-1042',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  427.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 427.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 384.75}, {"min_qty": 41, "max_qty": null, "unit_price": 342.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/unvomozo2dh69sun14l9.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1043',
  'bookshelves-&-storage-fhd-bs-1043-fhd-bs-1043',
  'FHD-BS-1043',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  430.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 430.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 387.0}, {"min_qty": 41, "max_qty": null, "unit_price": 344.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/xmvn8ocnmyzyynlka3vm.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1044',
  'bookshelves-&-storage-fhd-bs-1044-fhd-bs-1044',
  'FHD-BS-1044',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  432.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 432.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 389.25}, {"min_qty": 41, "max_qty": null, "unit_price": 346.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/ojx1y45qf5xk5cozyvlh.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1045',
  'bookshelves-&-storage-fhd-bs-1045-fhd-bs-1045',
  'FHD-BS-1045',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  435.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 435.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 391.5}, {"min_qty": 41, "max_qty": null, "unit_price": 348.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/er606focc1waylwx5jvv.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1046',
  'bookshelves-&-storage-fhd-bs-1046-fhd-bs-1046',
  'FHD-BS-1046',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  437.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 437.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 393.75}, {"min_qty": 41, "max_qty": null, "unit_price": 350.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/r17ki3r7toped9cl4j4v.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1047',
  'bookshelves-&-storage-fhd-bs-1047-fhd-bs-1047',
  'FHD-BS-1047',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  440.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 440.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 396.0}, {"min_qty": 41, "max_qty": null, "unit_price": 352.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/lnuz2ev37rxar9evwwuw.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1048',
  'bookshelves-&-storage-fhd-bs-1048-fhd-bs-1048',
  'FHD-BS-1048',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  442.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 442.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 398.25}, {"min_qty": 41, "max_qty": null, "unit_price": 354.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/ov20zjiuyzmw2nigkdkc.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1049',
  'bookshelves-&-storage-fhd-bs-1049-fhd-bs-1049',
  'FHD-BS-1049',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  445.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 445.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 400.5}, {"min_qty": 41, "max_qty": null, "unit_price": 356.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/fss4tsctlvcj0dy9yjml.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1050',
  'bookshelves-&-storage-fhd-bs-1050-fhd-bs-1050',
  'FHD-BS-1050',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  360.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 360.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 324.0}, {"min_qty": 41, "max_qty": null, "unit_price": 288.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/rfg9yxnyjxru7gc8p9sm.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1051',
  'bookshelves-&-storage-fhd-bs-1051-fhd-bs-1051',
  'FHD-BS-1051',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  362.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 362.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 326.25}, {"min_qty": 41, "max_qty": null, "unit_price": 290.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/efenhzgnktr3qci49oi6.jpg']::TEXT[],
  '{"Dimensions": "24 x 12 x 34 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1052',
  'bookshelves-&-storage-fhd-bs-1052-fhd-bs-1052',
  'FHD-BS-1052',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  365.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 365.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 328.5}, {"min_qty": 41, "max_qty": null, "unit_price": 292.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522188/gehziy6yjv9cetrcoz96.jpg']::TEXT[],
  '{"Dimensions": "20 x 11 x 29 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1053',
  'bookshelves-&-storage-fhd-bs-1053-fhd-bs-1053',
  'FHD-BS-1053',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  367.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 367.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 330.75}, {"min_qty": 41, "max_qty": null, "unit_price": 294.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/xiz3dkktwpjxawpciwpj.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 43 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1054',
  'bookshelves-&-storage-fhd-bs-1054-fhd-bs-1054',
  'FHD-BS-1054',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  370.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 370.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 333.0}, {"min_qty": 41, "max_qty": null, "unit_price": 296.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/zkx5vylxlcfb2eold3kg.jpg']::TEXT[],
  '{"Dimensions": "19 x 15 x 47 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1055',
  'bookshelves-&-storage-fhd-bs-1055-fhd-bs-1055',
  'FHD-BS-1055',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  372.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 372.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 335.25}, {"min_qty": 41, "max_qty": null, "unit_price": 298.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/iw2gdqne444xua7rfwfo.jpg']::TEXT[],
  '{"Dimensions": "12 x 10 x 28 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1056',
  'bookshelves-&-storage-fhd-bs-1056-fhd-bs-1056',
  'FHD-BS-1056',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  375.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 375.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 337.5}, {"min_qty": 41, "max_qty": null, "unit_price": 300.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522197/bcsj3n0v8c4fmjgkzh80.jpg']::TEXT[],
  '{"Dimensions": "15 x 12 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1057',
  'bookshelves-&-storage-fhd-bs-1057-fhd-bs-1057',
  'FHD-BS-1057',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  377.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 377.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 339.75}, {"min_qty": 41, "max_qty": null, "unit_price": 302.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/aoa2bibyvart9msjfisn.jpg']::TEXT[],
  '{"Dimensions": "12 x 10 x 28 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1058',
  'bookshelves-&-storage-fhd-bs-1058-fhd-bs-1058',
  'FHD-BS-1058',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  380.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 380.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 342.0}, {"min_qty": 41, "max_qty": null, "unit_price": 304.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/ezlotoucxba2ziqsodu0.jpg']::TEXT[],
  '{"Dimensions": "15 x 12 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1059',
  'bookshelves-&-storage-fhd-bs-1059-fhd-bs-1059',
  'FHD-BS-1059',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  382.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 382.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 344.25}, {"min_qty": 41, "max_qty": null, "unit_price": 306.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522184/vyflbhte6lv0s4pr1zbo.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 42 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1060',
  'bookshelves-&-storage-fhd-bs-1060-fhd-bs-1060',
  'FHD-BS-1060',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/ixl7smmm1y5ztk1p5ltg.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1061',
  'bookshelves-&-storage-fhd-bs-1061-fhd-bs-1061',
  'FHD-BS-1061',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  387.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 387.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 348.75}, {"min_qty": 41, "max_qty": null, "unit_price": 310.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/tdgy18at8tur4mcldhkg.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 32 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1062',
  'bookshelves-&-storage-fhd-bs-1062-fhd-bs-1062',
  'FHD-BS-1062',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  390.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 390.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 351.0}, {"min_qty": 41, "max_qty": null, "unit_price": 312.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/hbpedi5yktqktz0dwdqt.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 x 43 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1063',
  'bookshelves-&-storage-fhd-bs-1063-fhd-bs-1063',
  'FHD-BS-1063',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  392.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 392.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 353.25}, {"min_qty": 41, "max_qty": null, "unit_price": 314.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/xv3pb44k8mrvzgzna21g.jpg']::TEXT[],
  '{"Dimensions": "15 x 12 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1064',
  'bookshelves-&-storage-fhd-bs-1064-fhd-bs-1064',
  'FHD-BS-1064',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/bqpxaequsbt9hcrpwcoz.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1065',
  'bookshelves-&-storage-fhd-bs-1065-fhd-bs-1065',
  'FHD-BS-1065',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  397.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 397.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 357.75}, {"min_qty": 41, "max_qty": null, "unit_price": 318.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/tfqe8scwi0vzy2xxgqat.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 36 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1066',
  'bookshelves-&-storage-fhd-bs-1066-fhd-bs-1066',
  'FHD-BS-1066',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  400.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 400.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 360.0}, {"min_qty": 41, "max_qty": null, "unit_price": 320.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522235/vx1phv8rljct8nhpttqc.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 40 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1067',
  'bookshelves-&-storage-fhd-bs-1067-fhd-bs-1067',
  'FHD-BS-1067',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  402.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 402.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 362.25}, {"min_qty": 41, "max_qty": null, "unit_price": 322.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/qaoflogiab9w4brmb7bx.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 40 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1068',
  'bookshelves-&-storage-fhd-bs-1068-fhd-bs-1068',
  'FHD-BS-1068',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  405.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 405.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 364.5}, {"min_qty": 41, "max_qty": null, "unit_price": 324.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/lprsx52ogpilyoayr5an.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 40 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1069',
  'bookshelves-&-storage-fhd-bs-1069-fhd-bs-1069',
  'FHD-BS-1069',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  407.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 407.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 366.75}, {"min_qty": 41, "max_qty": null, "unit_price": 326.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/y9vrlgvaz3kybwandzhl.jpg']::TEXT[],
  '{"Dimensions": "33 x 16 x 35 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1070',
  'bookshelves-&-storage-fhd-bs-1070-fhd-bs-1070',
  'FHD-BS-1070',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  410.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 410.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 369.0}, {"min_qty": 41, "max_qty": null, "unit_price": 328.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/tgkoat6b9iyibq5sy3um.jpg']::TEXT[],
  '{"Dimensions": "13 x 13 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1071',
  'bookshelves-&-storage-fhd-bs-1071-fhd-bs-1071',
  'FHD-BS-1071',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  412.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 412.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 371.25}, {"min_qty": 41, "max_qty": null, "unit_price": 330.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/vuhgrjmptvlmvaem6vr6.jpg']::TEXT[],
  '{"Dimensions": "33 x 16 x 35 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000002',
  'Bookshelves & Storage FHD-BS-1072',
  'bookshelves-&-storage-fhd-bs-1072-fhd-bs-1072',
  'FHD-BS-1072',
  'Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.',
  415.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 415.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 373.5}, {"min_qty": 41, "max_qty": null, "unit_price": 332.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/bdj2skfpbrkxtbo5nc5q.jpg']::TEXT[],
  '{"Dimensions": "13 x 13 x 30 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Bookshelves & Storage", "Subcategory": "bookshelves"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1001',
  'round-table-fhd-rt-1001-fhd-rt-1001',
  'FHD-RT-1001',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  532.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 532.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 479.25}, {"min_qty": 41, "max_qty": null, "unit_price": 426.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/zsgtqs6necrqmtspt0ss.jpg']::TEXT[],
  '{"Dimensions": "D16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1002',
  'round-table-fhd-rt-1002-fhd-rt-1002',
  'FHD-RT-1002',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  535.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 535.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 481.5}, {"min_qty": 41, "max_qty": null, "unit_price": 428.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/stmsubxqfw1euk9aruax.jpg']::TEXT[],
  '{"Dimensions": "D16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1003',
  'round-table-fhd-rt-1003-fhd-rt-1003',
  'FHD-RT-1003',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  537.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 537.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 483.75}, {"min_qty": 41, "max_qty": null, "unit_price": 430.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/vtm1bjnafi9anvahsz1f.jpg']::TEXT[],
  '{"Dimensions": "D16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1004',
  'round-table-fhd-rt-1004-fhd-rt-1004',
  'FHD-RT-1004',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  540.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 540.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 486.0}, {"min_qty": 41, "max_qty": null, "unit_price": 432.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/m49hr8vw7zilmtqpicda.jpg']::TEXT[],
  '{"Dimensions": "D16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1005',
  'round-table-fhd-rt-1005-fhd-rt-1005',
  'FHD-RT-1005',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  542.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 542.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 488.25}, {"min_qty": 41, "max_qty": null, "unit_price": 434.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/umdjzqzipvtvuqbe7oax.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1006',
  'round-table-fhd-rt-1006-fhd-rt-1006',
  'FHD-RT-1006',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  545.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 545.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 490.5}, {"min_qty": 41, "max_qty": null, "unit_price": 436.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522233/ksuw0hpy5b6h1cykuhnw.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1007',
  'round-table-fhd-rt-1007-fhd-rt-1007',
  'FHD-RT-1007',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  547.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 547.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 492.75}, {"min_qty": 41, "max_qty": null, "unit_price": 438.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/gfgsqmf8sbwsrnoioq2j.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1008',
  'round-table-fhd-rt-1008-fhd-rt-1008',
  'FHD-RT-1008',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  550.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 550.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 495.0}, {"min_qty": 41, "max_qty": null, "unit_price": 440.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/y55cuhmpiapslxgmmln2.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1009',
  'round-table-fhd-rt-1009-fhd-rt-1009',
  'FHD-RT-1009',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  552.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 552.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 497.25}, {"min_qty": 41, "max_qty": null, "unit_price": 442.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/tnltnn026mbhkpyqioin.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1010',
  'round-table-fhd-rt-1010-fhd-rt-1010',
  'FHD-RT-1010',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  555.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 555.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 499.5}, {"min_qty": 41, "max_qty": null, "unit_price": 444.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/d8uefjosnmglldakbyio.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1011',
  'round-table-fhd-rt-1011-fhd-rt-1011',
  'FHD-RT-1011',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  557.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 557.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 501.75}, {"min_qty": 41, "max_qty": null, "unit_price": 446.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522285/wdqpa5dahorsfqyh4wfq.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1012',
  'round-table-fhd-rt-1012-fhd-rt-1012',
  'FHD-RT-1012',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  560.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 560.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 504.0}, {"min_qty": 41, "max_qty": null, "unit_price": 448.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/seosknyxkhpejlzbzomq.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1013',
  'round-table-fhd-rt-1013-fhd-rt-1013',
  'FHD-RT-1013',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  562.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 562.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 506.25}, {"min_qty": 41, "max_qty": null, "unit_price": 450.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522207/wglmnglvamdvowfnfnyd.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1014',
  'round-table-fhd-rt-1014-fhd-rt-1014',
  'FHD-RT-1014',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  565.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 565.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 508.5}, {"min_qty": 41, "max_qty": null, "unit_price": 452.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/i4ihra6siud96ywulclu.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1015',
  'round-table-fhd-rt-1015-fhd-rt-1015',
  'FHD-RT-1015',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  480.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 480.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 432.0}, {"min_qty": 41, "max_qty": null, "unit_price": 384.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/awcui1pzlc2pkojkvoiq.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1016',
  'round-table-fhd-rt-1016-fhd-rt-1016',
  'FHD-RT-1016',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  482.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 482.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 434.25}, {"min_qty": 41, "max_qty": null, "unit_price": 386.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/v0b9jj2vpxkrg1nsbxhf.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1017',
  'round-table-fhd-rt-1017-fhd-rt-1017',
  'FHD-RT-1017',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  485.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 485.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 436.5}, {"min_qty": 41, "max_qty": null, "unit_price": 388.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/nh1n8bhgrvpgylw4z5px.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1018',
  'round-table-fhd-rt-1018-fhd-rt-1018',
  'FHD-RT-1018',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  487.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 487.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 438.75}, {"min_qty": 41, "max_qty": null, "unit_price": 390.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/lsvgsxq7ecojhgwzofwz.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1019',
  'round-table-fhd-rt-1019-fhd-rt-1019',
  'FHD-RT-1019',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  490.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 490.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 441.0}, {"min_qty": 41, "max_qty": null, "unit_price": 392.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/ced9ywx43alkfu5wt7ex.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1020',
  'round-table-fhd-rt-1020-fhd-rt-1020',
  'FHD-RT-1020',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  492.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 492.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 443.25}, {"min_qty": 41, "max_qty": null, "unit_price": 394.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/iw9rmtfhnpsz7bjiml98.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1021',
  'round-table-fhd-rt-1021-fhd-rt-1021',
  'FHD-RT-1021',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  495.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 495.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 445.5}, {"min_qty": 41, "max_qty": null, "unit_price": 396.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/uezpjl5pmsd82vi1hyoh.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1022',
  'round-table-fhd-rt-1022-fhd-rt-1022',
  'FHD-RT-1022',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  497.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 497.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 447.75}, {"min_qty": 41, "max_qty": null, "unit_price": 398.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/q4ofzudcwiyxsnxg0rng.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1023',
  'round-table-fhd-rt-1023-fhd-rt-1023',
  'FHD-RT-1023',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  500.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 500.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 450.0}, {"min_qty": 41, "max_qty": null, "unit_price": 400.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/mbjhhzlh3uajg92appgk.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1024',
  'round-table-fhd-rt-1024-fhd-rt-1024',
  'FHD-RT-1024',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  502.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 502.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 452.25}, {"min_qty": 41, "max_qty": null, "unit_price": 402.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/oqewpnjeknd02nyylkc5.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1025',
  'round-table-fhd-rt-1025-fhd-rt-1025',
  'FHD-RT-1025',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  505.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 505.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 454.5}, {"min_qty": 41, "max_qty": null, "unit_price": 404.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/duzrhishaksgb6m4gz2i.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1026',
  'round-table-fhd-rt-1026-fhd-rt-1026',
  'FHD-RT-1026',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  507.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 507.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 456.75}, {"min_qty": 41, "max_qty": null, "unit_price": 406.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/dp4kfcl6ayu5yvlltskw.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1027',
  'round-table-fhd-rt-1027-fhd-rt-1027',
  'FHD-RT-1027',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  510.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 510.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 459.0}, {"min_qty": 41, "max_qty": null, "unit_price": 408.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/z1smqar2sqlvgd3r38bc.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1028',
  'round-table-fhd-rt-1028-fhd-rt-1028',
  'FHD-RT-1028',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  512.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 512.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 461.25}, {"min_qty": 41, "max_qty": null, "unit_price": 410.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/b5zxglb21i5xgevas3nq.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1029',
  'round-table-fhd-rt-1029-fhd-rt-1029',
  'FHD-RT-1029',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  515.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 515.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 463.5}, {"min_qty": 41, "max_qty": null, "unit_price": 412.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522254/vbctbrelvhkv31al2tml.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1030',
  'round-table-fhd-rt-1030-fhd-rt-1030',
  'FHD-RT-1030',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  517.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 517.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 465.75}, {"min_qty": 41, "max_qty": null, "unit_price": 414.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/ar2pv4p6ofx6tyb5tlsu.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1031',
  'round-table-fhd-rt-1031-fhd-rt-1031',
  'FHD-RT-1031',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  520.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 520.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 468.0}, {"min_qty": 41, "max_qty": null, "unit_price": 416.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522217/x2jbehvawpmpkegme7us.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1032',
  'round-table-fhd-rt-1032-fhd-rt-1032',
  'FHD-RT-1032',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  522.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 522.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 470.25}, {"min_qty": 41, "max_qty": null, "unit_price": 418.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/mzn5zro2nsh3vuywck0n.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1033',
  'round-table-fhd-rt-1033-fhd-rt-1033',
  'FHD-RT-1033',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  525.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 525.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 472.5}, {"min_qty": 41, "max_qty": null, "unit_price": 420.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522251/k9r9uimxfq4sroziinb3.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1034',
  'round-table-fhd-rt-1034-fhd-rt-1034',
  'FHD-RT-1034',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  527.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 527.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 474.75}, {"min_qty": 41, "max_qty": null, "unit_price": 422.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/qf1lwmurv7z0yubrlenl.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1035',
  'round-table-fhd-rt-1035-fhd-rt-1035',
  'FHD-RT-1035',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  530.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 530.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 477.0}, {"min_qty": 41, "max_qty": null, "unit_price": 424.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/cqif5ojtzdinnx3gqwyo.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1036',
  'round-table-fhd-rt-1036-fhd-rt-1036',
  'FHD-RT-1036',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  532.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 532.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 479.25}, {"min_qty": 41, "max_qty": null, "unit_price": 426.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522266/plkic7rpzciketwilw03.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1037',
  'round-table-fhd-rt-1037-fhd-rt-1037',
  'FHD-RT-1037',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  535.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 535.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 481.5}, {"min_qty": 41, "max_qty": null, "unit_price": 428.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/b234jicrvcguxwg5bxeq.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1038',
  'round-table-fhd-rt-1038-fhd-rt-1038',
  'FHD-RT-1038',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  537.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 537.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 483.75}, {"min_qty": 41, "max_qty": null, "unit_price": 430.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/tnrpmibxweg2kujfxqxp.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1039',
  'round-table-fhd-rt-1039-fhd-rt-1039',
  'FHD-RT-1039',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  540.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 540.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 486.0}, {"min_qty": 41, "max_qty": null, "unit_price": 432.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/wcje91aqqd4eber1sasi.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1040',
  'round-table-fhd-rt-1040-fhd-rt-1040',
  'FHD-RT-1040',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  542.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 542.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 488.25}, {"min_qty": 41, "max_qty": null, "unit_price": 434.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/krohvfdfmpt67frzkpsg.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1041',
  'round-table-fhd-rt-1041-fhd-rt-1041',
  'FHD-RT-1041',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  545.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 545.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 490.5}, {"min_qty": 41, "max_qty": null, "unit_price": 436.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/p2uoh4ushncogdvfalxc.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1042',
  'round-table-fhd-rt-1042-fhd-rt-1042',
  'FHD-RT-1042',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  547.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 547.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 492.75}, {"min_qty": 41, "max_qty": null, "unit_price": 438.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/jyv0vzuemgcsrn8bmlii.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1043',
  'round-table-fhd-rt-1043-fhd-rt-1043',
  'FHD-RT-1043',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  550.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 550.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 495.0}, {"min_qty": 41, "max_qty": null, "unit_price": 440.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/oawvbztky2lkeoqrcaba.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1044',
  'round-table-fhd-rt-1044-fhd-rt-1044',
  'FHD-RT-1044',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  552.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 552.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 497.25}, {"min_qty": 41, "max_qty": null, "unit_price": 442.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/yidlu7im4lpyks0sreot.jpg']::TEXT[],
  '{"Dimensions": "10 x 10 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1045',
  'round-table-fhd-rt-1045-fhd-rt-1045',
  'FHD-RT-1045',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  555.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 555.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 499.5}, {"min_qty": 41, "max_qty": null, "unit_price": 444.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/dduqyoqwx14ca1julkr4.jpg']::TEXT[],
  '{"Dimensions": "10 x 10 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1046',
  'round-table-fhd-rt-1046-fhd-rt-1046',
  'FHD-RT-1046',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  557.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 557.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 501.75}, {"min_qty": 41, "max_qty": null, "unit_price": 446.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/bahfb5k2uexojghmizk5.jpg']::TEXT[],
  '{"Dimensions": "10 x 10 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1047',
  'round-table-fhd-rt-1047-fhd-rt-1047',
  'FHD-RT-1047',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  560.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 560.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 504.0}, {"min_qty": 41, "max_qty": null, "unit_price": 448.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/afazhpyjmj6sue6z5nu4.jpg']::TEXT[],
  '{"Dimensions": "10 x 10 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1048',
  'round-table-fhd-rt-1048-fhd-rt-1048',
  'FHD-RT-1048',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  562.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 562.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 506.25}, {"min_qty": 41, "max_qty": null, "unit_price": 450.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/ecshe9uohbya7t0vfgaf.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1049',
  'round-table-fhd-rt-1049-fhd-rt-1049',
  'FHD-RT-1049',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  565.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 565.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 508.5}, {"min_qty": 41, "max_qty": null, "unit_price": 452.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522251/nnsoweaw6mevfsfkjx41.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1050',
  'round-table-fhd-rt-1050-fhd-rt-1050',
  'FHD-RT-1050',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  480.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 480.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 432.0}, {"min_qty": 41, "max_qty": null, "unit_price": 384.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522264/ssnmcjyreo6yu3szmpwb.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1051',
  'round-table-fhd-rt-1051-fhd-rt-1051',
  'FHD-RT-1051',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  482.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 482.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 434.25}, {"min_qty": 41, "max_qty": null, "unit_price": 386.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/eufnboyf1zxln7pnwvqk.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1052',
  'round-table-fhd-rt-1052-fhd-rt-1052',
  'FHD-RT-1052',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  485.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 485.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 436.5}, {"min_qty": 41, "max_qty": null, "unit_price": 388.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/vdjuhlo99yflu12tv6my.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1053',
  'round-table-fhd-rt-1053-fhd-rt-1053',
  'FHD-RT-1053',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  487.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 487.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 438.75}, {"min_qty": 41, "max_qty": null, "unit_price": 390.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/iv4yqe4pjnwxc9zjupfa.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1054',
  'round-table-fhd-rt-1054-fhd-rt-1054',
  'FHD-RT-1054',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  490.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 490.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 441.0}, {"min_qty": 41, "max_qty": null, "unit_price": 392.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522286/gtcnmxvj7dtf4lokthuj.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1055',
  'round-table-fhd-rt-1055-fhd-rt-1055',
  'FHD-RT-1055',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  492.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 492.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 443.25}, {"min_qty": 41, "max_qty": null, "unit_price": 394.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522289/bqyzl8cf7zhzkdokbt4a.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1056',
  'round-table-fhd-rt-1056-fhd-rt-1056',
  'FHD-RT-1056',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  495.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 495.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 445.5}, {"min_qty": 41, "max_qty": null, "unit_price": 396.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/c0n2k9w4szvqpowywtff.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1057',
  'round-table-fhd-rt-1057-fhd-rt-1057',
  'FHD-RT-1057',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  497.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 497.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 447.75}, {"min_qty": 41, "max_qty": null, "unit_price": 398.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/ranc7vvplkhbh6rfzgon.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1058',
  'round-table-fhd-rt-1058-fhd-rt-1058',
  'FHD-RT-1058',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  500.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 500.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 450.0}, {"min_qty": 41, "max_qty": null, "unit_price": 400.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/jisnnnuzofzhesm9r9yy.jpg']::TEXT[],
  '{"Dimensions": "12 x 12 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1059',
  'round-table-fhd-rt-1059-fhd-rt-1059',
  'FHD-RT-1059',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  502.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 502.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 452.25}, {"min_qty": 41, "max_qty": null, "unit_price": 402.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522203/vqbdj452jfgbcgcwd6iq.jpg']::TEXT[],
  '{"Dimensions": "18 x 18 x 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1060',
  'round-table-fhd-rt-1060-fhd-rt-1060',
  'FHD-RT-1060',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  505.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 505.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 454.5}, {"min_qty": 41, "max_qty": null, "unit_price": 404.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522233/xs7waxmt6nvn82pbeyzl.jpg']::TEXT[],
  '{"Dimensions": "18 x 18 x 22.5 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1061',
  'round-table-fhd-rt-1061-fhd-rt-1061',
  'FHD-RT-1061',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  507.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 507.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 456.75}, {"min_qty": 41, "max_qty": null, "unit_price": 406.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/phzlgh3mb0maxutkqler.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1062',
  'round-table-fhd-rt-1062-fhd-rt-1062',
  'FHD-RT-1062',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  510.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 510.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 459.0}, {"min_qty": 41, "max_qty": null, "unit_price": 408.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/qnqmtptykptgswujhymb.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1063',
  'round-table-fhd-rt-1063-fhd-rt-1063',
  'FHD-RT-1063',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  512.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 512.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 461.25}, {"min_qty": 41, "max_qty": null, "unit_price": 410.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/pz25uxmjkilsvekmej6t.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1064',
  'round-table-fhd-rt-1064-fhd-rt-1064',
  'FHD-RT-1064',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  515.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 515.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 463.5}, {"min_qty": 41, "max_qty": null, "unit_price": 412.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522186/dk25zau3wxlvs0brx4yf.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1065',
  'round-table-fhd-rt-1065-fhd-rt-1065',
  'FHD-RT-1065',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  517.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 517.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 465.75}, {"min_qty": 41, "max_qty": null, "unit_price": 414.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/a9qwp4rzdkovvmc96hdx.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1066',
  'round-table-fhd-rt-1066-fhd-rt-1066',
  'FHD-RT-1066',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  520.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 520.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 468.0}, {"min_qty": 41, "max_qty": null, "unit_price": 416.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/ikoejke7u2trnxypkv7q.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1067',
  'round-table-fhd-rt-1067-fhd-rt-1067',
  'FHD-RT-1067',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  522.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 522.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 470.25}, {"min_qty": 41, "max_qty": null, "unit_price": 418.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/fdkoxjgrtg5cwpbt5ngd.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1068',
  'round-table-fhd-rt-1068-fhd-rt-1068',
  'FHD-RT-1068',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  525.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 525.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 472.5}, {"min_qty": 41, "max_qty": null, "unit_price": 420.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522190/b4dwubwwtimxduize4jj.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1069',
  'round-table-fhd-rt-1069-fhd-rt-1069',
  'FHD-RT-1069',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  527.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 527.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 474.75}, {"min_qty": 41, "max_qty": null, "unit_price": 422.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/yqswzywszvz3hl0wm2mi.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1070',
  'round-table-fhd-rt-1070-fhd-rt-1070',
  'FHD-RT-1070',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  530.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 530.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 477.0}, {"min_qty": 41, "max_qty": null, "unit_price": 424.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/qprtnhyvf2oyzm3jzt2r.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1071',
  'round-table-fhd-rt-1071-fhd-rt-1071',
  'FHD-RT-1071',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  532.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 532.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 479.25}, {"min_qty": 41, "max_qty": null, "unit_price": 426.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522274/he0gvgvagqkjvrtnrgca.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1072',
  'round-table-fhd-rt-1072-fhd-rt-1072',
  'FHD-RT-1072',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  535.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 535.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 481.5}, {"min_qty": 41, "max_qty": null, "unit_price": 428.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/mlpzi4qnwnspv2dpofv0.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1073',
  'round-table-fhd-rt-1073-fhd-rt-1073',
  'FHD-RT-1073',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  537.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 537.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 483.75}, {"min_qty": 41, "max_qty": null, "unit_price": 430.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522261/hfgzv1lzlys46f96froe.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1074',
  'round-table-fhd-rt-1074-fhd-rt-1074',
  'FHD-RT-1074',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  540.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 540.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 486.0}, {"min_qty": 41, "max_qty": null, "unit_price": 432.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522217/i53xnerrwibvfqrztqa7.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1075',
  'round-table-fhd-rt-1075-fhd-rt-1075',
  'FHD-RT-1075',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  542.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 542.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 488.25}, {"min_qty": 41, "max_qty": null, "unit_price": 434.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522190/lernqbveq9k8jxhdpgjz.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1076',
  'round-table-fhd-rt-1076-fhd-rt-1076',
  'FHD-RT-1076',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  545.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 545.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 490.5}, {"min_qty": 41, "max_qty": null, "unit_price": 436.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/pltfqydpz4viajkntklf.jpg']::TEXT[],
  '{"Dimensions": "16 x 16 x 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1077',
  'round-table-fhd-rt-1077-fhd-rt-1077',
  'FHD-RT-1077',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  547.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 547.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 492.75}, {"min_qty": 41, "max_qty": null, "unit_price": 438.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/z1oitybiwwks9nti6pwz.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1078',
  'round-table-fhd-rt-1078-fhd-rt-1078',
  'FHD-RT-1078',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  550.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 550.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 495.0}, {"min_qty": 41, "max_qty": null, "unit_price": 440.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/ewjoqx2un2regejk6ylo.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1079',
  'round-table-fhd-rt-1079-fhd-rt-1079',
  'FHD-RT-1079',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  552.5,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 552.5}, {"min_qty": 16, "max_qty": 40, "unit_price": 497.25}, {"min_qty": 41, "max_qty": null, "unit_price": 442.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/sclswmwel1zqhf2opx2z.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000003',
  'Round Table FHD-RT-1080',
  'round-table-fhd-rt-1080-fhd-rt-1080',
  'FHD-RT-1080',
  'Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.',
  555.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 555.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 499.5}, {"min_qty": 41, "max_qty": null, "unit_price": 444.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/qyfzfm0bxlq643ujtcwe.jpg']::TEXT[],
  '{"Dimensions": "14 x 14 x 23 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Round Tables", "Subcategory": "round-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1001',
  'side-&-accent-table-fhd-st-1001-fhd-st-1001',
  'FHD-ST-1001',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  217.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 217.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 195.75}, {"min_qty": 81, "max_qty": null, "unit_price": 174.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/t5mnop522lxo5mro8jcv.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1002',
  'side-&-accent-table-fhd-st-1002-fhd-st-1002',
  'FHD-ST-1002',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  220.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 220.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 198.0}, {"min_qty": 81, "max_qty": null, "unit_price": 176.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/svjgszf5zlshid0rhht1.jpg']::TEXT[],
  '{"Dimensions": "16 x 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1003',
  'side-&-accent-table-fhd-st-1003-fhd-st-1003',
  'FHD-ST-1003',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  222.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 222.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 200.25}, {"min_qty": 81, "max_qty": null, "unit_price": 178.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/ptoxck3wgnpc6ipxngam.jpg']::TEXT[],
  '{"Dimensions": "15 X 15 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1004',
  'side-&-accent-table-fhd-st-1004-fhd-st-1004',
  'FHD-ST-1004',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  225.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 225.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 202.5}, {"min_qty": 81, "max_qty": null, "unit_price": 180.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522209/vcuh9nkitelpvssokiss.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1005',
  'side-&-accent-table-fhd-st-1005-fhd-st-1005',
  'FHD-ST-1005',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  227.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 227.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 204.75}, {"min_qty": 81, "max_qty": null, "unit_price": 182.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/gq9dr48fg80g6diw2r0l.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1006',
  'side-&-accent-table-fhd-st-1006-fhd-st-1006',
  'FHD-ST-1006',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  230.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 230.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 207.0}, {"min_qty": 81, "max_qty": null, "unit_price": 184.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/yn0ylwr32nrororgt185.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1007',
  'side-&-accent-table-fhd-st-1007-fhd-st-1007',
  'FHD-ST-1007',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  232.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 232.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 209.25}, {"min_qty": 81, "max_qty": null, "unit_price": 186.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/tbsqqjv9mhdunbuipvmb.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1008',
  'side-&-accent-table-fhd-st-1008-fhd-st-1008',
  'FHD-ST-1008',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  235.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 235.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 211.5}, {"min_qty": 81, "max_qty": null, "unit_price": 188.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522268/e2q0cdpeclpb0hvimzwy.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1009',
  'side-&-accent-table-fhd-st-1009-fhd-st-1009',
  'FHD-ST-1009',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  237.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 237.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 213.75}, {"min_qty": 81, "max_qty": null, "unit_price": 190.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/ydfighdsfc9ovchmgrwk.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1010',
  'side-&-accent-table-fhd-st-1010-fhd-st-1010',
  'FHD-ST-1010',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  240.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 240.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 216.0}, {"min_qty": 81, "max_qty": null, "unit_price": 192.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522226/l1ldydydu4brikqxdhly.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1011',
  'side-&-accent-table-fhd-st-1011-fhd-st-1011',
  'FHD-ST-1011',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  242.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 242.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 218.25}, {"min_qty": 81, "max_qty": null, "unit_price": 194.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/xn3ozu8xutuqevedafu2.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1012',
  'side-&-accent-table-fhd-st-1012-fhd-st-1012',
  'FHD-ST-1012',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  245.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 245.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 220.5}, {"min_qty": 81, "max_qty": null, "unit_price": 196.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522254/stvfbqvv9bfiqvx0zors.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1013',
  'side-&-accent-table-fhd-st-1013-fhd-st-1013',
  'FHD-ST-1013',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  247.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 247.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 222.75}, {"min_qty": 81, "max_qty": null, "unit_price": 198.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/wlqzoxzmzgqnnwmjqwbr.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1014',
  'side-&-accent-table-fhd-st-1014-fhd-st-1014',
  'FHD-ST-1014',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  250.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 250.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 225.0}, {"min_qty": 81, "max_qty": null, "unit_price": 200.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/n1cpl8ezgywgtwf7ia7l.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1015',
  'side-&-accent-table-fhd-st-1015-fhd-st-1015',
  'FHD-ST-1015',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  165.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 165.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 148.5}, {"min_qty": 81, "max_qty": null, "unit_price": 132.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/ntyf1jlnplzjn2zkgcf3.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1016',
  'side-&-accent-table-fhd-st-1016-fhd-st-1016',
  'FHD-ST-1016',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  167.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 167.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 150.75}, {"min_qty": 81, "max_qty": null, "unit_price": 134.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522280/w3hxfz0hdrhfx358qi5s.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1017',
  'side-&-accent-table-fhd-st-1017-fhd-st-1017',
  'FHD-ST-1017',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  170.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 170.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 153.0}, {"min_qty": 81, "max_qty": null, "unit_price": 136.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/xpilsrlec5zazyvqzwkw.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1018',
  'side-&-accent-table-fhd-st-1018-fhd-st-1018',
  'FHD-ST-1018',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  172.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 172.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 155.25}, {"min_qty": 81, "max_qty": null, "unit_price": 138.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/xxlusuptpblvhq95fcxy.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1019',
  'side-&-accent-table-fhd-st-1019-fhd-st-1019',
  'FHD-ST-1019',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  175.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 175.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 157.5}, {"min_qty": 81, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522224/uecm5jshexrmjhvrrqjj.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1020',
  'side-&-accent-table-fhd-st-1020-fhd-st-1020',
  'FHD-ST-1020',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  177.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 177.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 159.75}, {"min_qty": 81, "max_qty": null, "unit_price": 142.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/npdgbg0u4zpibxie3gw7.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1021',
  'side-&-accent-table-fhd-st-1021-fhd-st-1021',
  'FHD-ST-1021',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  180.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 180.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 162.0}, {"min_qty": 81, "max_qty": null, "unit_price": 144.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/ihvmfmdqyrfsbnjqyu6e.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1022',
  'side-&-accent-table-fhd-st-1022-fhd-st-1022',
  'FHD-ST-1022',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  182.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 182.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 164.25}, {"min_qty": 81, "max_qty": null, "unit_price": 146.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/bbwhtzn2oyjmzkpl0jun.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1023',
  'side-&-accent-table-fhd-st-1023-fhd-st-1023',
  'FHD-ST-1023',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  185.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 185.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 166.5}, {"min_qty": 81, "max_qty": null, "unit_price": 148.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/tchcrvmimypxlxmihmyp.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1024',
  'side-&-accent-table-fhd-st-1024-fhd-st-1024',
  'FHD-ST-1024',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  187.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 187.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 168.75}, {"min_qty": 81, "max_qty": null, "unit_price": 150.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522286/rzuyuzo5fulnvucbn6bw.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1025',
  'side-&-accent-table-fhd-st-1025-fhd-st-1025',
  'FHD-ST-1025',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  190.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 190.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 171.0}, {"min_qty": 81, "max_qty": null, "unit_price": 152.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/ripdjh6n3aboxgfwuzrt.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1026',
  'side-&-accent-table-fhd-st-1026-fhd-st-1026',
  'FHD-ST-1026',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  192.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 192.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 173.25}, {"min_qty": 81, "max_qty": null, "unit_price": 154.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/d6d6vubnsd7ur0lqyqij.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1027',
  'side-&-accent-table-fhd-st-1027-fhd-st-1027',
  'FHD-ST-1027',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  195.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 195.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 175.5}, {"min_qty": 81, "max_qty": null, "unit_price": 156.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/zigcjourzrcevsxmrvpc.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1028',
  'side-&-accent-table-fhd-st-1028-fhd-st-1028',
  'FHD-ST-1028',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  197.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 197.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 177.75}, {"min_qty": 81, "max_qty": null, "unit_price": 158.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/ymd3nqiyvtokvocfabaw.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1029',
  'side-&-accent-table-fhd-st-1029-fhd-st-1029',
  'FHD-ST-1029',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  200.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 200.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 180.0}, {"min_qty": 81, "max_qty": null, "unit_price": 160.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/pllstd8kuiozyvqqww7y.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1030',
  'side-&-accent-table-fhd-st-1030-fhd-st-1030',
  'FHD-ST-1030',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  202.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 202.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 182.25}, {"min_qty": 81, "max_qty": null, "unit_price": 162.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/sfbqa3gajdjsmrhomfns.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1031',
  'side-&-accent-table-fhd-st-1031-fhd-st-1031',
  'FHD-ST-1031',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  205.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 205.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 184.5}, {"min_qty": 81, "max_qty": null, "unit_price": 164.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522280/sxslmrlvq0xks1opmicr.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1032',
  'side-&-accent-table-fhd-st-1032-fhd-st-1032',
  'FHD-ST-1032',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  207.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 207.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 186.75}, {"min_qty": 81, "max_qty": null, "unit_price": 166.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/mccsreau8a1srm7ncfea.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1033',
  'side-&-accent-table-fhd-st-1033-fhd-st-1033',
  'FHD-ST-1033',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  210.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 210.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 189.0}, {"min_qty": 81, "max_qty": null, "unit_price": 168.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/sg6a3vkv1dcnmmfjm0ox.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1034',
  'side-&-accent-table-fhd-st-1034-fhd-st-1034',
  'FHD-ST-1034',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  212.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 212.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 191.25}, {"min_qty": 81, "max_qty": null, "unit_price": 170.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522278/mchyg9wst5n0me4cp0es.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1035',
  'side-&-accent-table-fhd-st-1035-fhd-st-1035',
  'FHD-ST-1035',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  215.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 215.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 193.5}, {"min_qty": 81, "max_qty": null, "unit_price": 172.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522291/ba1dvffybg7ivcjvefno.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1036',
  'side-&-accent-table-fhd-st-1036-fhd-st-1036',
  'FHD-ST-1036',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  217.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 217.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 195.75}, {"min_qty": 81, "max_qty": null, "unit_price": 174.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/uhgkp0pf8xpqpyj4lgei.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1037',
  'side-&-accent-table-fhd-st-1037-fhd-st-1037',
  'FHD-ST-1037',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  220.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 220.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 198.0}, {"min_qty": 81, "max_qty": null, "unit_price": 176.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/q9yyszrzllreedt0xk7p.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1038',
  'side-&-accent-table-fhd-st-1038-fhd-st-1038',
  'FHD-ST-1038',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  222.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 222.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 200.25}, {"min_qty": 81, "max_qty": null, "unit_price": 178.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/tyxemmqrzkle7lnhy08l.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1039',
  'side-&-accent-table-fhd-st-1039-fhd-st-1039',
  'FHD-ST-1039',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  225.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 225.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 202.5}, {"min_qty": 81, "max_qty": null, "unit_price": 180.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/e3pqqxb5fiw2qcw3hywz.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1040',
  'side-&-accent-table-fhd-st-1040-fhd-st-1040',
  'FHD-ST-1040',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  227.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 227.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 204.75}, {"min_qty": 81, "max_qty": null, "unit_price": 182.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522184/w4gvm0eiljroiambdthi.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1041',
  'side-&-accent-table-fhd-st-1041-fhd-st-1041',
  'FHD-ST-1041',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  230.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 230.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 207.0}, {"min_qty": 81, "max_qty": null, "unit_price": 184.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/rcqxstokmnouxlevayjr.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1042',
  'side-&-accent-table-fhd-st-1042-fhd-st-1042',
  'FHD-ST-1042',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  232.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 232.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 209.25}, {"min_qty": 81, "max_qty": null, "unit_price": 186.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/xcekg2p0u5httufsyvhm.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1043',
  'side-&-accent-table-fhd-st-1043-fhd-st-1043',
  'FHD-ST-1043',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  235.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 235.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 211.5}, {"min_qty": 81, "max_qty": null, "unit_price": 188.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/nregqlhwiqerittay3nq.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1044',
  'side-&-accent-table-fhd-st-1044-fhd-st-1044',
  'FHD-ST-1044',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  237.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 237.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 213.75}, {"min_qty": 81, "max_qty": null, "unit_price": 190.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/uhypgasnyat4p4vljime.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1045',
  'side-&-accent-table-fhd-st-1045-fhd-st-1045',
  'FHD-ST-1045',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  240.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 240.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 216.0}, {"min_qty": 81, "max_qty": null, "unit_price": 192.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/lnzn5v2nfgqajjkfbi1l.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1046',
  'side-&-accent-table-fhd-st-1046-fhd-st-1046',
  'FHD-ST-1046',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  242.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 242.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 218.25}, {"min_qty": 81, "max_qty": null, "unit_price": 194.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/rjepok07hatjhoa2ujmr.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1047',
  'side-&-accent-table-fhd-st-1047-fhd-st-1047',
  'FHD-ST-1047',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  245.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 245.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 220.5}, {"min_qty": 81, "max_qty": null, "unit_price": 196.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/qgxbnzeuyp3kmhjlebpv.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1048',
  'side-&-accent-table-fhd-st-1048-fhd-st-1048',
  'FHD-ST-1048',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  247.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 247.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 222.75}, {"min_qty": 81, "max_qty": null, "unit_price": 198.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/fns7pgbqhf5nvzwkzhg3.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1049',
  'side-&-accent-table-fhd-st-1049-fhd-st-1049',
  'FHD-ST-1049',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  250.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 250.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 225.0}, {"min_qty": 81, "max_qty": null, "unit_price": 200.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/dp9fg2guihvrbldcpfjv.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1050',
  'side-&-accent-table-fhd-st-1050-fhd-st-1050',
  'FHD-ST-1050',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  165.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 165.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 148.5}, {"min_qty": 81, "max_qty": null, "unit_price": 132.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522190/r4bh6tnoz8lkhakmzejk.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1051',
  'side-&-accent-table-fhd-st-1051-fhd-st-1051',
  'FHD-ST-1051',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  167.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 167.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 150.75}, {"min_qty": 81, "max_qty": null, "unit_price": 134.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522199/bsqypdzxx4erm4lvjmyy.jpg']::TEXT[],
  '{"Dimensions": "14 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1052',
  'side-&-accent-table-fhd-st-1052-fhd-st-1052',
  'FHD-ST-1052',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  170.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 170.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 153.0}, {"min_qty": 81, "max_qty": null, "unit_price": 136.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/evntgmonbmeu2iodl9go.jpg']::TEXT[],
  '{"Dimensions": "14 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1053',
  'side-&-accent-table-fhd-st-1053-fhd-st-1053',
  'FHD-ST-1053',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  172.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 172.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 155.25}, {"min_qty": 81, "max_qty": null, "unit_price": 138.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/xtco1vda97a08w3nfa9g.jpg']::TEXT[],
  '{"Dimensions": "14 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1054',
  'side-&-accent-table-fhd-st-1054-fhd-st-1054',
  'FHD-ST-1054',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  175.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 175.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 157.5}, {"min_qty": 81, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/cbrstxtfq88lys2stuge.jpg']::TEXT[],
  '{"Dimensions": "14 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1055',
  'side-&-accent-table-fhd-st-1055-fhd-st-1055',
  'FHD-ST-1055',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  177.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 177.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 159.75}, {"min_qty": 81, "max_qty": null, "unit_price": 142.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/bvtjv0pz06eq5kjjiq9y.jpg']::TEXT[],
  '{"Dimensions": "14 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1056',
  'side-&-accent-table-fhd-st-1056-fhd-st-1056',
  'FHD-ST-1056',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  180.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 180.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 162.0}, {"min_qty": 81, "max_qty": null, "unit_price": 144.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/li4zh28g55465fvtbsdp.jpg']::TEXT[],
  '{"Dimensions": "14 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1057',
  'side-&-accent-table-fhd-st-1057-fhd-st-1057',
  'FHD-ST-1057',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  182.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 182.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 164.25}, {"min_qty": 81, "max_qty": null, "unit_price": 146.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/hxc2eqmvnzaffbloopqh.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1058',
  'side-&-accent-table-fhd-st-1058-fhd-st-1058',
  'FHD-ST-1058',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  185.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 185.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 166.5}, {"min_qty": 81, "max_qty": null, "unit_price": 148.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/h7n5ckak9zg3bnb1glbh.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1059',
  'side-&-accent-table-fhd-st-1059-fhd-st-1059',
  'FHD-ST-1059',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  187.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 187.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 168.75}, {"min_qty": 81, "max_qty": null, "unit_price": 150.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/v3php1vhbxeplr691pmh.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1060',
  'side-&-accent-table-fhd-st-1060-fhd-st-1060',
  'FHD-ST-1060',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  190.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 190.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 171.0}, {"min_qty": 81, "max_qty": null, "unit_price": 152.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/bkslnynnv6r4dxujp5mw.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1061',
  'side-&-accent-table-fhd-st-1061-fhd-st-1061',
  'FHD-ST-1061',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  192.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 192.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 173.25}, {"min_qty": 81, "max_qty": null, "unit_price": 154.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/ptyx6ban8ysb8kc1am40.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1062',
  'side-&-accent-table-fhd-st-1062-fhd-st-1062',
  'FHD-ST-1062',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  195.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 195.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 175.5}, {"min_qty": 81, "max_qty": null, "unit_price": 156.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/ydqvfqwbvonurwmdnjrb.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1063',
  'side-&-accent-table-fhd-st-1063-fhd-st-1063',
  'FHD-ST-1063',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  197.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 197.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 177.75}, {"min_qty": 81, "max_qty": null, "unit_price": 158.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522259/waifmq54rn9pp56ao9o4.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1064',
  'side-&-accent-table-fhd-st-1064-fhd-st-1064',
  'FHD-ST-1064',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  200.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 200.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 180.0}, {"min_qty": 81, "max_qty": null, "unit_price": 160.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522217/qajm69hnk7ruwfvvydr9.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1065',
  'side-&-accent-table-fhd-st-1065-fhd-st-1065',
  'FHD-ST-1065',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  202.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 202.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 182.25}, {"min_qty": 81, "max_qty": null, "unit_price": 162.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/tno8gpjki7eflmvdzfpc.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1066',
  'side-&-accent-table-fhd-st-1066-fhd-st-1066',
  'FHD-ST-1066',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  205.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 205.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 184.5}, {"min_qty": 81, "max_qty": null, "unit_price": 164.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/lu0kfys6x4fr2qlaiqov.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1067',
  'side-&-accent-table-fhd-st-1067-fhd-st-1067',
  'FHD-ST-1067',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  207.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 207.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 186.75}, {"min_qty": 81, "max_qty": null, "unit_price": 166.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522205/hke50ugsnjd8ucl3eslv.jpg']::TEXT[],
  '{"Dimensions": "15 X 15 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1068',
  'side-&-accent-table-fhd-st-1068-fhd-st-1068',
  'FHD-ST-1068',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  210.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 210.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 189.0}, {"min_qty": 81, "max_qty": null, "unit_price": 168.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/lfjhohzoqwwzttu98cwd.jpg']::TEXT[],
  '{"Dimensions": "15 X 15 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1069',
  'side-&-accent-table-fhd-st-1069-fhd-st-1069',
  'FHD-ST-1069',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  212.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 212.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 191.25}, {"min_qty": 81, "max_qty": null, "unit_price": 170.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/tiyy56ynal3tajuum9nh.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1070',
  'side-&-accent-table-fhd-st-1070-fhd-st-1070',
  'FHD-ST-1070',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  215.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 215.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 193.5}, {"min_qty": 81, "max_qty": null, "unit_price": 172.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/dups4sr7lbyssligla3x.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1071',
  'side-&-accent-table-fhd-st-1071-fhd-st-1071',
  'FHD-ST-1071',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  217.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 217.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 195.75}, {"min_qty": 81, "max_qty": null, "unit_price": 174.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/luczwj2k8cm8a4e3dfkh.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1072',
  'side-&-accent-table-fhd-st-1072-fhd-st-1072',
  'FHD-ST-1072',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  220.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 220.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 198.0}, {"min_qty": 81, "max_qty": null, "unit_price": 176.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/cxuvzkbp48izjvrzses4.jpg']::TEXT[],
  '{"Dimensions": "15 X 13.7 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1073',
  'side-&-accent-table-fhd-st-1073-fhd-st-1073',
  'FHD-ST-1073',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  222.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 222.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 200.25}, {"min_qty": 81, "max_qty": null, "unit_price": 178.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/c2rz75v3ald5yewkd9dj.jpg']::TEXT[],
  '{"Dimensions": "15 X 13.7 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1074',
  'side-&-accent-table-fhd-st-1074-fhd-st-1074',
  'FHD-ST-1074',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  225.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 225.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 202.5}, {"min_qty": 81, "max_qty": null, "unit_price": 180.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/zfychdn2qo1ooag4xlpe.jpg']::TEXT[],
  '{"Dimensions": "15.7 X 14 X 12 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1075',
  'side-&-accent-table-fhd-st-1075-fhd-st-1075',
  'FHD-ST-1075',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  227.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 227.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 204.75}, {"min_qty": 81, "max_qty": null, "unit_price": 182.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/ck4221ndyqhhus4cv8qe.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1076',
  'side-&-accent-table-fhd-st-1076-fhd-st-1076',
  'FHD-ST-1076',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  230.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 230.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 207.0}, {"min_qty": 81, "max_qty": null, "unit_price": 184.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522193/fdnfhtjxjocsxpmb8ejj.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1077',
  'side-&-accent-table-fhd-st-1077-fhd-st-1077',
  'FHD-ST-1077',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  232.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 232.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 209.25}, {"min_qty": 81, "max_qty": null, "unit_price": 186.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/sp6tddgjpgwxsnyzd6dc.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1078',
  'side-&-accent-table-fhd-st-1078-fhd-st-1078',
  'FHD-ST-1078',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  235.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 235.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 211.5}, {"min_qty": 81, "max_qty": null, "unit_price": 188.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/bievrq28yocxz5raqpb9.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1079',
  'side-&-accent-table-fhd-st-1079-fhd-st-1079',
  'FHD-ST-1079',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  237.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 237.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 213.75}, {"min_qty": 81, "max_qty": null, "unit_price": 190.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522240/nrb8aesvugmx0qvksah1.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1080',
  'side-&-accent-table-fhd-st-1080-fhd-st-1080',
  'FHD-ST-1080',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  240.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 240.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 216.0}, {"min_qty": 81, "max_qty": null, "unit_price": 192.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522207/lst2jxk4jqwihorcz0mw.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21.7 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1081',
  'side-&-accent-table-fhd-st-1081-fhd-st-1081',
  'FHD-ST-1081',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  242.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 242.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 218.25}, {"min_qty": 81, "max_qty": null, "unit_price": 194.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/xeepaqoxhnd2wx4dy8tr.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 21.7 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1082',
  'side-&-accent-table-fhd-st-1082-fhd-st-1082',
  'FHD-ST-1082',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  245.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 245.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 220.5}, {"min_qty": 81, "max_qty": null, "unit_price": 196.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522240/bic30jzosaaptwnd03kq.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1085',
  'side-&-accent-table-fhd-st-1085-fhd-st-1085',
  'FHD-ST-1085',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  165.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 165.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 148.5}, {"min_qty": 81, "max_qty": null, "unit_price": 132.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/wi6jvnfoszex4wvgj0wb.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1086',
  'side-&-accent-table-fhd-st-1086-fhd-st-1086',
  'FHD-ST-1086',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  167.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 167.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 150.75}, {"min_qty": 81, "max_qty": null, "unit_price": 134.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522186/uynr8lfrkchvctdcuhxv.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1087',
  'side-&-accent-table-fhd-st-1087-fhd-st-1087',
  'FHD-ST-1087',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  170.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 170.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 153.0}, {"min_qty": 81, "max_qty": null, "unit_price": 136.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/kmsegakakssyqkna5rnr.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1088',
  'side-&-accent-table-fhd-st-1088-fhd-st-1088',
  'FHD-ST-1088',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  172.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 172.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 155.25}, {"min_qty": 81, "max_qty": null, "unit_price": 138.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522209/nlntaulfztvf3fgivnjm.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1089',
  'side-&-accent-table-fhd-st-1089-fhd-st-1089',
  'FHD-ST-1089',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  175.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 175.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 157.5}, {"min_qty": 81, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/rojottoyh9rqzociogf4.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1090',
  'side-&-accent-table-fhd-st-1090-fhd-st-1090',
  'FHD-ST-1090',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  177.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 177.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 159.75}, {"min_qty": 81, "max_qty": null, "unit_price": 142.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/lqzgx4slfmfgvrs4d4a6.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1091',
  'side-&-accent-table-fhd-st-1091-fhd-st-1091',
  'FHD-ST-1091',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  180.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 180.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 162.0}, {"min_qty": 81, "max_qty": null, "unit_price": 144.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/ydsijpy02mrdxacromvx.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1092',
  'side-&-accent-table-fhd-st-1092-fhd-st-1092',
  'FHD-ST-1092',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  182.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 182.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 164.25}, {"min_qty": 81, "max_qty": null, "unit_price": 146.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522205/ousoyepvu3odl2scwbga.jpg']::TEXT[],
  '{"Dimensions": "14 X 14 X 21.6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1093',
  'side-&-accent-table-fhd-st-1093-fhd-st-1093',
  'FHD-ST-1093',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  185.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 185.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 166.5}, {"min_qty": 81, "max_qty": null, "unit_price": 148.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/n3okjlnkykwhjjs59ljp.jpg']::TEXT[],
  '{"Dimensions": "15.7 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1094',
  'side-&-accent-table-fhd-st-1094-fhd-st-1094',
  'FHD-ST-1094',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  187.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 187.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 168.75}, {"min_qty": 81, "max_qty": null, "unit_price": 150.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/fsxsrcmrjgldqrhaufum.jpg']::TEXT[],
  '{"Dimensions": "15.7 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1095',
  'side-&-accent-table-fhd-st-1095-fhd-st-1095',
  'FHD-ST-1095',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  190.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 190.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 171.0}, {"min_qty": 81, "max_qty": null, "unit_price": 152.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/qfiwczaaji9o74u6lsfx.jpg']::TEXT[],
  '{"Dimensions": "15.7 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1096',
  'side-&-accent-table-fhd-st-1096-fhd-st-1096',
  'FHD-ST-1096',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  192.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 192.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 173.25}, {"min_qty": 81, "max_qty": null, "unit_price": 154.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/ttov6xhpgsa47eakh9vw.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1097',
  'side-&-accent-table-fhd-st-1097-fhd-st-1097',
  'FHD-ST-1097',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  195.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 195.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 175.5}, {"min_qty": 81, "max_qty": null, "unit_price": 156.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522182/gisiubhz4bijk4y33skn.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1098',
  'side-&-accent-table-fhd-st-1098-fhd-st-1098',
  'FHD-ST-1098',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  197.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 197.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 177.75}, {"min_qty": 81, "max_qty": null, "unit_price": 158.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/a7kvskk1pglca4nodawt.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1099',
  'side-&-accent-table-fhd-st-1099-fhd-st-1099',
  'FHD-ST-1099',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  200.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 200.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 180.0}, {"min_qty": 81, "max_qty": null, "unit_price": 160.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/zkbdp8wogkjnh8m8ponh.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1100',
  'side-&-accent-table-fhd-st-1100-fhd-st-1100',
  'FHD-ST-1100',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  202.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 202.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 182.25}, {"min_qty": 81, "max_qty": null, "unit_price": 162.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/niq3czxjj50pqe036vqo.jpg']::TEXT[],
  '{"Dimensions": "20 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1101',
  'side-&-accent-table-fhd-st-1101-fhd-st-1101',
  'FHD-ST-1101',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  205.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 205.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 184.5}, {"min_qty": 81, "max_qty": null, "unit_price": 164.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/qtq1u07zfopgzqwidlkc.jpg']::TEXT[],
  '{"Dimensions": "20 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1102',
  'side-&-accent-table-fhd-st-1102-fhd-st-1102',
  'FHD-ST-1102',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  207.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 207.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 186.75}, {"min_qty": 81, "max_qty": null, "unit_price": 166.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522287/niouatsxpqdgjkzhparh.jpg']::TEXT[],
  '{"Dimensions": "20 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1103',
  'side-&-accent-table-fhd-st-1103-fhd-st-1103',
  'FHD-ST-1103',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  210.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 210.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 189.0}, {"min_qty": 81, "max_qty": null, "unit_price": 168.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/ac0y4hx8qtfnzfgcbfoq.jpg']::TEXT[],
  '{"Dimensions": "20 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1104',
  'side-&-accent-table-fhd-st-1104-fhd-st-1104',
  'FHD-ST-1104',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  212.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 212.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 191.25}, {"min_qty": 81, "max_qty": null, "unit_price": 170.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/xt91sj9ia2ak2kaqyot5.jpg']::TEXT[],
  '{"Dimensions": "20 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1105',
  'side-&-accent-table-fhd-st-1105-fhd-st-1105',
  'FHD-ST-1105',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  215.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 215.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 193.5}, {"min_qty": 81, "max_qty": null, "unit_price": 172.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/mdeesxvuudbslsgkzpyn.jpg']::TEXT[],
  '{"Dimensions": "18 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1106',
  'side-&-accent-table-fhd-st-1106-fhd-st-1106',
  'FHD-ST-1106',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  217.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 217.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 195.75}, {"min_qty": 81, "max_qty": null, "unit_price": 174.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/w09lxmvblujraiynv8he.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1107',
  'side-&-accent-table-fhd-st-1107-fhd-st-1107',
  'FHD-ST-1107',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  220.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 220.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 198.0}, {"min_qty": 81, "max_qty": null, "unit_price": 176.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/vhbkfvnybyqqjgqmmmi5.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1108',
  'side-&-accent-table-fhd-st-1108-fhd-st-1108',
  'FHD-ST-1108',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  222.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 222.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 200.25}, {"min_qty": 81, "max_qty": null, "unit_price": 178.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522276/y0nus58iwodbma2ohrb5.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1109',
  'side-&-accent-table-fhd-st-1109-fhd-st-1109',
  'FHD-ST-1109',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  225.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 225.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 202.5}, {"min_qty": 81, "max_qty": null, "unit_price": 180.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/fuqozuvyth8r5jwrdya6.jpg']::TEXT[],
  '{"Dimensions": "16 X 14 X 20 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1110',
  'side-&-accent-table-fhd-st-1110-fhd-st-1110',
  'FHD-ST-1110',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  227.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 227.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 204.75}, {"min_qty": 81, "max_qty": null, "unit_price": 182.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/cqni3cqa9oneo4vdh7tn.jpg']::TEXT[],
  '{"Dimensions": "18 X 14 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1111',
  'side-&-accent-table-fhd-st-1111-fhd-st-1111',
  'FHD-ST-1111',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  230.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 230.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 207.0}, {"min_qty": 81, "max_qty": null, "unit_price": 184.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/sfk3dtm0k5mbnmw8ehpa.jpg']::TEXT[],
  '{"Dimensions": "18 X 12 X 24 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1112',
  'side-&-accent-table-fhd-st-1112-fhd-st-1112',
  'FHD-ST-1112',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  232.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 232.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 209.25}, {"min_qty": 81, "max_qty": null, "unit_price": 186.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/c5ajapmco7lqdwhpruyx.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000004',
  'Side & Accent Table FHD-ST-1113',
  'side-&-accent-table-fhd-st-1113-fhd-st-1113',
  'FHD-ST-1113',
  'Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.',
  235.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 235.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 211.5}, {"min_qty": 81, "max_qty": null, "unit_price": 188.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522266/nm2oa42txtikql6vhi1u.jpg']::TEXT[],
  '{"Dimensions": "16 X 12 X 22 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Side & Accent Tables", "Subcategory": "side-tables"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1001',
  'wooden-photo-frame-fhd-pf-1001-fhd-pf-1001',
  'FHD-PF-1001',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  87.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 87.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 78.75}, {"min_qty": 201, "max_qty": null, "unit_price": 70.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/qabor2ys2c6kplhtp5b7.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1002',
  'wooden-photo-frame-fhd-pf-1002-fhd-pf-1002',
  'FHD-PF-1002',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  90.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 90.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 81.0}, {"min_qty": 201, "max_qty": null, "unit_price": 72.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/c06vsu00zs2zsgfpkkc0.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1003',
  'wooden-photo-frame-fhd-pf-1003-fhd-pf-1003',
  'FHD-PF-1003',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  92.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 92.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 83.25}, {"min_qty": 201, "max_qty": null, "unit_price": 74.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/opf1bcc59gmwxfi65spx.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1004',
  'wooden-photo-frame-fhd-pf-1004-fhd-pf-1004',
  'FHD-PF-1004',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  95.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 95.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 85.5}, {"min_qty": 201, "max_qty": null, "unit_price": 76.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/djsgldps72qyzswfdxpq.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1005',
  'wooden-photo-frame-fhd-pf-1005-fhd-pf-1005',
  'FHD-PF-1005',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  97.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 97.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 87.75}, {"min_qty": 201, "max_qty": null, "unit_price": 78.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/s7boezjrneyvsnytoq70.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1006',
  'wooden-photo-frame-fhd-pf-1006-fhd-pf-1006',
  'FHD-PF-1006',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  100.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 100.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 90.0}, {"min_qty": 201, "max_qty": null, "unit_price": 80.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/dmnvkdtst5nalnuszqub.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1007',
  'wooden-photo-frame-fhd-pf-1007-fhd-pf-1007',
  'FHD-PF-1007',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  102.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 102.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 92.25}, {"min_qty": 201, "max_qty": null, "unit_price": 82.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/astgx0vrrzjefwmc2e1v.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1008',
  'wooden-photo-frame-fhd-pf-1008-fhd-pf-1008',
  'FHD-PF-1008',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  105.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 105.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 94.5}, {"min_qty": 201, "max_qty": null, "unit_price": 84.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522188/wbqvmu8te3ktdukwyzke.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1009',
  'wooden-photo-frame-fhd-pf-1009-fhd-pf-1009',
  'FHD-PF-1009',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  107.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 107.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 96.75}, {"min_qty": 201, "max_qty": null, "unit_price": 86.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/l6vthecox3f5usport4f.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1010',
  'wooden-photo-frame-fhd-pf-1010-fhd-pf-1010',
  'FHD-PF-1010',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  110.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 110.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 99.0}, {"min_qty": 201, "max_qty": null, "unit_price": 88.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/q5uhi92ulxjwg2ftw1ce.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1011',
  'wooden-photo-frame-fhd-pf-1011-fhd-pf-1011',
  'FHD-PF-1011',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  112.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 112.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 101.25}, {"min_qty": 201, "max_qty": null, "unit_price": 90.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/cctcxojvmpoeivmpguvk.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1012',
  'wooden-photo-frame-fhd-pf-1012-fhd-pf-1012',
  'FHD-PF-1012',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  115.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 115.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 103.5}, {"min_qty": 201, "max_qty": null, "unit_price": 92.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/eygiux8jwaxpv81hblc2.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1013',
  'wooden-photo-frame-fhd-pf-1013-fhd-pf-1013',
  'FHD-PF-1013',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  117.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 117.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 105.75}, {"min_qty": 201, "max_qty": null, "unit_price": 94.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522230/hche4yneww4xtk8swybv.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1014',
  'wooden-photo-frame-fhd-pf-1014-fhd-pf-1014',
  'FHD-PF-1014',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  120.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 120.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 108.0}, {"min_qty": 201, "max_qty": null, "unit_price": 96.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/eemf2dfxebxfxftp64zw.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1015',
  'wooden-photo-frame-fhd-pf-1015-fhd-pf-1015',
  'FHD-PF-1015',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  35.0,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 35.0}, {"min_qty": 76, "max_qty": 200, "unit_price": 31.5}, {"min_qty": 201, "max_qty": null, "unit_price": 28.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/rbdczefqcmvwy3jmi6zi.jpg']::TEXT[],
  '{"Dimensions": "4 x6 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'e1b10001-0000-0000-0000-000000000006',
  'Wooden Photo Frame FHD-PF-1016',
  'wooden-photo-frame-fhd-pf-1016-fhd-pf-1016',
  'FHD-PF-1016',
  'Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.',
  37.5,
  25,
  '[{"min_qty": 25, "max_qty": 75, "unit_price": 37.5}, {"min_qty": 76, "max_qty": 200, "unit_price": 33.75}, {"min_qty": 201, "max_qty": null, "unit_price": 30.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/qte921yk9vshqeuf9ejx.jpg']::TEXT[],
  '{"Dimensions": "8 x 10 in", "Material": "Solid Wood \u00b7 Handcrafted", "Finish": "Natural / Walnut / Teak Stains", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Wooden Photo Frames", "Subcategory": "photo-frames"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'f809989d-1523-4750-8d73-c79eca3171c5',
  'Artisanal Silver Reindeer Festive Centerpiece',
  'artisanal-silver-reindeer-festive-centerpiece-fhd-rd-6002',
  'FHD-RD-6002',
  'Cast aluminum holiday centerpiece with antiqued silver patina and refined sculptural antlers. High demand B2B seasonal gift and holiday boutique retail seller.',
  90.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 90.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 81.45}, {"min_qty": 81, "max_qty": null, "unit_price": 72.4}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/qqktwvzi0texbk1p4ace.jpg']::TEXT[],
  '{"Dimensions": "12 x 5 x 18 in", "Material": "Cast Aluminum & Glass", "Finish": "Antiqued Silver Patina", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Holiday & Festive", "Subcategory": "holiday-decor"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'f809989d-1523-4750-8d73-c79eca3171c5',
  'Handcrafted Brass Reindeer Sleigh Decor',
  'handcrafted-brass-reindeer-sleigh-decor-fhd-rd-6003',
  'FHD-RD-6003',
  'Architectural cast brass reindeer and sleigh festive display piece with hand-etched botanical motifs and weighted stable heirloom base.',
  93.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 93.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 83.7}, {"min_qty": 81, "max_qty": null, "unit_price": 74.4}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522291/h5hkvx6r9ipmxjudwtx2.jpg']::TEXT[],
  '{"Dimensions": "16 x 6 x 14 in", "Material": "Solid Cast Brass", "Finish": "Warm Antique Gold", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Holiday & Festive", "Subcategory": "holiday-decor"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'f809989d-1523-4750-8d73-c79eca3171c5',
  'Illuminated Architectural Star Arch',
  'illuminated-architectural-star-arch-fhd-rd-6004',
  'FHD-RD-6004',
  'Hand-carved solid mango wood star arch featuring ambient warm LED illumination, mortise-tenon joinery, and festive holiday presence.',
  95.5,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 95.5}, {"min_qty": 31, "max_qty": 80, "unit_price": 85.95}, {"min_qty": 81, "max_qty": null, "unit_price": 76.4}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522276/g7xmuxgeou8zj7vnd4d5.jpg']::TEXT[],
  '{"Dimensions": "20 x 4 x 22 in", "Material": "Solid Mango Wood & Warm LED", "Finish": "Natural Whitewash / Warm Patina", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Holiday & Festive", "Subcategory": "holiday-decor"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'f809989d-1523-4750-8d73-c79eca3171c5',
  'Crackle Glass Festive Vanity Hurricane Set',
  'crackle-glass-festive-vanity-hurricane-set-fhd-rd-6005',
  'FHD-RD-6005',
  'Set of artisan mouth-blown crackle glass candle hurricanes seated on hand-spun solid brass pedestal collars, creating dramatic light refraction.',
  98.0,
  10,
  '[{"min_qty": 10, "max_qty": 30, "unit_price": 98.0}, {"min_qty": 31, "max_qty": 80, "unit_price": 88.2}, {"min_qty": 81, "max_qty": null, "unit_price": 78.4}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/eqisylqydprvbailry7k.jpg']::TEXT[],
  '{"Dimensions": "7 x 7 x 12 in", "Material": "Handblown Crackle Glass & Brass", "Finish": "Champagne Luster / Antique Brass", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "accessories", "Category": "Holiday & Festive", "Subcategory": "holiday-decor"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;
