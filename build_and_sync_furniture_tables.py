import json
import os

with open("cloudinary_furniture_mapping.json") as f:
    cloudinary_map = json.load(f)

C_TABLE_CAT_ID = "d65a09d3-129e-4b34-93e9-4d506d3757a8"
CONSOLE_CAT_ID = "449157dd-716b-4ef9-8c72-1df6604729af"

# Metadata definitions for C-Tables (12 items)
c_tables_meta = [
    {
        "sku": "FHD-CT-1001",
        "name": "Artisanal Marble & Walnut C-Table FHD-CT-1001",
        "dimension": "18 x 12 x 26 in",
        "material": "Solid Walnut & Natural Polished Marble Top",
        "finish": "Natural Satin Walnut & Veined Grey Marble",
        "base_price": 145.0,
        "desc": "Cantilever C-shaped accent table featuring solid kiln-dried American walnut uprights and a rounded organic polished natural marble tabletop. Perfectly slides over sofa arms for drinks, laptops, and lounge accessories."
    },
    {
        "sku": "FHD-CT-1002",
        "name": "Dual-Shelf Marble & Timber C-Table FHD-CT-1002",
        "dimension": "18 x 12 x 26 in",
        "material": "Solid Walnut with Book Niche & Natural Polished Granite Top",
        "finish": "Natural Satin Walnut & Ivory Granite",
        "base_price": 155.0,
        "desc": "Architectural cantilever sofa table crafted with dual storage cubbies in solid walnut hardwood and crowned with an organic ivory granite stone top."
    },
    {
        "sku": "FHD-CT-1003",
        "name": "Industrial Iron & Fossil Marble C-Table FHD-CT-1003",
        "dimension": "18 x 12 x 26 in",
        "material": "Matte Black Powder-Coated Metal / Iron Base & Natural Fossil Stone Top",
        "finish": "Matte Black Wrought Metal & Earth Brown Marble",
        "base_price": 125.0,
        "desc": "Modernist cross-braced wrought iron metal C-table base supporting an artisanal natural fossil stone surface. Durable contract-grade construction."
    },
    {
        "sku": "FHD-CT-1004",
        "name": "Sculptural Solid Hardwood C-Table FHD-CT-1004",
        "dimension": "16 x 12 x 26 in",
        "material": "100% Solid Kiln-Dried Walnut Hardwood",
        "finish": "Hand-Turned Natural Walnut Satin",
        "base_price": 135.0,
        "desc": "Generational heirloom all-wood C-table featuring double turned timber support pillars and radiused solid walnut top and base plates."
    },
    {
        "sku": "FHD-CT-1005",
        "name": "Minimalist Round Natural Oak C-Table FHD-CT-1005",
        "dimension": "15 x 15 x 26 in",
        "material": "Solid Kiln-Dried White Oak Hardwood",
        "finish": "Natural Matte Oak",
        "base_price": 130.0,
        "desc": "Contemporary circular silhouette C-table executed in European solid white oak with seamless curved upright joinery."
    },
    {
        "sku": "FHD-CT-1006",
        "name": "Bespoke Walnut & Marble C-Table FHD-CT-1006",
        "dimension": "16 x 12 x 26 in",
        "material": "Turned Solid Walnut Timber Frame & Polished Marble Top",
        "finish": "Natural Walnut & Light Sandstone Marble",
        "base_price": 145.0,
        "desc": "Turned twin-column solid walnut frame with a pillowed polished marble top insert. Built for high-end hospitality lounges."
    },
    {
        "sku": "FHD-CT-1007",
        "name": "Arch Contour Solid Walnut C-Table FHD-CT-1007",
        "dimension": "16 x 12 x 26 in",
        "material": "Sculptural Arched Solid Walnut Hardwood",
        "finish": "Rich Walnut Satin Wax",
        "base_price": 140.0,
        "desc": "Mid-century inspired architectural C-table with sweeping parabolic arch spine cut from solid kiln-dried timber."
    },
    {
        "sku": "FHD-CT-1008",
        "name": "Architectural Fluted Walnut C-Table FHD-CT-1008",
        "dimension": "18 x 14 x 26 in",
        "material": "Fluted Solid Walnut Hardwood with Mid-Shelf Niche",
        "finish": "Architectural Fluted Natural Walnut",
        "base_price": 150.0,
        "desc": "Bespoke fluted tambour wall paneling on the outer spine with an integrated interior open display shelf and rounded walnut base."
    },
    {
        "sku": "FHD-CT-1009",
        "name": "Modern Industrial Steel & Oak C-Table FHD-CT-1009",
        "dimension": "18 x 12 x 26 in",
        "material": "Matte Black Tubular Iron / Steel Frame & Solid Natural Oak Top",
        "finish": "Powder-Coated Black Metal & Natural Oak",
        "base_price": 120.0,
        "desc": "Clean-lined square tube steel cantilever frame finished in scratch-resistant matte black powder coat with a thick bullnose solid oak top."
    },
    {
        "sku": "FHD-CT-1010",
        "name": "Hammered Iron & Travertine C-Table FHD-CT-1010",
        "dimension": "18 x 14 x 26 in",
        "material": "Hand-Hammered Wrought Iron Base & Polished Travertine Stone Top",
        "finish": "Textured Black Iron & Beige Travertine",
        "base_price": 150.0,
        "desc": "Artisanal hand-hammered forged iron uprights providing rich tactile texture, paired with a honed Italian beige travertine stone top."
    },
    {
        "sku": "FHD-CT-1011",
        "name": "Curved Steel & Dark Marble C-Table FHD-CT-1011",
        "dimension": "18 x 12 x 26 in",
        "material": "Curved Tubular Matte Black Steel Base & Dark Emperador Marble Top",
        "finish": "Sleek Matte Black Metal & Polished Brown Marble",
        "base_price": 135.0,
        "desc": "Continuous radius curved tubular black metal base with an inset polished dark Spanish Emperador marble stone slab."
    },
    {
        "sku": "FHD-CT-1012",
        "name": "Angular Iron & Emperador Marble C-Table FHD-CT-1012",
        "dimension": "18 x 12 x 26 in",
        "material": "Architectural Angular Black Metal / Iron Frame & Dark Emperador Marble Top",
        "finish": "Industrial Matte Black Metal & Polished Brown Marble",
        "base_price": 135.0,
        "desc": "Geometric cantilever frame fabricated from heavy gauge structural steel in matte black with a rich polished natural marble top."
    }
]

# Metadata definitions for Console Tables (32 items)
console_meta = [
    {
        "sku": "FHD-CST-1031",
        "name": "Two-Tone Timber 3-Tier Console Table FHD-CST-1031",
        "dimension": "40 x 14 x 30 in",
        "material": "Two-Tone Solid Hardwood (Smoked Charcoal Oak Frame & Natural Reclaimed Timber Top)",
        "finish": "Wire-Brushed Charcoal & Warm Natural Timber",
        "base_price": 345.0,
        "desc": "Substantial three-tier architectural entryway console featuring rounded solid timber posts in wire-brushed charcoal and thick natural wood shelves."
    },
    {
        "sku": "FHD-CST-1032",
        "name": "Arched Gable Multi-Tier Console FHD-CST-1032",
        "dimension": "40 x 14 x 30 in",
        "material": "Solid Hardwood with Gable Arch Cutouts & Multi-Tier Shelving",
        "finish": "Two-Tone Espresso Charcoal & Honey Brown Oak",
        "base_price": 360.0,
        "desc": "Solid timber entryway console with sculptural arch cutout side gables and dual lower display tiers for woven baskets and ceramics."
    },
    {
        "sku": "FHD-CST-1033",
        "name": "Fluted Apron Solid Walnut Console FHD-CST-1033",
        "dimension": "42 x 14 x 30 in",
        "material": "Architectural Fluted Solid Walnut Hardwood",
        "finish": "Hand-Fluted Natural Walnut Satin",
        "base_price": 395.0,
        "desc": "Statement luxury console table showcasing precision vertical reeding along the expansive apron and substantial solid timber slab uprights."
    },
    {
        "sku": "FHD-CST-1034",
        "name": "Curved Trestle Solid Teak Console FHD-CST-1034",
        "dimension": "40 x 14 x 30 in",
        "material": "Solid Kiln-Dried Teak / Walnut with Curved A-Frame Trestle Joinery",
        "finish": "Hand-Rubbed Natural Teak Oil",
        "base_price": 365.0,
        "desc": "Mid-century Scandinavian silhouette with sweeping arch leg joinery, open bottom display shelf, and bullnose contoured tabletop."
    },
    {
        "sku": "FHD-CST-1035",
        "name": "Rounded Post Solid Timber Console FHD-CST-1035",
        "dimension": "40 x 14 x 30 in",
        "material": "Rounded Pillar Post Solid Walnut Hardwood with Display Shelf",
        "finish": "Smooth Satin Natural Walnut",
        "base_price": 330.0,
        "desc": "Organic modern console table with heavy turned cylindrical corner legs, radiused corners, and a full-length lower gallery shelf."
    },
    {
        "sku": "FHD-CST-1036",
        "name": "Artisanal Geometric Cut-Out Console FHD-CST-1036",
        "dimension": "40 x 14 x 30 in",
        "material": "Artisanal Geometric Cut-Out Solid Timber with Lower Shelf",
        "finish": "Handcrafted Carved Walnut Satin",
        "base_price": 375.0,
        "desc": "Fretwork geometric circles intricately hand-carved through the solid wood apron, resting on clean square legs with an integrated shelf."
    },
    {
        "sku": "FHD-CST-1037",
        "name": "Double-Arch Charcoal & Teak Console FHD-CST-1037",
        "dimension": "40 x 14 x 30 in",
        "material": "Solid Wood Double-Arch Pedestals in Charcoal Black & Natural Teak Top",
        "finish": "Matte Charcoal Oak & Warm Teak Satin",
        "base_price": 385.0,
        "desc": "Dramatic inverted arch waterfall legs in wire-brushed charcoal oak, contrasting with a thick solid natural honey teak tabletop."
    },
    {
        "sku": "FHD-CST-1038",
        "name": "Monolithic Solid Timber Pedestal Console FHD-CST-1038",
        "dimension": "40 x 14 x 30 in",
        "material": "Monolithic Sculptural Solid Hardwood Pedestals with Capsule Top",
        "finish": "Natural Mango / Teak Satin Wax",
        "base_price": 420.0,
        "desc": "Sculptural monolith console featuring dual heavy rounded timber pedestal bases and a soft pill-shaped solid wood surface."
    },
    {
        "sku": "FHD-CST-1039",
        "name": "Waterfall Oak Console with Drawer FHD-CST-1039",
        "dimension": "40 x 14 x 30 in",
        "material": "Solid White Oak with Soft Rounded Waterfall Gables, Storage Drawer & Brushed Brass Knob",
        "finish": "Bleached Natural White Oak Satin",
        "base_price": 380.0,
        "desc": "Soft rounded pillared silhouette in bleached European white oak featuring a smooth-gliding center storage drawer with a solid brass sphere pull."
    },
    {
        "sku": "FHD-CST-1040",
        "name": "Cantilever C-Arc Solid Walnut Console FHD-CST-1040",
        "dimension": "40 x 14 x 30 in",
        "material": "Cantilever C-Arc Solid Walnut Hardwood Architectural Console",
        "finish": "Rich Walnut Satin Wax",
        "base_price": 395.0,
        "desc": "Spectacular cantilever C-arch architectural silhouette executed in rich solid walnut timber with seamless waterfall transitions."
    },
    {
        "sku": "FHD-CST-1041",
        "name": "Concentric Ring Metal & Marble Console FHD-CST-1041",
        "dimension": "40 x 14 x 30 in",
        "material": "Matte Black Powder-Coated Metal / Iron Concentric Ring Pedestal & Polished Carrara Marble Inset",
        "finish": "Matte Black Wrought Metal & Veined White Marble",
        "base_price": 375.0,
        "desc": "Artistic concentric steel rings forming the central pedestal, paired with a solid cast iron base and an inset veined white marble top."
    },
    {
        "sku": "FHD-CST-1042",
        "name": "Slatted Sled Metal & Reclaimed Wood Console FHD-CST-1042",
        "dimension": "38 x 14 x 30 in",
        "material": "Curved Slatted Black Metal / Steel Sled Base & Solid Reclaimed Hardwood Top and Bottom Shelf",
        "finish": "Matte Black Metal Craft & Warm Walnut Stained Wood",
        "base_price": 320.0,
        "desc": "Contoured vertical steel tube sled frame in matte black, housing natural solid hardwood surfaces at both top and bottom levels."
    },
    {
        "sku": "FHD-CST-1043",
        "name": "Scalloped Apron Solid Teak Console FHD-CST-1043",
        "dimension": "40 x 12 x 30 in",
        "material": "Scalloped Silhouette Solid Teak Hardwood with Lower Display Shelf",
        "finish": "Natural Warm Honey Teak Satin",
        "base_price": 340.0,
        "desc": "Gentle undulating scalloped apron carved into solid teak wood, featuring a slim 12-inch depth tailored for compact entryways and hallways."
    },
    {
        "sku": "FHD-CST-1044",
        "name": "Scalloped Walnut & Marble Console FHD-CST-1044",
        "dimension": "40 x 12 x 30 in",
        "material": "Scalloped Solid Walnut Frame with Inset Polished White Marble Top",
        "finish": "Natural Walnut & Veined Carrara Marble",
        "base_price": 385.0,
        "desc": "Scalloped solid walnut understructure crowned with a luxurious slab of polished natural Carrara marble."
    },
    {
        "sku": "FHD-CST-1045",
        "name": "Stepped Triple-Arch Console FHD-CST-1045",
        "dimension": "40 x 14 x 30 in",
        "material": "Stepped Triple-Arch Natural Pine / Mango Wood with Matte Slate Black Top",
        "finish": "Rustic Natural Mango & Matte Charcoal Slate",
        "base_price": 360.0,
        "desc": "Bold stepped arch facade with layered solid timber moldings and a contrasting matte black slate top."
    },
    {
        "sku": "FHD-CST-1046",
        "name": "Turned Post Capsule 3-Tier Console FHD-CST-1046",
        "dimension": "40 x 14 x 30 in",
        "material": "Turned Timber Dual Pillar Posts with Capsule Pill Top & 3-Tier Shelving",
        "finish": "Warm Satin Walnut",
        "base_price": 350.0,
        "desc": "Pill-shaped rounded tabletops and triple-tiered shelving supported by heavy turned solid wood columns."
    },
    {
        "sku": "FHD-CST-1047",
        "name": "Splayed Arc Solid Teak Console FHD-CST-1047",
        "dimension": "38 x 14 x 30 in",
        "material": "Sculptural Splayed Arc Solid Teak Hardwood Console",
        "finish": "Hand-Turned Natural Teak Satin",
        "base_price": 340.0,
        "desc": "Graceful parabolic outward-flaring legs with an intersecting center vault and an integrated lower display shelf."
    },
    {
        "sku": "FHD-CST-1048",
        "name": "Flying Buttress Double-Arch Console FHD-CST-1048",
        "dimension": "40 x 14 x 30 in",
        "material": "Double-Arch Flying Buttress Solid Mango / Teak Hardwood",
        "finish": "Warm Amber Teak Satin",
        "base_price": 365.0,
        "desc": "Gothic architectural inspiration with swooping double-curved timber buttresses supporting an expansive display deck."
    },
    {
        "sku": "FHD-CST-1049",
        "name": "Floating Slot Solid Oak Console FHD-CST-1049",
        "dimension": "40 x 14 x 30 in",
        "material": "Floating Apron Recessed Slot Solid Natural Oak Hardwood",
        "finish": "Natural Clear Oak Satin",
        "base_price": 355.0,
        "desc": "Contemporary gallery console with shadowline floating slot cutouts below the top and lower shelf."
    },
    {
        "sku": "FHD-CST-1050",
        "name": "Fluted Edge Slim Entry Console FHD-CST-1050",
        "dimension": "40 x 14 x 30 in",
        "material": "Reeded / Fluted Apron Border Solid Walnut Slim Entryway Console",
        "finish": "Fluted Natural Walnut Satin",
        "base_price": 350.0,
        "desc": "Fine reed fluting running continuously along both top apron and bottom shelf borders, set on sleek square posts."
    },
    {
        "sku": "FHD-CST-1051",
        "name": "Roman Arch Marble & Walnut Console FHD-CST-1051",
        "dimension": "40 x 12 x 30 in",
        "material": "Solid Walnut Roman Arch Pedestal Frame & Polished Dark Emperador Marble Top",
        "finish": "Natural Walnut & Brown Emperador Marble",
        "base_price": 415.0,
        "desc": "Continuous Roman arch waterfall timber structure supporting a premium natural Spanish brown Emperador marble top."
    },
    {
        "sku": "FHD-CST-1052",
        "name": "Smart Slatted Console with LED & Charging FHD-CST-1052",
        "dimension": "40 x 14 x 30 in",
        "material": "Industrial Slatted Solid Hardwood Cabinet with Integrated Warm LED Accent Lighting, Charging Hub & Matte Black Metal A-Frame",
        "finish": "Rich Walnut & Powder-Coated Metal",
        "base_price": 425.0,
        "desc": "Multifunctional trade console featuring solid wood slatted niches, built-in ambient warm LED cove illumination, integrated USB/wireless charging hub, and heavy-duty steel A-frame trestle legs."
    },
    {
        "sku": "FHD-CST-1053",
        "name": "Farmhouse Fluted 2-Drawer Console FHD-CST-1053",
        "dimension": "40 x 14 x 30 in",
        "material": "Farmhouse Fluted Solid Wood Dual Drawers with Brass Pulls, X-Brace Gables & Walnut Stained Top",
        "finish": "Crisp Matte Cream / Off-White & Rich Walnut Stained Wood",
        "base_price": 395.0,
        "desc": "Charming two-tone transitional console with fluted dual storage drawers, antique brass hardware, side X-crossbracing, and a rich dark walnut stained solid wood top."
    },
    {
        "sku": "FHD-CST-1054",
        "name": "Coastal Fluted Entryway Console FHD-CST-1054",
        "dimension": "40 x 14 x 30 in",
        "material": "Solid Timber Farmhouse Console with Tambour Dual Drawers & Brass Hardware",
        "finish": "Off-White Painted Finish & Honey Walnut Top",
        "base_price": 395.0,
        "desc": "Alternate angle perspective of the two-tone farmhouse console showcasing soft-close drawer glides and open storage below."
    },
    {
        "sku": "FHD-CST-1055",
        "name": "Hourglass Metal & Carrara Marble Console FHD-CST-1055",
        "dimension": "38 x 14 x 30 in",
        "material": "Intersecting Hourglass Curved Matte Black Iron Base, Polished White Carrara Marble Top & Bottom Solid Hardwood Shelf",
        "finish": "Matte Black Metal Craft, Carrara Marble & Warm Teak Wood",
        "base_price": 385.0,
        "desc": "Sculptural curved tubular iron hourglass silhouette in matte black with a polished white Carrara marble top and solid wood lower shelf."
    },
    {
        "sku": "FHD-CST-1056",
        "name": "Art Deco Geometric Metal Console FHD-CST-1056",
        "dimension": "40 x 14 x 30 in",
        "material": "Art Deco Geometric Triple-Arch Matte Black Metal Spindle Grille Frame & Solid Walnut Wood Top",
        "finish": "Powder-Coated Wrought Iron & Natural Walnut Satin",
        "base_price": 345.0,
        "desc": "Statement entryway piece featuring rhythmic triple-arch metal spindles and a solid kiln-dried walnut slab top."
    },
    {
        "sku": "FHD-CST-1057",
        "name": "Art Deco Metal Console with Shelf FHD-CST-1057",
        "dimension": "40 x 14 x 30 in",
        "material": "Art Deco Geometric Triple-Arch Metal Frame with Solid Walnut Top & Matching Lower Shelf",
        "finish": "Powder-Coated Black Steel & Natural Walnut Wood",
        "base_price": 370.0,
        "desc": "Dual-shelf iteration of the Art Deco spindle metal console, offering double the display utility with matching solid walnut shelving."
    },
    {
        "sku": "FHD-CST-1058",
        "name": "Scandinavian Oak Capsule Console FHD-CST-1058",
        "dimension": "40 x 14 x 30 in",
        "material": "Mid-Century Scandinavian Solid White Oak Capsule Console with Tambour Ribbed Dual Drawers & Brushed Brass Bar Pulls",
        "finish": "Natural White Oak & Brushed Brass",
        "base_price": 395.0,
        "desc": "Elegant mid-century capsule contour in solid white oak featuring dual tambour-reeded curved drawers, brass pulls, and tapered splayed spindle legs."
    },
    {
        "sku": "FHD-CST-1059",
        "name": "Solid Walnut Tapered Trestle Console FHD-CST-1059",
        "dimension": "40 x 14 x 30 in",
        "material": "Tapered Solid Walnut Trestle Console Table with Full Lower Shelf",
        "finish": "Hand-Rubbed Natural Walnut Oil",
        "base_price": 350.0,
        "desc": "Minimalist Scandinavian trestle console with trapezoidal outward-canted solid walnut legs and a radiused reverse-bevel tabletop."
    },
    {
        "sku": "FHD-CST-1060",
        "name": "Modernist Oak & Marble Trestle Console FHD-CST-1060",
        "dimension": "40 x 14 x 30 in",
        "material": "Modernist Solid Oak Trestle Frame & Inset Polished White Marble Top with Lower Oak Shelf",
        "finish": "Natural White Oak & Veined White Marble",
        "base_price": 410.0,
        "desc": "Splayed timber trestle frame handcrafted in solid European white oak, inset with a heavy slab of veined natural white marble."
    },
    {
        "sku": "FHD-CST-1061",
        "name": "Cathedral Arch Gothic Two-Tone Console FHD-CST-1061",
        "dimension": "40 x 14 x 30 in",
        "material": "Cathedral Arch Gothic Revival Two-Tone Solid Hardwood Console with Rich Walnut Stained Top",
        "finish": "Crisp Antique White Painted Timber & Stained Walnut",
        "base_price": 385.0,
        "desc": "Gothic revival pointed and segmental arch framework crafted from solid hardwood with a painted base and stained walnut top."
    },
    {
        "sku": "FHD-CST-1062",
        "name": "Gothic Revival Arch Entry Console FHD-CST-1062",
        "dimension": "40 x 14 x 30 in",
        "material": "Solid Timber Gothic Arch Framework with Rich Walnut Surface",
        "finish": "Antique White & Warm Walnut",
        "base_price": 385.0,
        "desc": "Detailed perspective view of the Cathedral Arch Two-Tone console highlighting generational mortise-and-tenon joinery and lower display shelf."
    }
]

# Generate product records for C-Tables
new_products = []
for item in c_tables_meta:
    sku = item["sku"]
    img_name = f"{sku.lower()}.jpeg"
    c_url = cloudinary_map.get(img_name)
    local_img = f"/assets/images/products/c-tables/{img_name}"
    primary_img = c_url or local_img
    all_imgs = [c_url] if c_url else [local_img]
    if c_url and local_img not in all_imgs:
        all_imgs.append(local_img)

    base_p = item["base_price"]
    t1 = {"min_qty": 5, "max_qty": 15, "unit_price": round(base_p, 2)}
    t2 = {"min_qty": 16, "max_qty": 40, "unit_price": round(base_p * 0.9, 2)}
    t3 = {"min_qty": 41, "max_qty": None, "unit_price": round(base_p * 0.8, 2)}

    specs = {
        "Dimensions": item["dimension"],
        "Material": item["material"],
        "Finish": item["finish"],
        "Joinery": "Mortise and Tenon / Precision TIG Welded Metal Craft",
        "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
        "Department": "furnishing",
        "Category": "C-Tables & Sofa Accents",
        "Subcategory": "c-tables"
    }

    new_products.append({
        "id": sku,
        "code": sku,
        "sku": sku,
        "name": item["name"],
        "slug": f"c-table-{sku.lower()}",
        "tag": "C-Table",
        "category": "C-Tables & Sofa Accents",
        "subcategory": "c-tables",
        "subcatTitle": "C-Tables & Sofa Accents",
        "department": "furnishing",
        "dimensions": item["dimension"],
        "dimension": item["dimension"],
        "material": item["material"],
        "finish": item["finish"],
        "description": item["desc"],
        "image": primary_img,
        "images": all_imgs,
        "cloudinary_url": c_url or primary_img,
        "base_price": base_p,
        "moq": 5,
        "in_stock": True,
        "featured": False,
        "bulk_tiers": [t1, t2, t3],
        "specifications": specs,
        "category_id": C_TABLE_CAT_ID
    })

# Generate product records for Console Tables
for item in console_meta:
    sku = item["sku"]
    # Check both .jpeg and .png
    img_name_jpg = f"{sku.lower()}.jpeg"
    img_name_png = f"{sku.lower()}.png"
    img_name = img_name_jpg if img_name_jpg in cloudinary_map else img_name_png
    c_url = cloudinary_map.get(img_name)
    local_img = f"/assets/images/products/console-tables/{img_name}"
    primary_img = c_url or local_img
    all_imgs = [c_url] if c_url else [local_img]
    if c_url and local_img not in all_imgs:
        all_imgs.append(local_img)

    base_p = item["base_price"]
    t1 = {"min_qty": 5, "max_qty": 15, "unit_price": round(base_p, 2)}
    t2 = {"min_qty": 16, "max_qty": 40, "unit_price": round(base_p * 0.9, 2)}
    t3 = {"min_qty": 41, "max_qty": None, "unit_price": round(base_p * 0.8, 2)}

    specs = {
        "Dimensions": item["dimension"],
        "Material": item["material"],
        "Finish": item["finish"],
        "Joinery": "Mortise and Tenon / Precision Welded Structural Metal",
        "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
        "Department": "furnishing",
        "Category": "Console Tables",
        "Subcategory": "console-tables"
    }

    new_products.append({
        "id": sku,
        "code": sku,
        "sku": sku,
        "name": item["name"],
        "slug": f"console-{sku.lower()}",
        "tag": "Console Table",
        "category": "Console Tables",
        "subcategory": "console-tables",
        "subcatTitle": "Console Tables",
        "department": "furnishing",
        "dimensions": item["dimension"],
        "dimension": item["dimension"],
        "material": item["material"],
        "finish": item["finish"],
        "description": item["desc"],
        "image": primary_img,
        "images": all_imgs,
        "cloudinary_url": c_url or primary_img,
        "base_price": base_p,
        "moq": 5,
        "in_stock": True,
        "featured": False,
        "bulk_tiers": [t1, t2, t3],
        "specifications": specs,
        "category_id": CONSOLE_CAT_ID
    })

print(f"Total new products built: {len(new_products)} (12 C-tables + 32 Console tables)")

# Save standalone new tables data
with open("src/data/new_tables_products.json", "w") as f:
    json.dump(new_products, f, indent=2)
print("Saved to src/data/new_tables_products.json")

# Update src/data/products.json
with open("src/data/products.json", "r") as f:
    all_products = json.load(f)

existing_skus = set(p.get("sku", "").upper() for p in all_products)
added_count = 0
for np in new_products:
    if np["sku"].upper() not in existing_skus:
        all_products.append(np)
        existing_skus.add(np["sku"].upper())
        added_count += 1

with open("src/data/products.json", "w") as f:
    json.dump(all_products, f, indent=2)

print(f"Updated src/data/products.json: added {added_count} products. Total products now: {len(all_products)}")

# Generate Supabase SQL seed script
sql_lines = [
    "-- =============================================================================",
    "-- FAIR HOME DECOR — C-Tables & Console Tables Supabase Seed Script",
    "-- Ingests 12 C-Tables & 32 Console Tables with Cloudinary URLs and Specifications",
    "-- Run this script in Supabase SQL Editor:",
    "-- https://supabase.com/dashboard/project/cfxcoorzcomorptmuala/sql/new",
    "-- =============================================================================",
    "",
    "-- 1. Ensure C-Tables Category Exists in Furnishing Department",
    "INSERT INTO public.categories (id, name, slug, department, image_url, description)",
    f"VALUES ('{C_TABLE_CAT_ID}', 'C-Tables & Sofa Accents', 'c-tables', 'furnishing', '{new_products[0]['image']}', 'Cantilever C-shaped side and sofa accent tables crafted in solid hardwood, metal, and natural marble.')",
    "ON CONFLICT (slug) DO UPDATE SET",
    "  department = EXCLUDED.department,",
    "  image_url = EXCLUDED.image_url,",
    "  description = EXCLUDED.description;",
    "",
    "-- 2. Seed 44 Table Products",
]

for p in new_products:
    escaped_name = p['name'].replace("'", "''")
    escaped_desc = p['description'].replace("'", "''")
    bulk_tiers_json = json.dumps(p['bulk_tiers'])
    specs_json = json.dumps(p['specifications']).replace("'", "''")
    images_formatted = "ARRAY[" + ", ".join(f"'{img}'" for img in p['images']) + "]::TEXT[]"

    sql_lines.append(f"""INSERT INTO public.products (category_id, name, slug, sku, description, base_price, moq, bulk_tiers, images, specifications, in_stock, featured)
VALUES (
  '{p['category_id']}',
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
""")

with open("supabase/seed_furniture_tables.sql", "w") as f:
    f.write("\n".join(sql_lines))

print("Saved SQL seed script to supabase/seed_furniture_tables.sql")
