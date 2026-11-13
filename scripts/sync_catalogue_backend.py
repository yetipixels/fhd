import os
import json
import time
import urllib.request
import urllib.error
import mimetypes
from concurrent.futures import ThreadPoolExecutor, as_completed

SUPABASE_URL = "https://cfxcoorzcomorptmuala.supabase.co"
SUPABASE_KEY = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImNmeGNvb3J6Y29tb3JwdG11YWxhIiwicm9sZSI6ImFub24iLCJpYXQiOjE3OTQ0NzgzMjEsImV4cCI6MjExMDA1NDMyMX0.wIc2BoPLc59eNIJDtZYmWMRaXzurBQfBNlO_8Mpo63c"

CLOUDINARY_CLOUD_NAME = "dfknq2hab"
CLOUDINARY_UPLOAD_PRESET = "fairhomedecor"

CATEGORIES_DEF = [
    {
        "name": "Accent Cabinets",
        "slug": "accent-cabinets",
        "department": "furnishing",
        "image": "assets/images/products/accent-cabinets/FHD-AF-1001.jpg",
        "description": "Handcrafted solid wood storage cabinets with artisanal fluting, joinery, and solid brass hardware."
    },
    {
        "name": "Bedside Tables",
        "slug": "bedside-tables",
        "department": "furnishing",
        "image": "assets/images/products/bedside-tables/FHD-BT-1001.jpg",
        "description": "Solid timber bedside nightstands crafted with dovetail drawers and tailored proportions."
    },
    {
        "name": "Bookshelves & Storage",
        "slug": "bookshelves",
        "department": "furnishing",
        "image": "assets/images/products/bookshelves/FHD-BS-1001.jpg",
        "description": "Heirloom open-shelving bookcases and modular architectural storage units."
    },
    {
        "name": "Console Tables",
        "slug": "console-tables",
        "department": "furnishing",
        "image": "assets/images/products/console-tables/FHD-CST-1001.jpg",
        "description": "Architectural entryway and living room statement consoles with solid timber pedestal bases."
    },
    {
        "name": "Round Tables",
        "slug": "round-tables",
        "department": "furnishing",
        "image": "assets/images/products/round-tables/FHD-RT-1001.jpg",
        "description": "Solid hardwood round dining tables and pedestal bistro centerpieces."
    },
    {
        "name": "Side & Accent Tables",
        "slug": "side-tables",
        "department": "furnishing",
        "image": "assets/images/products/side-tables/FHD-ST-1001.jpg",
        "description": "Hand-turned timber accent side tables, sculptural pedestals, and lamp stands."
    },
    {
        "name": "Study Tables & Desks",
        "slug": "study-tables",
        "department": "furnishing",
        "image": "assets/images/products/study-tables/FHD-DK-1001.jpg",
        "description": "Executive writing desks and study tables with generational mortise-and-tenon joinery."
    },
    {
        "name": "Wooden Photo Frames",
        "slug": "photo-frames",
        "department": "accessories",
        "image": "assets/images/products/photo-frames/FHD-PF-1001.jpg",
        "description": "Artisanal hand-beveled solid wood photo frames and tabletop accents."
    },
    {
        "name": "Holiday & Festive",
        "slug": "holiday-decor",
        "department": "accessories",
        "image": "assets/images/landing/christmas-offer.webp",
        "description": "Cast brass and antiqued metal reindeer, candelabras, and festive centerpiece collections."
    }
]

# Baseline prices by subcategory
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

MAPPING_FILE = "src/data/cloudinary_mapping.json"

def load_cloudinary_mapping():
    if os.path.exists(MAPPING_FILE):
        with open(MAPPING_FILE, "r") as f:
            return json.load(f)
    return {}

def save_cloudinary_mapping(mapping):
    os.makedirs(os.path.dirname(MAPPING_FILE), exist_ok=True)
    with open(MAPPING_FILE, "w") as f:
        json.dump(mapping, f, indent=2)

def upload_image_to_cloudinary(rel_path):
    clean_path = rel_path.lstrip("/")
    full_path = os.path.join("public", clean_path)
    if not os.path.exists(full_path):
        return rel_path, None

    # multipart form data upload
    boundary = "----WebKitFormBoundary7MA4YWxkTrZu0gW"
    filename = os.path.basename(full_path)
    content_type = mimetypes.guess_type(full_path)[0] or "image/jpeg"

    with open(full_path, "rb") as f:
        file_bytes = f.read()

    body = (
        f"--{boundary}\r\n"
        f'Content-Disposition: form-data; name="upload_preset"\r\n\r\n'
        f"{CLOUDINARY_UPLOAD_PRESET}\r\n"
        f"--{boundary}\r\n"
        f'Content-Disposition: form-data; name="file"; filename="{filename}"\r\n'
        f"Content-Type: {content_type}\r\n\r\n"
    ).encode("utf-8") + file_bytes + f"\r\n--{boundary}--\r\n".encode("utf-8")

    url = f"https://api.cloudinary.com/v1_1/{CLOUDINARY_CLOUD_NAME}/image/upload"
    req = urllib.request.Request(
        url,
        data=body,
        headers={"Content-Type": f"multipart/form-data; boundary={boundary}"},
        method="POST"
    )

    try:
        with urllib.request.urlopen(req, timeout=30) as resp:
            res_data = json.loads(resp.read().decode("utf-8"))
            secure_url = res_data.get("secure_url")
            return rel_path, secure_url
    except Exception as e:
        print(f"Error uploading {rel_path}: {e}")
        return rel_path, None

def main():
    print("=== Step 1: Syncing Categories to Supabase ===")
    headers = {
        "apikey": SUPABASE_KEY,
        "Authorization": f"Bearer {SUPABASE_KEY}",
        "Content-Type": "application/json",
        "Prefer": "return=representation,resolution=merge-duplicates"
    }

    # Fetch existing categories from Supabase
    req = urllib.request.Request(
        f"{SUPABASE_URL}/rest/v1/categories?select=id,name,slug",
        headers=headers
    )
    with urllib.request.urlopen(req) as resp:
        existing_cats = json.loads(resp.read().decode("utf-8"))
    
    slug_to_id = {c["slug"]: c["id"] for c in existing_cats}
    print(f"Found {len(existing_cats)} existing categories in Supabase: {list(slug_to_id.keys())}")

    # Upsert missing categories
    for cat in CATEGORIES_DEF:
        if cat["slug"] not in slug_to_id:
            payload = {
                "name": cat["name"],
                "slug": cat["slug"],
                "description": cat["description"],
                "image_url": "/" + cat["image"].lstrip("/")
            }
            cat_req = urllib.request.Request(
                f"{SUPABASE_URL}/rest/v1/categories",
                data=json.dumps(payload).encode("utf-8"),
                headers=headers,
                method="POST"
            )
            try:
                with urllib.request.urlopen(cat_req) as resp:
                    created = json.loads(resp.read().decode("utf-8"))
                    if created and len(created) > 0:
                        slug_to_id[cat["slug"]] = created[0]["id"]
                        print(f"Created category {cat['name']} -> {created[0]['id']}")
            except Exception as e:
                print(f"Error inserting category {cat['name']}: {e}")

    # Refresh category map
    with urllib.request.urlopen(req) as resp:
        all_cats = json.loads(resp.read().decode("utf-8"))
        slug_to_id = {c["slug"]: c["id"] for c in all_cats}
        print("Updated category map:", slug_to_id)

    # Step 2: Upload Images to Cloudinary
    print("\n=== Step 2: Uploading Images to Cloudinary ===")
    mapping = load_cloudinary_mapping()
    # Add already uploaded test
    mapping["assets/images/products/accent-cabinets/FHD-AF-1001.jpg"] = "https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg"

    with open("src/data/products.json", "r") as f:
        products = json.load(f)

    to_upload = []
    for p in products:
        img = p.get("image", "")
        if img and img not in mapping:
            to_upload.append(img)
    
    # Also add category banner images
    for c in CATEGORIES_DEF:
        if c["image"] not in mapping:
            to_upload.append(c["image"])

    to_upload = list(set(to_upload))
    print(f"Total unique images to upload to Cloudinary: {len(to_upload)} (Already cached: {len(mapping)})")

    if to_upload:
        completed = 0
        with ThreadPoolExecutor(max_workers=8) as executor:
            futures = {executor.submit(upload_image_to_cloudinary, img): img for img in to_upload}
            for future in as_completed(futures):
                path, url = future.result()
                if url:
                    mapping[path] = url
                completed += 1
                if completed % 25 == 0 or completed == len(to_upload):
                    print(f"Progress: {completed}/{len(to_upload)} images processed...")
                    save_cloudinary_mapping(mapping)

    save_cloudinary_mapping(mapping)
    print(f"Cloudinary upload complete! Total mapped images: {len(mapping)}")

    # Update category images with Cloudinary URLs in Supabase
    print("\n=== Updating category banner images with Cloudinary URLs ===")
    for cat in CATEGORIES_DEF:
        cat_id = slug_to_id.get(cat["slug"])
        cloud_url = mapping.get(cat["image"])
        if cat_id and cloud_url:
            up_req = urllib.request.Request(
                f"{SUPABASE_URL}/rest/v1/categories?id=eq.{cat_id}",
                data=json.dumps({"image_url": cloud_url}).encode("utf-8"),
                headers={"apikey": SUPABASE_KEY, "Authorization": f"Bearer {SUPABASE_KEY}", "Content-Type": "application/json"},
                method="PATCH"
            )
            try:
                urllib.request.urlopen(up_req)
            except Exception as e:
                print(f"Could not patch category image {cat['slug']}: {e}")

    # Step 3: Format Products & Upsert to Supabase
    print("\n=== Step 3: Preparing & Upserting Products to Supabase ===")
    supabase_products = []
    updated_products_json = []

    for idx, p in enumerate(products):
        subcat = p.get("subcategory", "accent-cabinets")
        cat_id = slug_to_id.get(subcat)
        
        # Resolve department
        dept = "furnishing"
        for c in CATEGORIES_DEF:
            if c["slug"] == subcat:
                dept = c["department"]
                break
        if "holiday" in subcat:
            dept = "accessories"

        # Image URL
        local_img = p.get("image", "")
        cloud_img = mapping.get(local_img, "/" + local_img.lstrip("/"))
        
        base_price = PRICE_MAP.get(subcat, 250.0)
        # Add slight deterministic variance based on SKU digits
        try:
            sku_num = int("".join([ch for ch in p.get("sku", "1000") if ch.isdigit()]))
            base_price += (sku_num % 40) * 2.5
        except:
            pass

        moq = p.get("moq", 5)
        bulk_tiers = [
            {"min_qty": moq, "max_qty": moq * 3, "unit_price": round(base_price, 2)},
            {"min_qty": moq * 3 + 1, "max_qty": moq * 8, "unit_price": round(base_price * 0.90, 2)},
            {"min_qty": moq * 8 + 1, "max_qty": None, "unit_price": round(base_price * 0.80, 2)},
        ]

        import re
        slug_raw = f"{p.get('name', 'product')}-{p.get('sku', '')}".lower().replace(" ", "-").replace(".", "").replace("&", "and")
        slug = re.sub(r"[^a-z0-9]+", "-", slug_raw).strip("-")

        specifications = {
            "Dimensions": p.get("dimensions") or p.get("dimension") or "Standard Trade Dimensions",
            "Material": p.get("material", "Solid Hardwood · Handcrafted"),
            "Finish": p.get("finish", "Natural Satin Protective Lacquer"),
            "Packaging": "Export Grade 5-Ply Heavy Commercial Carton, Palletized",
            "Department": dept,
            "Category": p.get("category", "Accent Cabinets"),
            "Subcategory": subcat,
        }

        # Item for Supabase
        sb_item = {
            "name": p.get("name"),
            "sku": p.get("sku", f"FHD-{idx+1000}"),
            "slug": slug,
            "category_id": cat_id,
            "base_price": round(base_price, 2),
            "moq": moq,
            "description": p.get("description", "Handcrafted solid wood furniture tailored for commercial hospitality, trade showrooms, and high-end residential interiors."),
            "images": [cloud_img],
            "bulk_tiers": bulk_tiers,
            "specifications": specifications,
            "in_stock": True,
            "featured": idx < 12,
        }
        supabase_products.append(sb_item)

        # Updated item for local products.json
        json_item = dict(p)
        json_item["image"] = cloud_img
        json_item["cloudinary_url"] = cloud_img
        json_item["department"] = dept
        json_item["base_price"] = round(base_price, 2)
        json_item["bulk_tiers"] = bulk_tiers
        json_item["specifications"] = specifications
        updated_products_json.append(json_item)

    # Save updated products.json
    with open("src/data/products.json", "w") as f:
        json.dump(updated_products_json, f, indent=2)
    print("Updated src/data/products.json with Cloudinary image URLs and department mappings!")

    # Batch upsert to Supabase in chunks of 50
    print(f"\n=== Upserting {len(supabase_products)} products to Supabase ===")
    chunk_size = 50
    for i in range(0, len(supabase_products), chunk_size):
        chunk = supabase_products[i:i+chunk_size]
        p_req = urllib.request.Request(
            f"{SUPABASE_URL}/rest/v1/products?on_conflict=sku",
            data=json.dumps(chunk).encode("utf-8"),
            headers={
                "apikey": SUPABASE_KEY,
                "Authorization": f"Bearer {SUPABASE_KEY}",
                "Content-Type": "application/json",
                "Prefer": "resolution=merge-duplicates"
            },
            method="POST"
        )
        try:
            with urllib.request.urlopen(p_req) as resp:
                pass
            print(f"Upserted products {i+1} to {min(i+chunk_size, len(supabase_products))} / {len(supabase_products)} into Supabase")
        except urllib.error.HTTPError as e:
            err_body = e.read().decode("utf-8")
            print(f"HTTPError on chunk {i}: {e.code} - {err_body}")
        except Exception as e:
            print(f"Error on chunk {i}: {e}")

    # Step 4: Update src/lib/mock-data.ts with real categories & real products
    print("\n=== Step 4: Updating src/lib/mock-data.ts with real catalog data ===")
    mock_categories = []
    for c in CATEGORIES_DEF:
        cat_id = slug_to_id.get(c["slug"], f"cat-{c['slug']}")
        cloud_url = mapping.get(c["image"], "/" + c["image"].lstrip("/"))
        mock_categories.append({
            "id": cat_id,
            "name": c["name"],
            "slug": c["slug"],
            "department": c["department"],
            "description": c["description"],
            "image_url": cloud_url
        })

    # Pick 20 flagship products across all categories for mock data defaults
    flagship_products = []
    for sb in supabase_products[:30]:
        flagship_products.append({
            "id": sb["sku"],
            "category_id": sb["category_id"],
            "name": sb["name"],
            "slug": sb["slug"],
            "sku": sb["sku"],
            "description": sb["description"],
            "base_price": sb["base_price"],
            "moq": sb["moq"],
            "bulk_tiers": sb["bulk_tiers"],
            "images": sb["images"],
            "specifications": sb["specifications"],
            "in_stock": True,
            "featured": sb["featured"],
            "department": sb["specifications"]["Department"]
        })

    mock_data_ts = f"""import {{ Category, Product }} from "./types";

export const MOCK_CATEGORIES: Category[] = {json.dumps(mock_categories, indent=2)};

export const MOCK_PRODUCTS: Product[] = {json.dumps(flagship_products, indent=2)};
"""
    with open("src/lib/mock-data.ts", "w") as f:
        f.write(mock_data_ts)
    print("Updated src/lib/mock-data.ts with real categories and products!")

    print("\n=== ALL TASKS COMPLETED SUCCESSFULLY! ===")

if __name__ == "__main__":
    main()
