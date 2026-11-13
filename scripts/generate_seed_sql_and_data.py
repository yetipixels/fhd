import os
import json
import re

MAPPING_FILE = "src/data/cloudinary_mapping.json"
with open(MAPPING_FILE, "r") as f:
    mapping = json.load(f)

with open("src/data/products.json", "r") as f:
    products = json.load(f)

CATEGORIES_DEF = [
    {
        "id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
        "name": "Accent Cabinets",
        "slug": "accent-cabinets",
        "department": "furnishing",
        "image": mapping.get("assets/images/products/accent-cabinets/FHD-AF-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg"),
        "description": "Handcrafted solid wood storage cabinets with artisanal fluting, dovetail joinery, and solid brass hardware."
    },
    {
        "id": "e1b10001-0000-0000-0000-000000000001",
        "name": "Bedside Tables",
        "slug": "bedside-tables",
        "department": "furnishing",
        "image": mapping.get("assets/images/products/bedside-tables/FHD-BST-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/vyceapxju4hejrotm8ad.jpg"),
        "description": "Solid timber bedside nightstands crafted with dovetail drawers and tailored proportions."
    },
    {
        "id": "e1b10001-0000-0000-0000-000000000002",
        "name": "Bookshelves & Storage",
        "slug": "bookshelves",
        "department": "furnishing",
        "image": mapping.get("assets/images/products/bookshelves/FHD-BS-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/a6knrsuemunxp0fmfvhh.jpg"),
        "description": "Heirloom open-shelving bookcases and modular architectural storage units."
    },
    {
        "id": "449157dd-716b-4ef9-8c72-1df6604729af",
        "name": "Console Tables",
        "slug": "console-tables",
        "department": "furnishing",
        "image": mapping.get("assets/images/products/console-tables/FHD-CST-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/tl7mjiee8dyyliuhi34x.jpg"),
        "description": "Architectural entryway and living room statement consoles with solid timber pedestal bases."
    },
    {
        "id": "e1b10001-0000-0000-0000-000000000003",
        "name": "Round Tables",
        "slug": "round-tables",
        "department": "furnishing",
        "image": mapping.get("assets/images/products/round-tables/FHD-RT-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/zsgtqs6necrqmtspt0ss.jpg"),
        "description": "Solid hardwood round dining tables and pedestal bistro centerpieces."
    },
    {
        "id": "e1b10001-0000-0000-0000-000000000004",
        "name": "Side & Accent Tables",
        "slug": "side-tables",
        "department": "furnishing",
        "image": mapping.get("assets/images/products/side-tables/FHD-ST-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/t5mnop522lxo5mro8jcv.jpg"),
        "description": "Hand-turned timber accent side tables, sculptural pedestals, and lamp stands."
    },
    {
        "id": "e1b10001-0000-0000-0000-000000000005",
        "name": "Study Tables & Desks",
        "slug": "study-tables",
        "department": "furnishing",
        "image": mapping.get("assets/images/products/study-tables/FHD-STT-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/cep83frxdroa7zdgje94.jpg"),
        "description": "Executive writing desks and study tables with generational mortise-and-tenon joinery."
    },
    {
        "id": "e1b10001-0000-0000-0000-000000000006",
        "name": "Wooden Photo Frames",
        "slug": "photo-frames",
        "department": "accessories",
        "image": mapping.get("assets/images/products/photo-frames/FHD-PF-1001.jpg", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/qabor2ys2c6kplhtp5b7.jpg"),
        "description": "Artisanal hand-beveled solid wood photo frames and tabletop accents."
    },
    {
        "id": "f809989d-1523-4750-8d73-c79eca3171c5",
        "name": "Holiday & Festive",
        "slug": "holiday-decor",
        "department": "accessories",
        "image": mapping.get("assets/images/landing/christmas-offer.webp", "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/yg9wb1zkzgr4415lfkyq.jpg"),
        "description": "Cast brass and antiqued metal reindeer, candelabras, and festive centerpiece collections."
    }
]

slug_to_id = {c["slug"]: c["id"] for c in CATEGORIES_DEF}
# Also map variations
slug_to_id["holiday-accents"] = "f809989d-1523-4750-8d73-c79eca3171c5"

PRICE_MAP = {
    "accent-cabinets": 395.0,
    "bedside-tables": 185.0,
    "bookshelves": 360.0,
    "console-tables": 320.0,
    "round-tables": 480.0,
    "side-tables": 165.0,
    "study-tables": 390.0,
    "photo-frames": 35.0,
    "holiday-decor": 48.0,
}

# 1. Update src/data/products.json
updated_products = []
for idx, p in enumerate(products):
    subcat = p.get("subcategory", "accent-cabinets")
    sku = p.get("sku", "")
    expected_key = f"assets/images/products/{subcat}/{sku}.jpg"
    cloud_url = mapping.get(expected_key)
    if not cloud_url:
        raw_img = p.get("image", "")
        if raw_img.startswith("/https://"):
            cloud_url = raw_img[1:]
        elif raw_img.startswith("https://") or raw_img.startswith("http://"):
            cloud_url = raw_img
        else:
            clean_path = raw_img.lstrip("/")
            cloud_url = mapping.get(clean_path, mapping.get("/" + clean_path, "/" + clean_path))
    if cloud_url.startswith("/https://"):
        cloud_url = cloud_url[1:]
    
    dept = "furnishing"
    for c in CATEGORIES_DEF:
        if c["slug"] == subcat:
            dept = c["department"]
            break
    if "holiday" in subcat:
        dept = "accessories"

    base_price = PRICE_MAP.get(subcat, 250.0)
    try:
        digits = "".join([ch for ch in p.get("sku", "") if ch.isdigit()])
        if digits:
            base_price += (int(digits) % 35) * 2.5
    except:
        pass

    moq = p.get("moq", 5)
    bulk_tiers = [
        {"min_qty": moq, "max_qty": moq * 3, "unit_price": round(base_price, 2)},
        {"min_qty": moq * 3 + 1, "max_qty": moq * 8, "unit_price": round(base_price * 0.90, 2)},
        {"min_qty": moq * 8 + 1, "max_qty": None, "unit_price": round(base_price * 0.80, 2)},
    ]

    slug_raw = f"{p.get('name', 'product')}-{p.get('sku', '')}".lower().replace(" ", "-").replace(".", "").replace("&", "and")
    slug = re.sub(r"[^a-z0-9]+", "-", slug_raw).strip("-")

    item = dict(p)
    item["image"] = cloud_url
    item["cloudinary_url"] = cloud_url
    item["images"] = [cloud_url]
    item["department"] = dept
    item["base_price"] = round(base_price, 2)
    item["bulk_tiers"] = bulk_tiers
    item["specifications"] = {
        "Dimensions": p.get("dimensions") or p.get("dimension") or "Standard Dimensions",
        "Material": p.get("material", "Solid Wood · Handcrafted"),
        "Finish": p.get("finish", "Natural Satin Finish"),
        "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
        "Department": dept,
        "Category": p.get("category", "Accent Cabinets"),
        "Subcategory": subcat,
    }
    updated_products.append(item)

with open("src/data/products.json", "w") as f:
    json.dump(updated_products, f, indent=2)
print("Updated src/data/products.json with Cloudinary URLs!")

# 2. Update src/lib/mock-data.ts with all 9 categories and all 443 real products
flagship_products = []
for p in updated_products:
    subcat = p.get("subcategory", "accent-cabinets")
    cat_id = slug_to_id.get(subcat, "ca86a0eb-eadf-42ba-98b6-f706beab411d")
    flagship_products.append({
        "id": p["sku"],
        "category_id": cat_id,
        "name": p["name"],
        "slug": p["name"].lower().replace(" ", "-") + "-" + p["sku"].lower(),
        "sku": p["sku"],
        "description": p.get("description", "Handcrafted solid wood furniture tailored for commercial hospitality, trade showrooms, and high-end residential interiors."),
        "base_price": p["base_price"],
        "moq": p["moq"],
        "bulk_tiers": p["bulk_tiers"],
        "images": [p["image"]],
        "specifications": p["specifications"],
        "in_stock": True,
        "featured": True,
        "department": p["department"]
    })

mock_data_content = f"""import {{ Category, Product }} from "./types";

export const MOCK_CATEGORIES: Category[] = {json.dumps(CATEGORIES_DEF, indent=2)};

export const MOCK_PRODUCTS: Product[] = {json.dumps(flagship_products, indent=2)};
"""

with open("src/lib/mock-data.ts", "w") as f:
    f.write(mock_data_content)
print("Updated src/lib/mock-data.ts with all 9 real categories and 443 real products!")

# 3. Generate supabase/seed_catalogue.sql
sql_lines = [
    "-- =============================================================================",
    "-- FAIR HOME DECOR — Complete Real Catalogue Seed Script",
    "-- Includes all 9 Taxonomy Categories and 443 Real Catalogue Products with Cloudinary Images",
    "-- Run this script in your Supabase Dashboard -> SQL Editor",
    "-- =============================================================================",
    "",
    "-- 1. CATEGORIES SEED",
]

for c in CATEGORIES_DEF:
    desc_escaped = c["description"].replace("'", "''")
    name_escaped = c["name"].replace("'", "''")
    sql_lines.append(f"""INSERT INTO public.categories (id, name, slug, image_url, description)
VALUES ('{c["id"]}', '{name_escaped}', '{c["slug"]}', '{c["image"]}', '{desc_escaped}')
ON CONFLICT (slug) DO UPDATE SET
  name = EXCLUDED.name,
  image_url = EXCLUDED.image_url,
  description = EXCLUDED.description;
""")

sql_lines.append("\n-- 2. PRODUCTS SEED (443 CATALOGUE PIECES)\n")

for p in flagship_products:
    name_escaped = p["name"].replace("'", "''")
    desc_escaped = p["description"].replace("'", "''")
    slug_escaped = p["slug"].replace("'", "''")
    sku_escaped = p["sku"].replace("'", "''")
    images_pg = "ARRAY['" + "','".join([img.replace("'", "''") for img in p["images"]]) + "']::TEXT[]"
    bulk_tiers_json = json.dumps(p["bulk_tiers"]).replace("'", "''")
    spec_json = json.dumps(p["specifications"]).replace("'", "''")

    sql_lines.append(f"""INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '{p["category_id"]}',
  '{name_escaped}',
  '{slug_escaped}',
  '{sku_escaped}',
  '{desc_escaped}',
  {p["base_price"]},
  {p["moq"]},
  '{bulk_tiers_json}'::jsonb,
  {images_pg},
  '{spec_json}'::jsonb,
  true,
  {str(p["featured"]).lower()}
)
ON CONFLICT (sku) DO UPDATE SET
  name = EXCLUDED.name,
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

with open("supabase/seed_catalogue.sql", "w") as f:
    f.write("\n".join(sql_lines))

print(f"Generated supabase/seed_catalogue.sql with all {len(CATEGORIES_DEF)} categories and {len(flagship_products)} products!")
