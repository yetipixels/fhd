import zipfile
import xml.etree.ElementTree as ET
import os
import re
import json

MAPPING_FILE = "cloudinary_lighting_mapping.json"
with open(MAPPING_FILE) as f:
    cloudinary_map = json.load(f)

LIGHTING_CATEGORY_ID = "3ceffc40-baec-405a-bbb7-434052fb304e"

# 1. Parse lamp COLLECTIONS.pptx
def parse_lamp_collections():
    products = []
    pptx_path = "raw_lighting_uploads/lamp COLLECTIONS.pptx"
    with zipfile.ZipFile(pptx_path) as z:
        slides = [f for f in z.namelist() if f.startswith('ppt/slides/slide') and f.endswith('.xml')]
        slides.sort(key=lambda s: int(re.search(r'slide(\d+)\.xml', s).group(1)))
        
        for s in slides:
            num = int(re.search(r'slide(\d+)\.xml', s).group(1))
            if num == 1 or num == 25:
                continue
            root = ET.fromstring(z.read(s))
            rels = ET.fromstring(z.read(f"ppt/slides/_rels/{os.path.basename(s)}.rels"))
            r_map = {r.attrib.get('Id'): r.attrib.get('Target') for r in rels}
            
            pics = []
            for pic in root.iter('{http://schemas.openxmlformats.org/presentationml/2006/main}pic'):
                blip = pic.find('.//{http://schemas.openxmlformats.org/drawingml/2006/main}blip')
                off = pic.find('.//{http://schemas.openxmlformats.org/drawingml/2006/main}off')
                if blip is not None and off is not None:
                    embed = blip.attrib.get('{http://schemas.openxmlformats.org/officeDocument/2006/relationships}embed')
                    x = int(off.attrib.get('x', 0))
                    target = r_map.get(embed, '').replace('../', 'ppt/')
                    pics.append((x, target))
            pics.sort(key=lambda p: p[0])
            
            texts = []
            for sp in root.iter('{http://schemas.openxmlformats.org/presentationml/2006/main}sp'):
                off = sp.find('.//{http://schemas.openxmlformats.org/drawingml/2006/main}off')
                t_parts = [t.text.strip() for t in sp.iter('{http://schemas.openxmlformats.org/drawingml/2006/main}t') if t.text and t.text.strip()]
                if t_parts and off is not None:
                    x = int(off.attrib.get('x', 0))
                    texts.append((x, " | ".join(t_parts)))
            texts.sort(key=lambda t: t[0])
            
            for txt_x, txt_val in texts:
                # Text format: Item No. FHD 2526 | Size.: Body. 5”x Ht 16” | Shade.: D 14 x Ht 11”
                match_sku = re.search(r'Item\s*No\.?\s*([A-Za-z0-9\s-]+?)(?:\s*\||\s*Size|\s*$)', txt_val, re.IGNORECASE)
                raw_sku = match_sku.group(1).strip() if match_sku else "UNKNOWN"
                clean_sku = re.sub(r'\s+', '-', raw_sku.strip()).upper()
                if not clean_sku.startswith("FHD"):
                    clean_sku = f"FHD-{clean_sku}"
                
                # Extract body and shade size
                body_match = re.search(r'Body\.?\s*([^\|]+)', txt_val, re.IGNORECASE)
                body_dim = body_match.group(1).strip() if body_match else ""
                
                shade_match = re.search(r'Shade\.?:\s*([^\|]+)', txt_val, re.IGNORECASE)
                shade_dim = shade_match.group(1).strip() if shade_match else ""
                
                if body_dim and shade_dim:
                    overall_dim = f"Body: {body_dim} · Shade: {shade_dim}"
                elif body_dim:
                    overall_dim = f"Body: {body_dim}"
                elif shade_dim:
                    overall_dim = f"Shade: {shade_dim}"
                else:
                    overall_dim = "Standard Table Lamp Proportions (Dia 12” x Ht 24”)"
                
                # Image file name
                img_filename = f"{clean_sku.lower()}.jpeg"
                c_url = cloudinary_map.get(img_filename)
                local_path = f"/assets/images/products/lighting/{img_filename}"
                primary_image = c_url or local_path
                all_images = [c_url] if c_url else [local_path]
                if c_url and local_path not in all_images:
                    all_images.append(local_path)
                
                # Calculate tiered base wholesale price
                base_price = 145.0
                if "16" in body_dim or "15" in body_dim or "14.5" in body_dim:
                    base_price = 175.0
                elif "12" in body_dim or "13" in body_dim:
                    base_price = 155.0
                elif "7" in body_dim or "8" in body_dim:
                    base_price = 135.0
                
                tier1 = {"min_qty": 5, "max_qty": 15, "unit_price": round(base_price, 2)}
                tier2 = {"min_qty": 16, "max_qty": 40, "unit_price": round(base_price * 0.9, 2)}
                tier3 = {"min_qty": 41, "max_qty": None, "unit_price": round(base_price * 0.8, 2)}
                
                prod_name = f"Artisanal Turned Timber Table Lamp {clean_sku}"
                slug = f"lamp-{clean_sku.lower()}"
                
                specifications = {
                    "Overall Dimensions": overall_dim,
                    "Body Dimensions": body_dim or "Turned Solid Hardwood Silhouette",
                    "Shade Dimensions": shade_dim or "Hand-Tailored Textile Drum Shade",
                    "Material": "Solid Turned Mango / Teak Wood & Natural Woven Linen Shade",
                    "Finish": "Hand-Turned Natural Wax / Smoked Walnut Satin",
                    "Electrical Spec": "CE & UL Compatible, E26/E27 Base, 110V - 240V",
                    "Cable & Switch": "6.5 ft Braided Fabric Cord with Inline Rocker Switch",
                    "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)",
                    "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection",
                    "Department": "lighting",
                    "Category": "Artisanal Table Lamps",
                    "Subcategory": "table-lamps"
                }
                
                description = (
                    f"Handcrafted artisanal table lamp {clean_sku} crafted from kiln-dried solid hardwood with "
                    f"sculptural turned contours and balanced architectural proportions. Fitted with a bespoke "
                    f"natural textile shade that delivers warm, diffuse illumination tailored for luxury hospitality, "
                    f"boutique hotel suites, and high-end residential interiors."
                )
                
                products.append({
                    "id": clean_sku,
                    "code": clean_sku,
                    "sku": clean_sku,
                    "name": prod_name,
                    "slug": slug,
                    "tag": "Lighting Lamp",
                    "category": "Artisanal Table Lamps",
                    "subcategory": "table-lamps",
                    "subcatTitle": "Table Lamps",
                    "department": "lighting",
                    "dimensions": overall_dim,
                    "dimension": overall_dim,
                    "material": "Solid Wood · Handcrafted",
                    "finish": "Natural Satin / Smoked Walnut",
                    "description": description,
                    "image": primary_image,
                    "images": all_images,
                    "cloudinary_url": c_url or primary_image,
                    "base_price": base_price,
                    "moq": 5,
                    "in_stock": True,
                    "featured": len(products) < 6,
                    "bulk_tiers": [tier1, tier2, tier3],
                    "specifications": specifications,
                    "category_id": LIGHTING_CATEGORY_ID
                })
    return products

# 2. Parse LIGHTING SAMPLE (LAMP) PPT.pptx
def parse_lighting_sample():
    products = []
    pptx_path = "raw_lighting_uploads/LIGHTING SAMPLE (LAMP) PPT.pptx"
    with zipfile.ZipFile(pptx_path) as z:
        slides = [f for f in z.namelist() if f.startswith('ppt/slides/slide') and f.endswith('.xml')]
        slides.sort(key=lambda s: int(re.search(r'slide(\d+)\.xml', s).group(1)))
        
        for s in slides:
            num = int(re.search(r'slide(\d+)\.xml', s).group(1))
            root = ET.fromstring(z.read(s))
            rels_name = f"ppt/slides/_rels/{os.path.basename(s)}.rels"
            r_map = {}
            if rels_name in z.namelist():
                rels = ET.fromstring(z.read(rels_name))
                r_map = {r.attrib.get('Id'): r.attrib.get('Target') for r in rels}
                
            pics = []
            for pic in root.iter('{http://schemas.openxmlformats.org/presentationml/2006/main}pic'):
                blip = pic.find('.//{http://schemas.openxmlformats.org/drawingml/2006/main}blip')
                off = pic.find('.//{http://schemas.openxmlformats.org/drawingml/2006/main}off')
                if blip is not None and off is not None:
                    embed = blip.attrib.get('{http://schemas.openxmlformats.org/officeDocument/2006/relationships}embed')
                    x = int(off.attrib.get('x', 0))
                    target = r_map.get(embed, '').replace('../', 'ppt/')
                    pics.append((x, target))
            pics.sort(key=lambda p: p[0])
            
            texts = []
            for sp in root.iter('{http://schemas.openxmlformats.org/presentationml/2006/main}sp'):
                off = sp.find('.//{http://schemas.openxmlformats.org/drawingml/2006/main}off')
                t_parts = [t.text.strip() for t in sp.iter('{http://schemas.openxmlformats.org/drawingml/2006/main}t') if t.text and t.text.strip()]
                if t_parts and off is not None:
                    x = int(off.attrib.get('x', 0))
                    texts.append((x, " | ".join(t_parts)))
            texts.sort(key=lambda t: t[0])
            
            for txt_x, txt_val in texts:
                sku_match = re.search(r'RKIL-?\d+', txt_val, re.IGNORECASE)
                sku = sku_match.group(0).upper() if sku_match else txt_val.strip().upper()
                
                # Check for primary image and angle images
                base_name = sku.lower()
                matched_images = []
                
                # Try finding in cloudinary_map
                for ext in ['.png', '.jpeg', '.jpg']:
                    main_file = f"{base_name}{ext}"
                    if main_file in cloudinary_map:
                        matched_images.append(cloudinary_map[main_file])
                    # Check for suffixes -2, -3
                    for idx in [2, 3, 4]:
                        sub_file = f"{base_name}-{idx}{ext}"
                        if sub_file in cloudinary_map:
                            matched_images.append(cloudinary_map[sub_file])
                
                # Fallback to local paths if needed
                if not matched_images:
                    matched_images.append(f"/assets/images/products/lighting/{base_name}.png")
                
                primary_image = matched_images[0]
                
                overall_dim = "Dia 12” x Ht 18” · Shade: D 12” x Ht 8”"
                base_price = 150.0
                
                tier1 = {"min_qty": 5, "max_qty": 15, "unit_price": round(base_price, 2)}
                tier2 = {"min_qty": 16, "max_qty": 40, "unit_price": round(base_price * 0.9, 2)}
                tier3 = {"min_qty": 41, "max_qty": None, "unit_price": round(base_price * 0.8, 2)}
                
                prod_name = f"Handcrafted Architectural Accent Lamp {sku}"
                slug = f"lamp-{sku.lower()}"
                
                specifications = {
                    "Overall Dimensions": overall_dim,
                    "Body Material": "Turned Solid Hardwood & Hand-Brushed Metal Accents",
                    "Shade": "Artisanal Tailored Drum Shade with Diffuser Ring",
                    "Material": "Turned Solid Wood · Metal Craft",
                    "Finish": "Natural Satin Wax & Antiqued Brass Accent",
                    "Electrical Spec": "CE & UL Compatible, Standard E26/E27 Base, 110V - 240V",
                    "Cable & Switch": "6.5 ft Braided Fabric Cable with Inline Rocker Switch",
                    "Recommended Bulb": "Warm White LED 2700K (Max 60W Equivalent)",
                    "Packaging": "Export Grade 5-Ply Commercial Carton, Drop-Tested with Molded Protection",
                    "Department": "lighting",
                    "Category": "Artisanal Table Lamps",
                    "Subcategory": "table-lamps"
                }
                
                description = (
                    f"Handcrafted lighting accent lamp {sku} featuring precision turned solid hardwood, refined metal "
                    f"joinery, and an artisanal shade tailored for ambient trade lighting. Designed for high-traffic "
                    f"commercial hospitality, restaurant dining rooms, and curated architectural residences."
                )
                
                products.append({
                    "id": sku,
                    "code": sku,
                    "sku": sku,
                    "name": prod_name,
                    "slug": slug,
                    "tag": "Lighting Lamp",
                    "category": "Artisanal Table Lamps",
                    "subcategory": "table-lamps",
                    "subcatTitle": "Table Lamps",
                    "department": "lighting",
                    "dimensions": overall_dim,
                    "dimension": overall_dim,
                    "material": "Solid Wood · Handcrafted",
                    "finish": "Natural Satin Wax / Antiqued Brass",
                    "description": description,
                    "image": primary_image,
                    "images": matched_images,
                    "cloudinary_url": primary_image,
                    "base_price": base_price,
                    "moq": 5,
                    "in_stock": True,
                    "featured": len(products) < 6,
                    "bulk_tiers": [tier1, tier2, tier3],
                    "specifications": specifications,
                    "category_id": LIGHTING_CATEGORY_ID
                })
    return products

lamp_prods = parse_lamp_collections()
sample_prods = parse_lighting_sample()
all_lighting = lamp_prods + sample_prods
print(f"Parsed {len(lamp_prods)} lamps from COLLECTIONS")
print(f"Parsed {len(sample_prods)} lamps from LIGHTING SAMPLE")
print(f"Total lighting products: {len(all_lighting)}")

# Write standalone lighting json
with open("src/data/lighting_products.json", "w") as f:
    json.dump(all_lighting, f, indent=2)
print("Saved to src/data/lighting_products.json")

# Update src/data/products.json
with open("src/data/products.json", "r") as f:
    existing_products = json.load(f)

# Deduplicate by SKU / ID
existing_skus = set(p.get("sku", "").upper() for p in existing_products)
new_added = 0
for lp in all_lighting:
    if lp["sku"].upper() not in existing_skus:
        existing_products.append(lp)
        existing_skus.add(lp["sku"].upper())
        new_added += 1

with open("src/data/products.json", "w") as f:
    json.dump(existing_products, f, indent=2)

print(f"Updated src/data/products.json: added {new_added} lighting products. Total products now: {len(existing_products)}")

# Generate Supabase SQL seed script
sql_lines = [
    "-- =============================================================================",
    "-- FAIR HOME DECOR — Lighting Products Supabase Seed Script",
    "-- Ingests 125 Table & Accent Lamps with Cloudinary URLs and Specifications",
    "-- Run this script in Supabase SQL Editor:",
    "-- https://supabase.com/dashboard/project/cfxcoorzcomorptmuala/sql/new",
    "-- =============================================================================",
    "",
    "-- 1. Ensure Table Lamps Category Exists in Lighting Department",
    "INSERT INTO public.categories (id, name, slug, department, image_url, description)",
    f"VALUES ('{LIGHTING_CATEGORY_ID}', 'Artisanal Table Lamps', 'table-lamps', 'lighting', '{all_lighting[0]['image']}', 'Handcrafted solid wood, brass, and artisanal lighting fixtures for luxury trade projects.')",
    "ON CONFLICT (slug) DO UPDATE SET",
    "  department = EXCLUDED.department,",
    "  image_url = EXCLUDED.image_url,",
    "  description = EXCLUDED.description;",
    "",
    "-- 2. Seed 125 Lighting Products",
]

for p in all_lighting:
    escaped_name = p['name'].replace("'", "''")
    escaped_desc = p['description'].replace("'", "''")
    bulk_tiers_json = json.dumps(p['bulk_tiers'])
    specs_json = json.dumps(p['specifications']).replace("'", "''")
    
    # Format Postgres TEXT array
    images_formatted = "ARRAY[" + ", ".join(f"'{img}'" for img in p['images']) + "]::TEXT[]"
    
    sql_lines.append(f"""INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '{LIGHTING_CATEGORY_ID}',
  '{escaped_name}',
  '{p['slug']}',
  '{p['sku']}',
  '{escaped_desc}',
  {p['base_price']},
  {p['moq']},
  '{bulk_tiers_json}'::jsonb,
  {images_formatted},
  '{specs_json}'::jsonb,
  true,
  {'true' if p['featured'] else 'false'}
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
  slug = EXCLUDED.slug,
  category_id = EXCLUDED.category_id,
  base_price = EXCLUDED.base_price,
  moq = EXCLUDED.moq,
  bulk_tiers = EXCLUDED.bulk_tiers,
  images = EXCLUDED.images,
  specifications = EXCLUDED.specifications,
  in_stock = EXCLUDED.in_stock,
  featured = EXCLUDED.featured;
""")

with open("supabase/seed_lighting_products.sql", "w") as f:
    f.write("\n".join(sql_lines))

print("Saved SQL seed script to supabase/seed_lighting_products.sql")

