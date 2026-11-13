-- =============================================================================
-- FAIR HOME DECOR — Lighting Products Supabase Seed Script
-- Ingests 125 Table & Accent Lamps with Cloudinary URLs and Specifications
-- Run this script in Supabase SQL Editor:
-- https://supabase.com/dashboard/project/cfxcoorzcomorptmuala/sql/new
-- =============================================================================

-- 1. Ensure Table Lamps Category Exists in Lighting Department
INSERT INTO public.categories (id, name, slug, department, image_url, description)
VALUES ('3ceffc40-baec-405a-bbb7-434052fb304e', 'Artisanal Table Lamps', 'table-lamps', 'lighting', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794598335/fairhomedecor/lighting/ladyiotpzxpwi3toukqr.jpg', 'Handcrafted solid wood, brass, and artisanal lighting fixtures for luxury trade projects.')
ON CONFLICT (slug) DO UPDATE SET
  department = EXCLUDED.department,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

-- 2. Seed 125 Lighting Products
INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2526',
  'lamp-fhd-2526',
  'FHD-2526',
  'Handcrafted artisanal table lamp FHD-2526 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598335/fairhomedecor/lighting/ladyiotpzxpwi3toukqr.jpg', '/assets/images/products/lighting/fhd-2526.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 16\u201d \u00b7 Shade: D 14 x Ht 11\u201d", "Body Dimensions": "5\u201dx Ht 16\u201d", "Shade Dimensions": "D 14 x Ht 11\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2321',
  'lamp-fhd-2321',
  'FHD-2321',
  'Handcrafted artisanal table lamp FHD-2321 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598519/fairhomedecor/lighting/hh0gu7opab9tkt4aoytj.jpg', '/assets/images/products/lighting/fhd-2321.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 12\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "5\u201dx Ht 12\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3245',
  'lamp-fhd-3245',
  'FHD-3245',
  'Handcrafted artisanal table lamp FHD-3245 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598567/fairhomedecor/lighting/zxflujml80z8afj46odw.jpg', '/assets/images/products/lighting/fhd-3245.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 11\u201d \u00b7 Shade: D 12 x Ht 9\u201d", "Body Dimensions": "5\u201dx Ht 11\u201d", "Shade Dimensions": "D 12 x Ht 9\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3243',
  'lamp-fhd-3243',
  'FHD-3243',
  'Handcrafted artisanal table lamp FHD-3243 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598574/fairhomedecor/lighting/zxiea94eb6hfg4g4te80.jpg', '/assets/images/products/lighting/fhd-3243.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.75\u201dx Ht 16\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5.75\u201dx Ht 16\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2869',
  'lamp-fhd-2869',
  'FHD-2869',
  'Handcrafted artisanal table lamp FHD-2869 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598581/fairhomedecor/lighting/komg4fuf8rhxf1hsdvgp.jpg', '/assets/images/products/lighting/fhd-2869.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.75\u201dx Ht 14\u201d \u00b7 Shade: D 12 x Ht 9\u201d", "Body Dimensions": "5.75\u201dx Ht 14\u201d", "Shade Dimensions": "D 12 x Ht 9\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2119',
  'lamp-fhd-2119',
  'FHD-2119',
  'Handcrafted artisanal table lamp FHD-2119 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598564/fairhomedecor/lighting/eijh4bditcwzfhz4gfm7.jpg', '/assets/images/products/lighting/fhd-2119.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 8.75\u201dx Ht 10\u201d \u00b7 Shade: D 12 x Ht 9\u201d", "Body Dimensions": "8.75\u201dx Ht 10\u201d", "Shade Dimensions": "D 12 x Ht 9\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2394',
  'lamp-fhd-2394',
  'FHD-2394',
  'Handcrafted artisanal table lamp FHD-2394 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598571/fairhomedecor/lighting/jmxdrsd93rdujfgztn2w.jpg', '/assets/images/products/lighting/fhd-2394.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6.75\u201dx Ht 12\u201d \u00b7 Shade: D 12 x Ht 9\u201d", "Body Dimensions": "6.75\u201dx Ht 12\u201d", "Shade Dimensions": "D 12 x Ht 9\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2526S',
  'lamp-fhd-2526s',
  'FHD-2526S',
  'Handcrafted artisanal table lamp FHD-2526S crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598553/fairhomedecor/lighting/w96vjzo3nub5lgak1kfn.jpg', '/assets/images/products/lighting/fhd-2526s.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 4\u201dx Ht 8\u201d \u00b7 Shade: D 10 x Ht 8\u201d", "Body Dimensions": "4\u201dx Ht 8\u201d", "Shade Dimensions": "D 10 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-26312',
  'lamp-fhd-26312',
  'FHD-26312',
  'Handcrafted artisanal table lamp FHD-26312 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598560/fairhomedecor/lighting/kiqkpk6hjw9xbizygu8e.jpg', '/assets/images/products/lighting/fhd-26312.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 10\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "5\u201dx Ht 10\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2700',
  'lamp-fhd-2700',
  'FHD-2700',
  'Handcrafted artisanal table lamp FHD-2700 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598577/fairhomedecor/lighting/ajhvd13qhqyenfocwxdl.jpg', '/assets/images/products/lighting/fhd-2700.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 10/4.25\u201dx Ht 14.5\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "10/4.25\u201dx Ht 14.5\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2896',
  'lamp-fhd-2896',
  'FHD-2896',
  'Handcrafted artisanal table lamp FHD-2896 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598568/fairhomedecor/lighting/magk86p5nseyqbh9byoy.jpg', '/assets/images/products/lighting/fhd-2896.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 12\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "5\u201dx Ht 12\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2380',
  'lamp-fhd-2380',
  'FHD-2380',
  'Handcrafted artisanal table lamp FHD-2380 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598562/fairhomedecor/lighting/oezc9fm8gp0u7heg60xu.jpg', '/assets/images/products/lighting/fhd-2380.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 12.5\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "5\u201dx Ht 12.5\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3354',
  'lamp-fhd-3354',
  'FHD-3354',
  'Handcrafted artisanal table lamp FHD-3354 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598561/fairhomedecor/lighting/suiaz3evjov7hgje1kbv.jpg', '/assets/images/products/lighting/fhd-3354.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 4\u201dx Ht 12\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "4\u201dx Ht 12\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2957',
  'lamp-fhd-2957',
  'FHD-2957',
  'Handcrafted artisanal table lamp FHD-2957 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598584/fairhomedecor/lighting/kpcrkyoveewmnib6dyrg.jpg', '/assets/images/products/lighting/fhd-2957.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6.75\u201dx Ht 11\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "6.75\u201dx Ht 11\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2675',
  'lamp-fhd-2675',
  'FHD-2675',
  'Handcrafted artisanal table lamp FHD-2675 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598565/fairhomedecor/lighting/mc1ihj3mh0kmfr5ikkav.jpg', '/assets/images/products/lighting/fhd-2675.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 8\u201dx Ht 7\u201d \u00b7 Shade: D 10 x Ht 8\u201d", "Body Dimensions": "8\u201dx Ht 7\u201d", "Shade Dimensions": "D 10 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3175',
  'lamp-fhd-3175',
  'FHD-3175',
  'Handcrafted artisanal table lamp FHD-3175 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598564/fairhomedecor/lighting/elzxkv7gyml3cg75lhmt.jpg', '/assets/images/products/lighting/fhd-3175.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.5\u201dx Ht 12\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "5.5\u201dx Ht 12\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3737',
  'lamp-fhd-3737',
  'FHD-3737',
  'Handcrafted artisanal table lamp FHD-3737 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598578/fairhomedecor/lighting/cfniwxnfaj27nshwy3fa.jpg', '/assets/images/products/lighting/fhd-3737.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6\u201dx Ht 12\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "6\u201dx Ht 12\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2855',
  'lamp-fhd-2855',
  'FHD-2855',
  'Handcrafted artisanal table lamp FHD-2855 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598569/fairhomedecor/lighting/ht8qfqdeap4ly52gvj7w.jpg', '/assets/images/products/lighting/fhd-2855.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 8\u201dx Ht 10\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "8\u201dx Ht 10\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3782',
  'lamp-fhd-3782',
  'FHD-3782',
  'Handcrafted artisanal table lamp FHD-3782 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598583/fairhomedecor/lighting/bvsmn7mxk4xnoj1ohy8y.jpg', '/assets/images/products/lighting/fhd-3782.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 11\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5\u201dx Ht 11\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2875',
  'lamp-fhd-2875',
  'FHD-2875',
  'Handcrafted artisanal table lamp FHD-2875 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598572/fairhomedecor/lighting/bwspcbzalvr8tjlesipj.jpg', '/assets/images/products/lighting/fhd-2875.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 11\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5\u201dx Ht 11\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3157',
  'lamp-fhd-3157',
  'FHD-3157',
  'Handcrafted artisanal table lamp FHD-3157 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598567/fairhomedecor/lighting/m8uortrzrwden2r3yzfb.jpg', '/assets/images/products/lighting/fhd-3157.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 7\u201dx Ht 8\u201d \u00b7 Shade: D 14/10 x Ht 8\u201d", "Body Dimensions": "7\u201dx Ht 8\u201d", "Shade Dimensions": "D 14/10 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2875',
  'lamp-fhd-2875',
  'FHD-2875',
  'Handcrafted artisanal table lamp FHD-2875 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598572/fairhomedecor/lighting/bwspcbzalvr8tjlesipj.jpg', '/assets/images/products/lighting/fhd-2875.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 12\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5\u201dx Ht 12\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2666',
  'lamp-fhd-2666',
  'FHD-2666',
  'Handcrafted artisanal table lamp FHD-2666 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598551/fairhomedecor/lighting/p914ftx9bthkfeswwmvg.jpg', '/assets/images/products/lighting/fhd-2666.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 10\u201dx Ht 9\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "10\u201dx Ht 9\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3238',
  'lamp-fhd-3238',
  'FHD-3238',
  'Handcrafted artisanal table lamp FHD-3238 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598576/fairhomedecor/lighting/bffht30k9sj0xcqnm7s8.jpg', '/assets/images/products/lighting/fhd-3238.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 12\u201d \u00b7 Shade: D 14/10 x Ht 8\u201d", "Body Dimensions": "5\u201dx Ht 12\u201d", "Shade Dimensions": "D 14/10 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2597',
  'lamp-fhd-2597',
  'FHD-2597',
  'Handcrafted artisanal table lamp FHD-2597 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598544/fairhomedecor/lighting/vojcfzpguraktaukkned.jpg', '/assets/images/products/lighting/fhd-2597.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6\u201dx Ht 12\u201d \u00b7 Shade: D 14/10 x Ht 8\u201d", "Body Dimensions": "6\u201dx Ht 12\u201d", "Shade Dimensions": "D 14/10 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3723',
  'lamp-fhd-3723',
  'FHD-3723',
  'Handcrafted artisanal table lamp FHD-3723 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598547/fairhomedecor/lighting/qi8in2ux7hh7juxh6mdq.jpg', '/assets/images/products/lighting/fhd-3723.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 12\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5\u201dx Ht 12\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3807',
  'lamp-fhd-3807',
  'FHD-3807',
  'Handcrafted artisanal table lamp FHD-3807 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598555/fairhomedecor/lighting/vxfxsdoalj7bohqfqrle.jpg', '/assets/images/products/lighting/fhd-3807.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 7\u201dx Ht 12\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "7\u201dx Ht 12\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3770T',
  'lamp-fhd-3770t',
  'FHD-3770T',
  'Handcrafted artisanal table lamp FHD-3770T crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598580/fairhomedecor/lighting/rzamfs0raiopq5qpbstx.jpg', '/assets/images/products/lighting/fhd-3770t.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6.25\u201dx Ht 13\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "6.25\u201dx Ht 13\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3525',
  'lamp-fhd-3525',
  'FHD-3525',
  'Handcrafted artisanal table lamp FHD-3525 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598565/fairhomedecor/lighting/x3ke09rqflzsdzurtsg2.jpg', '/assets/images/products/lighting/fhd-3525.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.5\u201dx Ht 14.5\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5.5\u201dx Ht 14.5\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3791',
  'lamp-fhd-3791',
  'FHD-3791',
  'Handcrafted artisanal table lamp FHD-3791 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598558/fairhomedecor/lighting/nfffxuvdqtodqny3bf0p.jpg', '/assets/images/products/lighting/fhd-3791.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 15\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5\u201dx Ht 15\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3585',
  'lamp-fhd-3585',
  'FHD-3585',
  'Handcrafted artisanal table lamp FHD-3585 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598570/fairhomedecor/lighting/i3ruptumwbne7ivjscql.jpg', '/assets/images/products/lighting/fhd-3585.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.5\u201dx Ht 14.5\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "5.5\u201dx Ht 14.5\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3099',
  'lamp-fhd-3099',
  'FHD-3099',
  'Handcrafted artisanal table lamp FHD-3099 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598550/fairhomedecor/lighting/zpkatbu3entyanx2mhxm.jpg', '/assets/images/products/lighting/fhd-3099.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.5\u201dx Ht 12\u201d \u00b7 Shade: D 14/4 x Ht 8.5\u201d", "Body Dimensions": "5.5\u201dx Ht 12\u201d", "Shade Dimensions": "D 14/4 x Ht 8.5\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3527',
  'lamp-fhd-3527',
  'FHD-3527',
  'Handcrafted artisanal table lamp FHD-3527 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598572/fairhomedecor/lighting/s2swc8uzshs2pyqtsjsl.jpg', '/assets/images/products/lighting/fhd-3527.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 3.5\u201dx Ht 10.5\u201d \u00b7 Shade: D 14/4 x Ht 6.5\u201d", "Body Dimensions": "3.5\u201dx Ht 10.5\u201d", "Shade Dimensions": "D 14/4 x Ht 6.5\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3483',
  'lamp-fhd-3483',
  'FHD-3483',
  'Handcrafted artisanal table lamp FHD-3483 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598562/fairhomedecor/lighting/ulbexl8omof7ix259ffc.jpg', '/assets/images/products/lighting/fhd-3483.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 4.25\u201dx Ht 11\u201d \u00b7 Shade: D 12 x Ht 6\u201d", "Body Dimensions": "4.25\u201dx Ht 11\u201d", "Shade Dimensions": "D 12 x Ht 6\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3729',
  'lamp-fhd-3729',
  'FHD-3729',
  'Handcrafted artisanal table lamp FHD-3729 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598558/fairhomedecor/lighting/dj0ntu0idbjf8kxopdfr.jpg', '/assets/images/products/lighting/fhd-3729.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 12\u201d \u00b7 Shade: D 10 x Ht 7\u201d", "Body Dimensions": "5\u201dx Ht 12\u201d", "Shade Dimensions": "D 10 x Ht 7\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3703',
  'lamp-fhd-3703',
  'FHD-3703',
  'Handcrafted artisanal table lamp FHD-3703 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598547/fairhomedecor/lighting/ilwb1gcuesbpq7giwass.jpg', '/assets/images/products/lighting/fhd-3703.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 4\u201dx Ht 8\u201d \u00b7 Shade: D 10 x Ht 8\u201d", "Body Dimensions": "4\u201dx Ht 8\u201d", "Shade Dimensions": "D 10 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3083',
  'lamp-fhd-3083',
  'FHD-3083',
  'Handcrafted artisanal table lamp FHD-3083 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598545/fairhomedecor/lighting/zfvlw2tx5dfebn8vxdnn.jpg', '/assets/images/products/lighting/fhd-3083.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 8\u201dx Ht 10\u201d \u00b7 Shade: D 12 x Ht 8\u201d", "Body Dimensions": "8\u201dx Ht 10\u201d", "Shade Dimensions": "D 12 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3608',
  'lamp-fhd-3608',
  'FHD-3608',
  'Handcrafted artisanal table lamp FHD-3608 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598581/fairhomedecor/lighting/e2byqvhzm8fnyczi6mbh.jpg', '/assets/images/products/lighting/fhd-3608.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 9\u2019\u2019 \u00b7 Shade: D 8 x Ht 12\u201d", "Body Dimensions": "5\u201dx Ht 9\u2019\u2019", "Shade Dimensions": "D 8 x Ht 12\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3102',
  'lamp-fhd-3102',
  'FHD-3102',
  'Handcrafted artisanal table lamp FHD-3102 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598563/fairhomedecor/lighting/jaix0anvkcokcosz45lv.jpg', '/assets/images/products/lighting/fhd-3102.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.25\u201dx Ht 8\u201d \u00b7 Shade: D 12/8 x Ht 8\u201d", "Body Dimensions": "5.25\u201dx Ht 8\u201d", "Shade Dimensions": "D 12/8 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3100',
  'lamp-fhd-3100',
  'FHD-3100',
  'Handcrafted artisanal table lamp FHD-3100 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598569/fairhomedecor/lighting/gsflfapjl2adtssm16tu.jpg', '/assets/images/products/lighting/fhd-3100.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6\u201dx Ht 15\u201d \u00b7 Shade: D 14/12 x Ht 10\u201d", "Body Dimensions": "6\u201dx Ht 15\u201d", "Shade Dimensions": "D 14/12 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2401',
  'lamp-fhd-2401',
  'FHD-2401',
  'Handcrafted artisanal table lamp FHD-2401 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598559/fairhomedecor/lighting/uzuzqyxbigni2iq8dbrn.jpg', '/assets/images/products/lighting/fhd-2401.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6\u201dx Ht 3.5\u201d \u00b7 Shade: D 7 x Ht 8\u201d", "Body Dimensions": "6\u201dx Ht 3.5\u201d", "Shade Dimensions": "D 7 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2679',
  'lamp-fhd-2679',
  'FHD-2679',
  'Handcrafted artisanal table lamp FHD-2679 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598567/fairhomedecor/lighting/r8jeo4r71jjvpfgrfala.jpg', '/assets/images/products/lighting/fhd-2679.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6\u201dx Ht 7\u201d \u00b7 Shade: D 10 x Ht 8\u201d", "Body Dimensions": "6\u201dx Ht 7\u201d", "Shade Dimensions": "D 10 x Ht 8\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-3705',
  'lamp-fhd-3705',
  'FHD-3705',
  'Handcrafted artisanal table lamp FHD-3705 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598560/fairhomedecor/lighting/zpb6abc6krk0r1agt0mk.jpg', '/assets/images/products/lighting/fhd-3705.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5.25\u201dx Ht 7\u201d \u00b7 Shade: D 7 x Ht 10\u201d", "Body Dimensions": "5.25\u201dx Ht 7\u201d", "Shade Dimensions": "D 7 x Ht 10\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2405',
  'lamp-fhd-2405',
  'FHD-2405',
  'Handcrafted artisanal table lamp FHD-2405 crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598574/fairhomedecor/lighting/l9f4cqes7w9pul3vhjei.jpg', '/assets/images/products/lighting/fhd-2405.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 5\u201dx Ht 7\u201d \u00b7 Shade: D 7 x Ht 7\u201d", "Body Dimensions": "5\u201dx Ht 7\u201d", "Shade Dimensions": "D 7 x Ht 7\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Artisanal Turned Timber Table Lamp FHD-2359L',
  'lamp-fhd-2359l',
  'FHD-2359L',
  'Handcrafted artisanal table lamp FHD-2359L crafted from kiln-dried solid hardwood with sculptural turned contours and balanced architectural proportions. Fitted with a bespoke natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, boutique hotel suites, and high-end residential interiors.',
  175.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 175.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 157.5}, {"min_qty": 41, "max_qty": null, "unit_price": 140.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598568/fairhomedecor/lighting/ownqhk8enp09hk8iiktz.jpg', '/assets/images/products/lighting/fhd-2359l.jpeg']::TEXT[],
  '{"Overall Dimensions": "Body: 6\u201dx Ht 16\u201d \u00b7 Shade: D 14 x Ht 11\u201d", "Body Dimensions": "6\u201dx Ht 16\u201d", "Shade Dimensions": "D 14 x Ht 11\u201d", "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade", "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin", "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20001',
  'lamp-rkil-20001',
  'RKIL-20001',
  'Handcrafted lighting accent lamp RKIL-20001 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598521/fairhomedecor/lighting/lzftuz1q7nkgsfjysutz.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20002',
  'lamp-rkil-20002',
  'RKIL-20002',
  'Handcrafted lighting accent lamp RKIL-20002 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598565/fairhomedecor/lighting/beialdfhef5xrktf44hu.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20003',
  'lamp-rkil-20003',
  'RKIL-20003',
  'Handcrafted lighting accent lamp RKIL-20003 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598557/fairhomedecor/lighting/y9upu1eftw1nnjiwisno.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20004',
  'lamp-rkil-20004',
  'RKIL-20004',
  'Handcrafted lighting accent lamp RKIL-20004 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598545/fairhomedecor/lighting/j8ws7k2dtwqekuunmdq1.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20005',
  'lamp-rkil-20005',
  'RKIL-20005',
  'Handcrafted lighting accent lamp RKIL-20005 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598545/fairhomedecor/lighting/k2zncjfcfgxns7ic1qlr.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20006',
  'lamp-rkil-20006',
  'RKIL-20006',
  'Handcrafted lighting accent lamp RKIL-20006 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598549/fairhomedecor/lighting/qshwtoqikidbzzolgokx.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  true
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20007',
  'lamp-rkil-20007',
  'RKIL-20007',
  'Handcrafted lighting accent lamp RKIL-20007 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598550/fairhomedecor/lighting/uphiia3wiprtp5s8vm5x.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20008',
  'lamp-rkil-20008',
  'RKIL-20008',
  'Handcrafted lighting accent lamp RKIL-20008 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598556/fairhomedecor/lighting/lygpux7wqpaakfh4qmra.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20009',
  'lamp-rkil-20009',
  'RKIL-20009',
  'Handcrafted lighting accent lamp RKIL-20009 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598582/fairhomedecor/lighting/envativeu4tmgkla3urq.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20010',
  'lamp-rkil-20010',
  'RKIL-20010',
  'Handcrafted lighting accent lamp RKIL-20010 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598545/fairhomedecor/lighting/xusjvaqmgzhongnbqzju.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20011',
  'lamp-rkil-20011',
  'RKIL-20011',
  'Handcrafted lighting accent lamp RKIL-20011 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598579/fairhomedecor/lighting/jhvfred6zfwvctwwkftk.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20012',
  'lamp-rkil-20012',
  'RKIL-20012',
  'Handcrafted lighting accent lamp RKIL-20012 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598552/fairhomedecor/lighting/vsnkh1kxzgodburfqfns.jpg', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794598557/fairhomedecor/lighting/feee8s83qetht76tbph8.jpg', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794598564/fairhomedecor/lighting/pmjt0vynrop7bucvgk70.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20013',
  'lamp-rkil-20013',
  'RKIL-20013',
  'Handcrafted lighting accent lamp RKIL-20013 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598550/fairhomedecor/lighting/gcxwnegsfjiq7hmegova.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20014',
  'lamp-rkil-20014',
  'RKIL-20014',
  'Handcrafted lighting accent lamp RKIL-20014 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598554/fairhomedecor/lighting/nl9erglnj9tmbvhzqfhn.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20015',
  'lamp-rkil-20015',
  'RKIL-20015',
  'Handcrafted lighting accent lamp RKIL-20015 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598556/fairhomedecor/lighting/v7spk2lzxli50jes745d.png', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794598549/fairhomedecor/lighting/ezlccfdapiog9zcpmqlg.png', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794598549/fairhomedecor/lighting/foaoss8a32jqa9nnvjhq.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20016',
  'lamp-rkil-20016',
  'RKIL-20016',
  'Handcrafted lighting accent lamp RKIL-20016 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598552/fairhomedecor/lighting/pi9sboructlx52fjgcvf.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20017',
  'lamp-rkil-20017',
  'RKIL-20017',
  'Handcrafted lighting accent lamp RKIL-20017 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598552/fairhomedecor/lighting/ppglrtbv62bkdmxbjl0s.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20018',
  'lamp-rkil-20018',
  'RKIL-20018',
  'Handcrafted lighting accent lamp RKIL-20018 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598575/fairhomedecor/lighting/k9ezuypf6ii2ia0comni.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20019',
  'lamp-rkil-20019',
  'RKIL-20019',
  'Handcrafted lighting accent lamp RKIL-20019 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598576/fairhomedecor/lighting/dszocglp2tvvlasroksl.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20020',
  'lamp-rkil-20020',
  'RKIL-20020',
  'Handcrafted lighting accent lamp RKIL-20020 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598571/fairhomedecor/lighting/pmncyrdvbjqecklheynl.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20021',
  'lamp-rkil-20021',
  'RKIL-20021',
  'Handcrafted lighting accent lamp RKIL-20021 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598582/fairhomedecor/lighting/ldwgiu1rhwhflat4kktd.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20022',
  'lamp-rkil-20022',
  'RKIL-20022',
  'Handcrafted lighting accent lamp RKIL-20022 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598560/fairhomedecor/lighting/vyaaxfgnm4po7pa0mobm.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20023',
  'lamp-rkil-20023',
  'RKIL-20023',
  'Handcrafted lighting accent lamp RKIL-20023 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598560/fairhomedecor/lighting/vbvnsdhjjje9seybxfq7.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20024',
  'lamp-rkil-20024',
  'RKIL-20024',
  'Handcrafted lighting accent lamp RKIL-20024 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598553/fairhomedecor/lighting/nzvvumggci5skpkxt8en.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20025',
  'lamp-rkil-20025',
  'RKIL-20025',
  'Handcrafted lighting accent lamp RKIL-20025 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598576/fairhomedecor/lighting/gttvio6pxtry0ly0hxui.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20026',
  'lamp-rkil-20026',
  'RKIL-20026',
  'Handcrafted lighting accent lamp RKIL-20026 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598584/fairhomedecor/lighting/t74gububkwvazqvsxxtz.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20027',
  'lamp-rkil-20027',
  'RKIL-20027',
  'Handcrafted lighting accent lamp RKIL-20027 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598578/fairhomedecor/lighting/tcrstrip6jzrvbyua0nv.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20028',
  'lamp-rkil-20028',
  'RKIL-20028',
  'Handcrafted lighting accent lamp RKIL-20028 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598550/fairhomedecor/lighting/xs2nkggvut85lqe1yeie.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20029',
  'lamp-rkil-20029',
  'RKIL-20029',
  'Handcrafted lighting accent lamp RKIL-20029 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598555/fairhomedecor/lighting/bsipbxyz4mcxqvxiotgw.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20030',
  'lamp-rkil-20030',
  'RKIL-20030',
  'Handcrafted lighting accent lamp RKIL-20030 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598583/fairhomedecor/lighting/fh3dawjelrz4k7v9vrk3.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20031',
  'lamp-rkil-20031',
  'RKIL-20031',
  'Handcrafted lighting accent lamp RKIL-20031 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598577/fairhomedecor/lighting/agxk0ukrqrgrbxws52mm.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20032',
  'lamp-rkil-20032',
  'RKIL-20032',
  'Handcrafted lighting accent lamp RKIL-20032 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598579/fairhomedecor/lighting/tnos95nkn3ztlyhjataj.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20033',
  'lamp-rkil-20033',
  'RKIL-20033',
  'Handcrafted lighting accent lamp RKIL-20033 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598578/fairhomedecor/lighting/vc8bvazfdixd6apvp7li.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20034',
  'lamp-rkil-20034',
  'RKIL-20034',
  'Handcrafted lighting accent lamp RKIL-20034 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598585/fairhomedecor/lighting/sytkk9xazz8oqjkrddcw.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20035',
  'lamp-rkil-20035',
  'RKIL-20035',
  'Handcrafted lighting accent lamp RKIL-20035 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598582/fairhomedecor/lighting/ilo94kykwujdjb2rtoms.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20036',
  'lamp-rkil-20036',
  'RKIL-20036',
  'Handcrafted lighting accent lamp RKIL-20036 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598569/fairhomedecor/lighting/lvji6weuqevrbrrnh9wb.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20037',
  'lamp-rkil-20037',
  'RKIL-20037',
  'Handcrafted lighting accent lamp RKIL-20037 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598582/fairhomedecor/lighting/dbijyeohjzuptdok46w0.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20038',
  'lamp-rkil-20038',
  'RKIL-20038',
  'Handcrafted lighting accent lamp RKIL-20038 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598547/fairhomedecor/lighting/uvtdse3eyymhqiugxuv1.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20039',
  'lamp-rkil-20039',
  'RKIL-20039',
  'Handcrafted lighting accent lamp RKIL-20039 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598545/fairhomedecor/lighting/iypeefkxy0jdbxkg8ymo.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20040',
  'lamp-rkil-20040',
  'RKIL-20040',
  'Handcrafted lighting accent lamp RKIL-20040 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598570/fairhomedecor/lighting/ci6va8c3lnvskkrxmzqc.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20041',
  'lamp-rkil-20041',
  'RKIL-20041',
  'Handcrafted lighting accent lamp RKIL-20041 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598572/fairhomedecor/lighting/gmhoqzbhrcwfrjlzi2sx.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20042',
  'lamp-rkil-20042',
  'RKIL-20042',
  'Handcrafted lighting accent lamp RKIL-20042 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598572/fairhomedecor/lighting/rygy6fl1g2kqqdbuzblk.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20043',
  'lamp-rkil-20043',
  'RKIL-20043',
  'Handcrafted lighting accent lamp RKIL-20043 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598573/fairhomedecor/lighting/klijhqwmkpchug7dqkx7.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20044',
  'lamp-rkil-20044',
  'RKIL-20044',
  'Handcrafted lighting accent lamp RKIL-20044 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598548/fairhomedecor/lighting/xn1hud7szpemlzfhijqz.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20045',
  'lamp-rkil-20045',
  'RKIL-20045',
  'Handcrafted lighting accent lamp RKIL-20045 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598552/fairhomedecor/lighting/k5hvrqrvj6aabapqpj5o.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20046',
  'lamp-rkil-20046',
  'RKIL-20046',
  'Handcrafted lighting accent lamp RKIL-20046 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598578/fairhomedecor/lighting/zj04klwmf8sj6ig7giel.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20047',
  'lamp-rkil-20047',
  'RKIL-20047',
  'Handcrafted lighting accent lamp RKIL-20047 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598580/fairhomedecor/lighting/vcc9gcaob92lvh9rdfsf.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20048',
  'lamp-rkil-20048',
  'RKIL-20048',
  'Handcrafted lighting accent lamp RKIL-20048 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598563/fairhomedecor/lighting/dnrzngqukcmlqcg7h6t8.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20049',
  'lamp-rkil-20049',
  'RKIL-20049',
  'Handcrafted lighting accent lamp RKIL-20049 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598554/fairhomedecor/lighting/ap8rymgjum5iykucy6iq.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20050',
  'lamp-rkil-20050',
  'RKIL-20050',
  'Handcrafted lighting accent lamp RKIL-20050 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598579/fairhomedecor/lighting/gkbsfvgjsylpdfjxcxos.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20051',
  'lamp-rkil-20051',
  'RKIL-20051',
  'Handcrafted lighting accent lamp RKIL-20051 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598580/fairhomedecor/lighting/wqyqxl1i3isde27jlim1.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20052',
  'lamp-rkil-20052',
  'RKIL-20052',
  'Handcrafted lighting accent lamp RKIL-20052 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598547/fairhomedecor/lighting/t7d2f8x8pknrwvhpsqcr.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20053',
  'lamp-rkil-20053',
  'RKIL-20053',
  'Handcrafted lighting accent lamp RKIL-20053 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598552/fairhomedecor/lighting/rursxbzdolvyqzuuiq5y.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20054',
  'lamp-rkil-20054',
  'RKIL-20054',
  'Handcrafted lighting accent lamp RKIL-20054 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598556/fairhomedecor/lighting/zxg9cucvs7ip4fdg8y4d.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20055',
  'lamp-rkil-20055',
  'RKIL-20055',
  'Handcrafted lighting accent lamp RKIL-20055 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598565/fairhomedecor/lighting/wjlqyvqg79hh1r7giy0s.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20056',
  'lamp-rkil-20056',
  'RKIL-20056',
  'Handcrafted lighting accent lamp RKIL-20056 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598566/fairhomedecor/lighting/dgosndx69c81egnjkv6d.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20057',
  'lamp-rkil-20057',
  'RKIL-20057',
  'Handcrafted lighting accent lamp RKIL-20057 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598574/fairhomedecor/lighting/vvvpwjfbpytedhf81wl3.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20058',
  'lamp-rkil-20058',
  'RKIL-20058',
  'Handcrafted lighting accent lamp RKIL-20058 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598558/fairhomedecor/lighting/uvo1qsun15fj3y7fkni3.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20059',
  'lamp-rkil-20059',
  'RKIL-20059',
  'Handcrafted lighting accent lamp RKIL-20059 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598563/fairhomedecor/lighting/brmyltfrx4jimgxwtkfm.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20060',
  'lamp-rkil-20060',
  'RKIL-20060',
  'Handcrafted lighting accent lamp RKIL-20060 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598562/fairhomedecor/lighting/lx7am2ztwqslnieigxfk.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20061',
  'lamp-rkil-20061',
  'RKIL-20061',
  'Handcrafted lighting accent lamp RKIL-20061 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598569/fairhomedecor/lighting/nsju7niyg75g4zqvdkn9.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20062',
  'lamp-rkil-20062',
  'RKIL-20062',
  'Handcrafted lighting accent lamp RKIL-20062 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598559/fairhomedecor/lighting/gx8hejklrdj2hkeqxii5.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20063',
  'lamp-rkil-20063',
  'RKIL-20063',
  'Handcrafted lighting accent lamp RKIL-20063 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598562/fairhomedecor/lighting/gxwaj4wwhrfwgtyoiysc.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20064',
  'lamp-rkil-20064',
  'RKIL-20064',
  'Handcrafted lighting accent lamp RKIL-20064 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598546/fairhomedecor/lighting/rk694u3f5vkvcgr94ugl.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20065',
  'lamp-rkil-20065',
  'RKIL-20065',
  'Handcrafted lighting accent lamp RKIL-20065 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598554/fairhomedecor/lighting/w5xqidtnvgzwiblflcb7.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20066',
  'lamp-rkil-20066',
  'RKIL-20066',
  'Handcrafted lighting accent lamp RKIL-20066 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598575/fairhomedecor/lighting/rzjiecf40ihnwm6suy7l.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20067',
  'lamp-rkil-20067',
  'RKIL-20067',
  'Handcrafted lighting accent lamp RKIL-20067 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598584/fairhomedecor/lighting/nw7c0elp0sptpiq0t2jl.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20068',
  'lamp-rkil-20068',
  'RKIL-20068',
  'Handcrafted lighting accent lamp RKIL-20068 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598569/fairhomedecor/lighting/yi5e4vdrhr6tj2i2urdv.png']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20069',
  'lamp-rkil-20069',
  'RKIL-20069',
  'Handcrafted lighting accent lamp RKIL-20069 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598551/fairhomedecor/lighting/kg3dqmagkcqtbicwdp6l.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20070',
  'lamp-rkil-20070',
  'RKIL-20070',
  'Handcrafted lighting accent lamp RKIL-20070 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598574/fairhomedecor/lighting/m7gwtc7ayvyelzhk9vy9.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20071',
  'lamp-rkil-20071',
  'RKIL-20071',
  'Handcrafted lighting accent lamp RKIL-20071 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598584/fairhomedecor/lighting/cwdpsaqiiaapwvdvsgwl.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20072',
  'lamp-rkil-20072',
  'RKIL-20072',
  'Handcrafted lighting accent lamp RKIL-20072 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598547/fairhomedecor/lighting/syx35pdujtnhajjjwvjm.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20073',
  'lamp-rkil-20073',
  'RKIL-20073',
  'Handcrafted lighting accent lamp RKIL-20073 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598553/fairhomedecor/lighting/zuqxiynjdcj7pwqadjwo.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20074',
  'lamp-rkil-20074',
  'RKIL-20074',
  'Handcrafted lighting accent lamp RKIL-20074 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598559/fairhomedecor/lighting/qovpzi8blmcbwuvrttrm.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20075',
  'lamp-rkil-20075',
  'RKIL-20075',
  'Handcrafted lighting accent lamp RKIL-20075 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598561/fairhomedecor/lighting/fbcta0ykcv4eukbqngje.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20076',
  'lamp-rkil-20076',
  'RKIL-20076',
  'Handcrafted lighting accent lamp RKIL-20076 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598567/fairhomedecor/lighting/jivctdscoebtu3kimxke.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20077',
  'lamp-rkil-20077',
  'RKIL-20077',
  'Handcrafted lighting accent lamp RKIL-20077 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598570/fairhomedecor/lighting/sxiwbazw4vkvafmq4pja.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20078',
  'lamp-rkil-20078',
  'RKIL-20078',
  'Handcrafted lighting accent lamp RKIL-20078 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598557/fairhomedecor/lighting/uci8c9bagbf5bjtistyu.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20079',
  'lamp-rkil-20079',
  'RKIL-20079',
  'Handcrafted lighting accent lamp RKIL-20079 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598564/fairhomedecor/lighting/jenm3cyuypepcijw8ney.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;

INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '3ceffc40-baec-405a-bbb7-434052fb304e',
  'Handcrafted Architectural Accent Lamp RKIL-20080',
  'lamp-rkil-20080',
  'RKIL-20080',
  'Handcrafted lighting accent lamp RKIL-20080 featuring precision turned solid hardwood, refined metal joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic commercial hospitality, restaurant dining rooms, and curated architectural residences.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794598573/fairhomedecor/lighting/ur2w0ab46cactna3wust.png', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794598566/fairhomedecor/lighting/gat8cunpzvsqydantkng.png', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794598558/fairhomedecor/lighting/q16vblne1ci9gh5kppkh.jpg']::TEXT[],
  '{"Overall Dimensions": "Dia 12\u201d x Ht 18\u201d \u00b7 Shade: D 12\u201d x Ht 8\u201d", "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents", "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring", "Material": "Turned Solid Wood \u00b7 Metal Craft", "Finish": "Natural Satin Wax & Antiqued Brass Accent", "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V", "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch", "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)", "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection", "Department": "lighting", "Category": "Artisanal Table Lamps", "Subcategory": "table-lamps"}'::jsonb,
  true,
  false
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;
