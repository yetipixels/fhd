-- =============================================================================
-- FAIR HOME DECOR — C-Tables & Console Tables Supabase Seed Script
-- Ingests 12 C-Tables & 32 Console Tables with Cloudinary URLs and Specifications
-- Run this script in Supabase SQL Editor:
-- https://supabase.com/dashboard/project/cfxcoorzcomorptmuala/sql/new
-- =============================================================================

-- 1. Ensure C-Tables Category Exists in Furnishing Department
INSERT INTO public.categories (id, name, slug, department, image_url, description)
VALUES ('d65a09d3-129e-4b34-93e9-4d506d3757a8', 'C-Tables & Sofa Accents', 'c-tables', 'furnishing', 'https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/xls4lxxh9zubuko5jcpn.jpg', 'Cantilever C-shaped side and sofa accent tables crafted in solid hardwood, metal, and natural marble.')
ON CONFLICT (slug) DO UPDATE SET
  department = EXCLUDED.department,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;

-- 2. Seed 44 Table Products
INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Artisanal Marble & Walnut C-Table FHD-CT-1001',
  'c-table-fhd-ct-1001',
  'FHD-CT-1001',
  'Cantilever C-shaped accent table featuring solid kiln-dried American walnut uprights and a rounded organic polished natural marble tabletop. Perfectly slides over sofa arms for drinks, laptops, and lounge accessories.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/xls4lxxh9zubuko5jcpn.jpg', '/assets/images/products/c-tables/fhd-ct-1001.jpeg']::TEXT[],
  '{"Dimensions": "18 x 12 x 26 in", "Material": "Solid Walnut & Natural Polished Marble Top", "Finish": "Natural Satin Walnut & Veined Grey Marble", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Dual-Shelf Marble & Timber C-Table FHD-CT-1002',
  'c-table-fhd-ct-1002',
  'FHD-CT-1002',
  'Architectural cantilever sofa table crafted with dual storage cubbies in solid walnut hardwood and crowned with an organic ivory granite stone top.',
  155.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 155.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 139.5}, {"min_qty": 41, "max_qty": null, "unit_price": 124.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601818/fairhomedecor/c-tables/rfgbzrfdl2pjwpd9cula.jpg', '/assets/images/products/c-tables/fhd-ct-1002.jpeg']::TEXT[],
  '{"Dimensions": "18 x 12 x 26 in", "Material": "Solid Walnut with Book Niche & Natural Polished Granite Top", "Finish": "Natural Satin Walnut & Ivory Granite", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Industrial Iron & Fossil Marble C-Table FHD-CT-1003',
  'c-table-fhd-ct-1003',
  'FHD-CT-1003',
  'Modernist cross-braced wrought iron metal C-table base supporting an artisanal natural fossil stone surface. Durable contract-grade construction.',
  125.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 125.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 112.5}, {"min_qty": 41, "max_qty": null, "unit_price": 100.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601818/fairhomedecor/c-tables/g0gegjfebjoxuroh31nc.jpg', '/assets/images/products/c-tables/fhd-ct-1003.jpeg']::TEXT[],
  '{"Dimensions": "18 x 12 x 26 in", "Material": "Matte Black Powder-Coated Metal / Iron Base & Natural Fossil Stone Top", "Finish": "Matte Black Wrought Metal & Earth Brown Marble", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Sculptural Solid Hardwood C-Table FHD-CT-1004',
  'c-table-fhd-ct-1004',
  'FHD-CT-1004',
  'Generational heirloom all-wood C-table featuring double turned timber support pillars and radiused solid walnut top and base plates.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601818/fairhomedecor/c-tables/gsmkgeteiw8umlpxwdpu.jpg', '/assets/images/products/c-tables/fhd-ct-1004.jpeg']::TEXT[],
  '{"Dimensions": "16 x 12 x 26 in", "Material": "100% Solid Kiln-Dried Walnut Hardwood", "Finish": "Hand-Turned Natural Walnut Satin", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Minimalist Round Natural Oak C-Table FHD-CT-1005',
  'c-table-fhd-ct-1005',
  'FHD-CT-1005',
  'Contemporary circular silhouette C-table executed in European solid white oak with seamless curved upright joinery.',
  130.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 130.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 117.0}, {"min_qty": 41, "max_qty": null, "unit_price": 104.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601818/fairhomedecor/c-tables/i5yhrmvgnkjyrnersdv2.jpg', '/assets/images/products/c-tables/fhd-ct-1005.jpeg']::TEXT[],
  '{"Dimensions": "15 x 15 x 26 in", "Material": "Solid Kiln-Dried White Oak Hardwood", "Finish": "Natural Matte Oak", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Bespoke Walnut & Marble C-Table FHD-CT-1006',
  'c-table-fhd-ct-1006',
  'FHD-CT-1006',
  'Turned twin-column solid walnut frame with a pillowed polished marble top insert. Built for high-end hospitality lounges.',
  145.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 145.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 130.5}, {"min_qty": 41, "max_qty": null, "unit_price": 116.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/mym1ygdmw3bjxpvl6zj3.jpg', '/assets/images/products/c-tables/fhd-ct-1006.jpeg']::TEXT[],
  '{"Dimensions": "16 x 12 x 26 in", "Material": "Turned Solid Walnut Timber Frame & Polished Marble Top", "Finish": "Natural Walnut & Light Sandstone Marble", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Arch Contour Solid Walnut C-Table FHD-CT-1007',
  'c-table-fhd-ct-1007',
  'FHD-CT-1007',
  'Mid-century inspired architectural C-table with sweeping parabolic arch spine cut from solid kiln-dried timber.',
  140.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 140.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 126.0}, {"min_qty": 41, "max_qty": null, "unit_price": 112.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/pg78ylxvuwegpww9ny4p.jpg', '/assets/images/products/c-tables/fhd-ct-1007.jpeg']::TEXT[],
  '{"Dimensions": "16 x 12 x 26 in", "Material": "Sculptural Arched Solid Walnut Hardwood", "Finish": "Rich Walnut Satin Wax", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Architectural Fluted Walnut C-Table FHD-CT-1008',
  'c-table-fhd-ct-1008',
  'FHD-CT-1008',
  'Bespoke fluted tambour wall paneling on the outer spine with an integrated interior open display shelf and rounded walnut base.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601818/fairhomedecor/c-tables/jauplatkqqs783zp0eyj.jpg', '/assets/images/products/c-tables/fhd-ct-1008.jpeg']::TEXT[],
  '{"Dimensions": "18 x 14 x 26 in", "Material": "Fluted Solid Walnut Hardwood with Mid-Shelf Niche", "Finish": "Architectural Fluted Natural Walnut", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Modern Industrial Steel & Oak C-Table FHD-CT-1009',
  'c-table-fhd-ct-1009',
  'FHD-CT-1009',
  'Clean-lined square tube steel cantilever frame finished in scratch-resistant matte black powder coat with a thick bullnose solid oak top.',
  120.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 120.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 108.0}, {"min_qty": 41, "max_qty": null, "unit_price": 96.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601818/fairhomedecor/c-tables/yl22thjrrdcnkl2licx1.jpg', '/assets/images/products/c-tables/fhd-ct-1009.jpeg']::TEXT[],
  '{"Dimensions": "18 x 12 x 26 in", "Material": "Matte Black Tubular Iron / Steel Frame & Solid Natural Oak Top", "Finish": "Powder-Coated Black Metal & Natural Oak", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Hammered Iron & Travertine C-Table FHD-CT-1010',
  'c-table-fhd-ct-1010',
  'FHD-CT-1010',
  'Artisanal hand-hammered forged iron uprights providing rich tactile texture, paired with a honed Italian beige travertine stone top.',
  150.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 150.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 135.0}, {"min_qty": 41, "max_qty": null, "unit_price": 120.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/e7ibe4mklpss4gnqsvlx.jpg', '/assets/images/products/c-tables/fhd-ct-1010.jpeg']::TEXT[],
  '{"Dimensions": "18 x 14 x 26 in", "Material": "Hand-Hammered Wrought Iron Base & Polished Travertine Stone Top", "Finish": "Textured Black Iron & Beige Travertine", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Curved Steel & Dark Marble C-Table FHD-CT-1011',
  'c-table-fhd-ct-1011',
  'FHD-CT-1011',
  'Continuous radius curved tubular black metal base with an inset polished dark Spanish Emperador marble stone slab.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/iygrrcxqbczt8anphfpz.jpg', '/assets/images/products/c-tables/fhd-ct-1011.jpeg']::TEXT[],
  '{"Dimensions": "18 x 12 x 26 in", "Material": "Curved Tubular Matte Black Steel Base & Dark Emperador Marble Top", "Finish": "Sleek Matte Black Metal & Polished Brown Marble", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  'd65a09d3-129e-4b34-93e9-4d506d3757a8',
  'Angular Iron & Emperador Marble C-Table FHD-CT-1012',
  'c-table-fhd-ct-1012',
  'FHD-CT-1012',
  'Geometric cantilever frame fabricated from heavy gauge structural steel in matte black with a rich polished natural marble top.',
  135.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 135.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 121.5}, {"min_qty": 41, "max_qty": null, "unit_price": 108.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/getccg04qde3ax4ftjen.jpg', '/assets/images/products/c-tables/fhd-ct-1012.jpeg']::TEXT[],
  '{"Dimensions": "18 x 12 x 26 in", "Material": "Architectural Angular Black Metal / Iron Frame & Dark Emperador Marble Top", "Finish": "Industrial Matte Black Metal & Polished Brown Marble", "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "C-Tables & Sofa Accents", "Subcategory": "c-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Two-Tone Timber 3-Tier Console Table FHD-CST-1031',
  'console-fhd-cst-1031',
  'FHD-CST-1031',
  'Substantial three-tier architectural entryway console featuring rounded solid timber posts in wire-brushed charcoal and thick natural wood shelves.',
  345.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 345.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 310.5}, {"min_qty": 41, "max_qty": null, "unit_price": 276.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601831/fairhomedecor/console-tables/zbft00xxc7svctivxx1a.jpg', '/assets/images/products/console-tables/fhd-cst-1031.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Two-Tone Solid Hardwood (Smoked Charcoal Oak Frame & Natural Reclaimed Timber Top)", "Finish": "Wire-Brushed Charcoal & Warm Natural Timber", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Arched Gable Multi-Tier Console FHD-CST-1032',
  'console-fhd-cst-1032',
  'FHD-CST-1032',
  'Solid timber entryway console with sculptural arch cutout side gables and dual lower display tiers for woven baskets and ceramics.',
  360.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 360.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 324.0}, {"min_qty": 41, "max_qty": null, "unit_price": 288.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601833/fairhomedecor/console-tables/i0t8swawxwqddthzdvxh.jpg', '/assets/images/products/console-tables/fhd-cst-1032.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Hardwood with Gable Arch Cutouts & Multi-Tier Shelving", "Finish": "Two-Tone Espresso Charcoal & Honey Brown Oak", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Fluted Apron Solid Walnut Console FHD-CST-1033',
  'console-fhd-cst-1033',
  'FHD-CST-1033',
  'Statement luxury console table showcasing precision vertical reeding along the expansive apron and substantial solid timber slab uprights.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601837/fairhomedecor/console-tables/hktizbxyzjt3z57suftj.jpg', '/assets/images/products/console-tables/fhd-cst-1033.jpeg']::TEXT[],
  '{"Dimensions": "42 x 14 x 30 in", "Material": "Architectural Fluted Solid Walnut Hardwood", "Finish": "Hand-Fluted Natural Walnut Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Curved Trestle Solid Teak Console FHD-CST-1034',
  'console-fhd-cst-1034',
  'FHD-CST-1034',
  'Mid-century Scandinavian silhouette with sweeping arch leg joinery, open bottom display shelf, and bullnose contoured tabletop.',
  365.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 365.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 328.5}, {"min_qty": 41, "max_qty": null, "unit_price": 292.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601842/fairhomedecor/console-tables/gkm5vy5gzu8rtg1d5yxt.jpg', '/assets/images/products/console-tables/fhd-cst-1034.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Kiln-Dried Teak / Walnut with Curved A-Frame Trestle Joinery", "Finish": "Hand-Rubbed Natural Teak Oil", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Rounded Post Solid Timber Console FHD-CST-1035',
  'console-fhd-cst-1035',
  'FHD-CST-1035',
  'Organic modern console table with heavy turned cylindrical corner legs, radiused corners, and a full-length lower gallery shelf.',
  330.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 330.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 297.0}, {"min_qty": 41, "max_qty": null, "unit_price": 264.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601844/fairhomedecor/console-tables/g3p5zngqiz3kut8dlff8.jpg', '/assets/images/products/console-tables/fhd-cst-1035.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Rounded Pillar Post Solid Walnut Hardwood with Display Shelf", "Finish": "Smooth Satin Natural Walnut", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Artisanal Geometric Cut-Out Console FHD-CST-1036',
  'console-fhd-cst-1036',
  'FHD-CST-1036',
  'Fretwork geometric circles intricately hand-carved through the solid wood apron, resting on clean square legs with an integrated shelf.',
  375.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 375.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 337.5}, {"min_qty": 41, "max_qty": null, "unit_price": 300.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601822/fairhomedecor/console-tables/rt0mgl6hhobap4fvephb.jpg', '/assets/images/products/console-tables/fhd-cst-1036.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Artisanal Geometric Cut-Out Solid Timber with Lower Shelf", "Finish": "Handcrafted Carved Walnut Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Double-Arch Charcoal & Teak Console FHD-CST-1037',
  'console-fhd-cst-1037',
  'FHD-CST-1037',
  'Dramatic inverted arch waterfall legs in wire-brushed charcoal oak, contrasting with a thick solid natural honey teak tabletop.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601823/fairhomedecor/console-tables/u7ldtnbidkmfkx95ajah.jpg', '/assets/images/products/console-tables/fhd-cst-1037.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Wood Double-Arch Pedestals in Charcoal Black & Natural Teak Top", "Finish": "Matte Charcoal Oak & Warm Teak Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Monolithic Solid Timber Pedestal Console FHD-CST-1038',
  'console-fhd-cst-1038',
  'FHD-CST-1038',
  'Sculptural monolith console featuring dual heavy rounded timber pedestal bases and a soft pill-shaped solid wood surface.',
  420.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 420.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 378.0}, {"min_qty": 41, "max_qty": null, "unit_price": 336.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601840/fairhomedecor/console-tables/k5vkmxh9xduwyeqvja8q.jpg', '/assets/images/products/console-tables/fhd-cst-1038.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Monolithic Sculptural Solid Hardwood Pedestals with Capsule Top", "Finish": "Natural Mango / Teak Satin Wax", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Waterfall Oak Console with Drawer FHD-CST-1039',
  'console-fhd-cst-1039',
  'FHD-CST-1039',
  'Soft rounded pillared silhouette in bleached European white oak featuring a smooth-gliding center storage drawer with a solid brass sphere pull.',
  380.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 380.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 342.0}, {"min_qty": 41, "max_qty": null, "unit_price": 304.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601846/fairhomedecor/console-tables/wpehfnhvjshgvbwpzzyn.jpg', '/assets/images/products/console-tables/fhd-cst-1039.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid White Oak with Soft Rounded Waterfall Gables, Storage Drawer & Brushed Brass Knob", "Finish": "Bleached Natural White Oak Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Cantilever C-Arc Solid Walnut Console FHD-CST-1040',
  'console-fhd-cst-1040',
  'FHD-CST-1040',
  'Spectacular cantilever C-arch architectural silhouette executed in rich solid walnut timber with seamless waterfall transitions.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601825/fairhomedecor/console-tables/azy7xeksavmzocz925fj.jpg', '/assets/images/products/console-tables/fhd-cst-1040.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Cantilever C-Arc Solid Walnut Hardwood Architectural Console", "Finish": "Rich Walnut Satin Wax", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Concentric Ring Metal & Marble Console FHD-CST-1041',
  'console-fhd-cst-1041',
  'FHD-CST-1041',
  'Artistic concentric steel rings forming the central pedestal, paired with a solid cast iron base and an inset veined white marble top.',
  375.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 375.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 337.5}, {"min_qty": 41, "max_qty": null, "unit_price": 300.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601820/fairhomedecor/console-tables/kmewg9ev5zhnnrdbbtlc.jpg', '/assets/images/products/console-tables/fhd-cst-1041.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Matte Black Powder-Coated Metal / Iron Concentric Ring Pedestal & Polished Carrara Marble Inset", "Finish": "Matte Black Wrought Metal & Veined White Marble", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Slatted Sled Metal & Reclaimed Wood Console FHD-CST-1042',
  'console-fhd-cst-1042',
  'FHD-CST-1042',
  'Contoured vertical steel tube sled frame in matte black, housing natural solid hardwood surfaces at both top and bottom levels.',
  320.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 320.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 288.0}, {"min_qty": 41, "max_qty": null, "unit_price": 256.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601846/fairhomedecor/console-tables/elaygiucthlu5i8yj87s.jpg', '/assets/images/products/console-tables/fhd-cst-1042.jpeg']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Curved Slatted Black Metal / Steel Sled Base & Solid Reclaimed Hardwood Top and Bottom Shelf", "Finish": "Matte Black Metal Craft & Warm Walnut Stained Wood", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Scalloped Apron Solid Teak Console FHD-CST-1043',
  'console-fhd-cst-1043',
  'FHD-CST-1043',
  'Gentle undulating scalloped apron carved into solid teak wood, featuring a slim 12-inch depth tailored for compact entryways and hallways.',
  340.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 340.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 306.0}, {"min_qty": 41, "max_qty": null, "unit_price": 272.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601839/fairhomedecor/console-tables/wdmp1yzkd8ek0g14muuq.jpg', '/assets/images/products/console-tables/fhd-cst-1043.jpeg']::TEXT[],
  '{"Dimensions": "40 x 12 x 30 in", "Material": "Scalloped Silhouette Solid Teak Hardwood with Lower Display Shelf", "Finish": "Natural Warm Honey Teak Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Scalloped Walnut & Marble Console FHD-CST-1044',
  'console-fhd-cst-1044',
  'FHD-CST-1044',
  'Scalloped solid walnut understructure crowned with a luxurious slab of polished natural Carrara marble.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601835/fairhomedecor/console-tables/u3wwtr8ifx7gqiu8w3nf.jpg', '/assets/images/products/console-tables/fhd-cst-1044.jpeg']::TEXT[],
  '{"Dimensions": "40 x 12 x 30 in", "Material": "Scalloped Solid Walnut Frame with Inset Polished White Marble Top", "Finish": "Natural Walnut & Veined Carrara Marble", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Stepped Triple-Arch Console FHD-CST-1045',
  'console-fhd-cst-1045',
  'FHD-CST-1045',
  'Bold stepped arch facade with layered solid timber moldings and a contrasting matte black slate top.',
  360.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 360.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 324.0}, {"min_qty": 41, "max_qty": null, "unit_price": 288.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601835/fairhomedecor/console-tables/anqvc0tkgxpoaka41gg9.jpg', '/assets/images/products/console-tables/fhd-cst-1045.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Stepped Triple-Arch Natural Pine / Mango Wood with Matte Slate Black Top", "Finish": "Rustic Natural Mango & Matte Charcoal Slate", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Turned Post Capsule 3-Tier Console FHD-CST-1046',
  'console-fhd-cst-1046',
  'FHD-CST-1046',
  'Pill-shaped rounded tabletops and triple-tiered shelving supported by heavy turned solid wood columns.',
  350.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 350.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 315.0}, {"min_qty": 41, "max_qty": null, "unit_price": 280.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601829/fairhomedecor/console-tables/lznd4qkoizhhe0lrnfkj.jpg', '/assets/images/products/console-tables/fhd-cst-1046.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Turned Timber Dual Pillar Posts with Capsule Pill Top & 3-Tier Shelving", "Finish": "Warm Satin Walnut", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Splayed Arc Solid Teak Console FHD-CST-1047',
  'console-fhd-cst-1047',
  'FHD-CST-1047',
  'Graceful parabolic outward-flaring legs with an intersecting center vault and an integrated lower display shelf.',
  340.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 340.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 306.0}, {"min_qty": 41, "max_qty": null, "unit_price": 272.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601827/fairhomedecor/console-tables/qqj2r3c8llsyq1se1dfb.jpg', '/assets/images/products/console-tables/fhd-cst-1047.jpeg']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Sculptural Splayed Arc Solid Teak Hardwood Console", "Finish": "Hand-Turned Natural Teak Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Flying Buttress Double-Arch Console FHD-CST-1048',
  'console-fhd-cst-1048',
  'FHD-CST-1048',
  'Gothic architectural inspiration with swooping double-curved timber buttresses supporting an expansive display deck.',
  365.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 365.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 328.5}, {"min_qty": 41, "max_qty": null, "unit_price": 292.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601837/fairhomedecor/console-tables/ruqfvpqbcjfwmri5zrcc.jpg', '/assets/images/products/console-tables/fhd-cst-1048.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Double-Arch Flying Buttress Solid Mango / Teak Hardwood", "Finish": "Warm Amber Teak Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Floating Slot Solid Oak Console FHD-CST-1049',
  'console-fhd-cst-1049',
  'FHD-CST-1049',
  'Contemporary gallery console with shadowline floating slot cutouts below the top and lower shelf.',
  355.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 355.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 319.5}, {"min_qty": 41, "max_qty": null, "unit_price": 284.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601832/fairhomedecor/console-tables/j9limfryeituhrrrrnfg.jpg', '/assets/images/products/console-tables/fhd-cst-1049.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Floating Apron Recessed Slot Solid Natural Oak Hardwood", "Finish": "Natural Clear Oak Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Fluted Edge Slim Entry Console FHD-CST-1050',
  'console-fhd-cst-1050',
  'FHD-CST-1050',
  'Fine reed fluting running continuously along both top apron and bottom shelf borders, set on sleek square posts.',
  350.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 350.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 315.0}, {"min_qty": 41, "max_qty": null, "unit_price": 280.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601828/fairhomedecor/console-tables/fhk1emfcwtd8nxpx1zek.jpg', '/assets/images/products/console-tables/fhd-cst-1050.jpeg']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Reeded / Fluted Apron Border Solid Walnut Slim Entryway Console", "Finish": "Fluted Natural Walnut Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Roman Arch Marble & Walnut Console FHD-CST-1051',
  'console-fhd-cst-1051',
  'FHD-CST-1051',
  'Continuous Roman arch waterfall timber structure supporting a premium natural Spanish brown Emperador marble top.',
  415.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 415.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 373.5}, {"min_qty": 41, "max_qty": null, "unit_price": 332.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601831/fairhomedecor/console-tables/r4biuuqdazdd1e6rxjlb.png', '/assets/images/products/console-tables/fhd-cst-1051.png']::TEXT[],
  '{"Dimensions": "40 x 12 x 30 in", "Material": "Solid Walnut Roman Arch Pedestal Frame & Polished Dark Emperador Marble Top", "Finish": "Natural Walnut & Brown Emperador Marble", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Smart Slatted Console with LED & Charging FHD-CST-1052',
  'console-fhd-cst-1052',
  'FHD-CST-1052',
  'Multifunctional trade console featuring solid wood slatted niches, built-in ambient warm LED cove illumination, integrated USB/wireless charging hub, and heavy-duty steel A-frame trestle legs.',
  425.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 425.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 382.5}, {"min_qty": 41, "max_qty": null, "unit_price": 340.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601832/fairhomedecor/console-tables/ltgxqe7pcii7ktwzehng.png', '/assets/images/products/console-tables/fhd-cst-1052.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Industrial Slatted Solid Hardwood Cabinet with Integrated Warm LED Accent Lighting, Charging Hub & Matte Black Metal A-Frame", "Finish": "Rich Walnut & Powder-Coated Metal", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Farmhouse Fluted 2-Drawer Console FHD-CST-1053',
  'console-fhd-cst-1053',
  'FHD-CST-1053',
  'Charming two-tone transitional console with fluted dual storage drawers, antique brass hardware, side X-crossbracing, and a rich dark walnut stained solid wood top.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601832/fairhomedecor/console-tables/kr1hv9dbovu7uit3lda0.png', '/assets/images/products/console-tables/fhd-cst-1053.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Farmhouse Fluted Solid Wood Dual Drawers with Brass Pulls, X-Brace Gables & Walnut Stained Top", "Finish": "Crisp Matte Cream / Off-White & Rich Walnut Stained Wood", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Coastal Fluted Entryway Console FHD-CST-1054',
  'console-fhd-cst-1054',
  'FHD-CST-1054',
  'Alternate angle perspective of the two-tone farmhouse console showcasing soft-close drawer glides and open storage below.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601828/fairhomedecor/console-tables/elzlguolvcqdd8z47p1q.png', '/assets/images/products/console-tables/fhd-cst-1054.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Timber Farmhouse Console with Tambour Dual Drawers & Brass Hardware", "Finish": "Off-White Painted Finish & Honey Walnut Top", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Hourglass Metal & Carrara Marble Console FHD-CST-1055',
  'console-fhd-cst-1055',
  'FHD-CST-1055',
  'Sculptural curved tubular iron hourglass silhouette in matte black with a polished white Carrara marble top and solid wood lower shelf.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601829/fairhomedecor/console-tables/ujuayjhqlyagh51j63wg.png', '/assets/images/products/console-tables/fhd-cst-1055.png']::TEXT[],
  '{"Dimensions": "38 x 14 x 30 in", "Material": "Intersecting Hourglass Curved Matte Black Iron Base, Polished White Carrara Marble Top & Bottom Solid Hardwood Shelf", "Finish": "Matte Black Metal Craft, Carrara Marble & Warm Teak Wood", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Art Deco Geometric Metal Console FHD-CST-1056',
  'console-fhd-cst-1056',
  'FHD-CST-1056',
  'Statement entryway piece featuring rhythmic triple-arch metal spindles and a solid kiln-dried walnut slab top.',
  345.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 345.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 310.5}, {"min_qty": 41, "max_qty": null, "unit_price": 276.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601828/fairhomedecor/console-tables/gjpqb5jdl1fspfpadhwx.png', '/assets/images/products/console-tables/fhd-cst-1056.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Art Deco Geometric Triple-Arch Matte Black Metal Spindle Grille Frame & Solid Walnut Wood Top", "Finish": "Powder-Coated Wrought Iron & Natural Walnut Satin", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Art Deco Metal Console with Shelf FHD-CST-1057',
  'console-fhd-cst-1057',
  'FHD-CST-1057',
  'Dual-shelf iteration of the Art Deco spindle metal console, offering double the display utility with matching solid walnut shelving.',
  370.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 370.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 333.0}, {"min_qty": 41, "max_qty": null, "unit_price": 296.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601827/fairhomedecor/console-tables/wyrlnnxv3levhgkevmx9.png', '/assets/images/products/console-tables/fhd-cst-1057.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Art Deco Geometric Triple-Arch Metal Frame with Solid Walnut Top & Matching Lower Shelf", "Finish": "Powder-Coated Black Steel & Natural Walnut Wood", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Scandinavian Oak Capsule Console FHD-CST-1058',
  'console-fhd-cst-1058',
  'FHD-CST-1058',
  'Elegant mid-century capsule contour in solid white oak featuring dual tambour-reeded curved drawers, brass pulls, and tapered splayed spindle legs.',
  395.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 395.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 355.5}, {"min_qty": 41, "max_qty": null, "unit_price": 316.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601836/fairhomedecor/console-tables/vwv0swgat9rzy5jsly2t.png', '/assets/images/products/console-tables/fhd-cst-1058.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Mid-Century Scandinavian Solid White Oak Capsule Console with Tambour Ribbed Dual Drawers & Brushed Brass Bar Pulls", "Finish": "Natural White Oak & Brushed Brass", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Solid Walnut Tapered Trestle Console FHD-CST-1059',
  'console-fhd-cst-1059',
  'FHD-CST-1059',
  'Minimalist Scandinavian trestle console with trapezoidal outward-canted solid walnut legs and a radiused reverse-bevel tabletop.',
  350.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 350.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 315.0}, {"min_qty": 41, "max_qty": null, "unit_price": 280.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601838/fairhomedecor/console-tables/yartehn2ce8ipdjg4smi.png', '/assets/images/products/console-tables/fhd-cst-1059.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Tapered Solid Walnut Trestle Console Table with Full Lower Shelf", "Finish": "Hand-Rubbed Natural Walnut Oil", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Modernist Oak & Marble Trestle Console FHD-CST-1060',
  'console-fhd-cst-1060',
  'FHD-CST-1060',
  'Splayed timber trestle frame handcrafted in solid European white oak, inset with a heavy slab of veined natural white marble.',
  410.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 410.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 369.0}, {"min_qty": 41, "max_qty": null, "unit_price": 328.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601836/fairhomedecor/console-tables/jiwsyodhmiub7ntjwzhu.png', '/assets/images/products/console-tables/fhd-cst-1060.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Modernist Solid Oak Trestle Frame & Inset Polished White Marble Top with Lower Oak Shelf", "Finish": "Natural White Oak & Veined White Marble", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Cathedral Arch Gothic Two-Tone Console FHD-CST-1061',
  'console-fhd-cst-1061',
  'FHD-CST-1061',
  'Gothic revival pointed and segmental arch framework crafted from solid hardwood with a painted base and stained walnut top.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601835/fairhomedecor/console-tables/aai4edrvvrgykpmhkhyh.png', '/assets/images/products/console-tables/fhd-cst-1061.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Cathedral Arch Gothic Revival Two-Tone Solid Hardwood Console with Rich Walnut Stained Top", "Finish": "Crisp Antique White Painted Timber & Stained Walnut", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
  '449157dd-716b-4ef9-8c72-1df6604729af',
  'Gothic Revival Arch Entry Console FHD-CST-1062',
  'console-fhd-cst-1062',
  'FHD-CST-1062',
  'Detailed perspective view of the Cathedral Arch Two-Tone console highlighting generational mortise-and-tenon joinery and lower display shelf.',
  385.0,
  5,
  '[{"min_qty": 5, "max_qty": 15, "unit_price": 385.0}, {"min_qty": 16, "max_qty": 40, "unit_price": 346.5}, {"min_qty": 41, "max_qty": null, "unit_price": 308.0}]'::jsonb,
  ARRAY['https://res.cloudinary.com/dfknq2hab/image/upload/v1794601833/fairhomedecor/console-tables/ffaka2tqizmrwi89y8vz.png', '/assets/images/products/console-tables/fhd-cst-1062.png']::TEXT[],
  '{"Dimensions": "40 x 14 x 30 in", "Material": "Solid Timber Gothic Arch Framework with Rich Walnut Surface", "Finish": "Antique White & Warm Walnut", "Joinery": "Mortise and Tenon / Precision Welded Structural Metal", "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized", "Department": "furnishing", "Category": "Console Tables", "Subcategory": "console-tables"}'::jsonb,
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
