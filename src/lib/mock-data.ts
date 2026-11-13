import { Category, Product } from "./types";

export const MOCK_CATEGORIES: Category[] = [
  {
    "id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinets",
    "slug": "accent-cabinets",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg",
    "description": "Handcrafted solid wood storage cabinets with artisanal fluting, dovetail joinery, and solid brass hardware."
  },
  {
    "id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Tables",
    "slug": "bedside-tables",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/vyceapxju4hejrotm8ad.jpg",
    "description": "Solid timber bedside nightstands crafted with dovetail drawers and tailored proportions."
  },
  {
    "id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage",
    "slug": "bookshelves",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/a6knrsuemunxp0fmfvhh.jpg",
    "description": "Heirloom open-shelving bookcases and modular architectural storage units."
  },
  {
    "id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Tables",
    "slug": "console-tables",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/tl7mjiee8dyyliuhi34x.jpg",
    "description": "Architectural entryway and living room statement consoles with solid timber pedestal bases."
  },
  {
    "id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Tables",
    "slug": "round-tables",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/zsgtqs6necrqmtspt0ss.jpg",
    "description": "Solid hardwood round dining tables and pedestal bistro centerpieces."
  },
  {
    "id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Tables",
    "slug": "side-tables",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/t5mnop522lxo5mro8jcv.jpg",
    "description": "Hand-turned timber accent side tables, sculptural pedestals, and lamp stands."
  },
  {
    "id": "e1b10001-0000-0000-0000-000000000007",
    "name": "C-Tables & Sofa Accents",
    "slug": "c-tables",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794601815/fairhomedecor/c-tables/fhd-ct-1001.jpg",
    "description": "Cantilever C-shaped side and sofa accent tables crafted in solid hardwood, metal, and natural marble."
  },
  {
    "id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desks",
    "slug": "study-tables",
    "department": "furnishing",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/cep83frxdroa7zdgje94.jpg",
    "description": "Executive writing desks and study tables with generational mortise-and-tenon joinery."
  },
  {
    "id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frames",
    "slug": "photo-frames",
    "department": "accessories",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/qabor2ys2c6kplhtp5b7.jpg",
    "description": "Artisanal hand-beveled solid wood photo frames and tabletop accents."
  },
  {
    "id": "f809989d-1523-4750-8d73-c79eca3171c5",
    "name": "Holiday & Festive",
    "slug": "holiday-decor",
    "department": "accessories",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/yg9wb1zkzgr4415lfkyq.jpg",
    "description": "Cast brass and antiqued metal reindeer, candelabras, and festive centerpiece collections."
  },
  {
    "id": "3ceffc40-baec-405a-bbb7-434052fb304e",
    "name": "Artisanal Table Lamps",
    "slug": "table-lamps",
    "department": "lighting",
    "image": "https://res.cloudinary.com/dfknq2hab/image/upload/v1794598335/fairhomedecor/lighting/ladyiotpzxpwi3toukqr.jpg",
    "description": "Handcrafted solid wood, brass, and artisanal lighting fixtures for luxury trade projects."
  }
];

export const MOCK_PRODUCTS: Product[] = [
  {
    "id": "FHD-AF-1001",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1001",
    "slug": "accent-cabinet-fhd-af-1001-fhd-af-1001",
    "sku": "FHD-AF-1001",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 447.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 447.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 402.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 358.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794521901/uq4zz3nrrsqs01sqbvvm.jpg"
    ],
    "specifications": {
      "Dimensions": "30 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1002",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1002",
    "slug": "accent-cabinet-fhd-af-1002-fhd-af-1002",
    "sku": "FHD-AF-1002",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 450.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 450.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 405.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 360.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/ntnmshxwngbx6y0f8cqa.jpg"
    ],
    "specifications": {
      "Dimensions": "30 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1003",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1003",
    "slug": "accent-cabinet-fhd-af-1003-fhd-af-1003",
    "sku": "FHD-AF-1003",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 452.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 452.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 407.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 362.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522242/o8opfjm2xs2lvxcjfz2w.jpg"
    ],
    "specifications": {
      "Dimensions": "30 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1004",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1004",
    "slug": "accent-cabinet-fhd-af-1004-fhd-af-1004",
    "sku": "FHD-AF-1004",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 455.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 455.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 409.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 364.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/bmnnb4ctflwjqljypvgf.jpg"
    ],
    "specifications": {
      "Dimensions": "30 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1005",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1005",
    "slug": "accent-cabinet-fhd-af-1005-fhd-af-1005",
    "sku": "FHD-AF-1005",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 457.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 457.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 411.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 366.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/uoknis5wgikanlyqhe6x.jpg"
    ],
    "specifications": {
      "Dimensions": "32 x 14 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1006",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1006",
    "slug": "accent-cabinet-fhd-af-1006-fhd-af-1006",
    "sku": "FHD-AF-1006",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 460.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 460.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 414.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 368.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/inuyqq2p6pkpxqiwnw3y.jpg"
    ],
    "specifications": {
      "Dimensions": "32 x 16 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1007",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1007",
    "slug": "accent-cabinet-fhd-af-1007-fhd-af-1007",
    "sku": "FHD-AF-1007",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 462.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 462.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 416.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 370.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/dlmrnjzzzqxlkguo9gih.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 14 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1008",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1008",
    "slug": "accent-cabinet-fhd-af-1008-fhd-af-1008",
    "sku": "FHD-AF-1008",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 465.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 465.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 418.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 372.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522285/dks0d6hhaitzygroj2u6.jpg"
    ],
    "specifications": {
      "Dimensions": "32 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1009",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1009",
    "slug": "accent-cabinet-fhd-af-1009-fhd-af-1009",
    "sku": "FHD-AF-1009",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 467.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 467.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 420.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 374.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522240/tp04ax9omninuadcbq0q.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 12 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1010",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1010",
    "slug": "accent-cabinet-fhd-af-1010-fhd-af-1010",
    "sku": "FHD-AF-1010",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 470.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 470.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 423.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 376.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/kocnkmz32qcapfoxwzat.jpg"
    ],
    "specifications": {
      "Dimensions": "35 x 12 x 29.5 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1011",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1011",
    "slug": "accent-cabinet-fhd-af-1011-fhd-af-1011",
    "sku": "FHD-AF-1011",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 472.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 472.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 425.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 378.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522270/ri3y64tkczxj6dcr8q5a.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 12 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1012",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1012",
    "slug": "accent-cabinet-fhd-af-1012-fhd-af-1012",
    "sku": "FHD-AF-1012",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 475.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 475.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 427.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 380.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/uu4aef80lbhnnavot5hr.jpg"
    ],
    "specifications": {
      "Dimensions": "33 x 12 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1013",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1013",
    "slug": "accent-cabinet-fhd-af-1013-fhd-af-1013",
    "sku": "FHD-AF-1013",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 477.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 477.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 429.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 382.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522266/agofpqe2mcmqzgvhygyj.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 15 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1014",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1014",
    "slug": "accent-cabinet-fhd-af-1014-fhd-af-1014",
    "sku": "FHD-AF-1014",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 480.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 480.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 432.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 384.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/mz0ka3rg4iiwmtl99lby.jpg"
    ],
    "specifications": {
      "Dimensions": "34 x 12 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1015",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1015",
    "slug": "accent-cabinet-fhd-af-1015-fhd-af-1015",
    "sku": "FHD-AF-1015",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 395.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 395.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 355.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 316.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/d7uobjyvivu4zcsnmuer.jpg"
    ],
    "specifications": {
      "Dimensions": "32 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1016",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1016",
    "slug": "accent-cabinet-fhd-af-1016-fhd-af-1016",
    "sku": "FHD-AF-1016",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 397.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 397.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 357.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 318.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/qel9yurjwuebtk7rfwdn.jpg"
    ],
    "specifications": {
      "Dimensions": "32 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1017",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1017",
    "slug": "accent-cabinet-fhd-af-1017-fhd-af-1017",
    "sku": "FHD-AF-1017",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 400.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 400.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 360.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 320.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/obayuozcsciziad7ov8w.jpg"
    ],
    "specifications": {
      "Dimensions": "30 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1018",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1018",
    "slug": "accent-cabinet-fhd-af-1018-fhd-af-1018",
    "sku": "FHD-AF-1018",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 402.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 402.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 362.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 322.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/ptvpefxw7ipgkha0azlp.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 13 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1019",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1019",
    "slug": "accent-cabinet-fhd-af-1019-fhd-af-1019",
    "sku": "FHD-AF-1019",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 405.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 405.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 364.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 324.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/hrq2alhdabkoywmi0w8o.jpg"
    ],
    "specifications": {
      "Dimensions": "39 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1020",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1020",
    "slug": "accent-cabinet-fhd-af-1020-fhd-af-1020",
    "sku": "FHD-AF-1020",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 407.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 407.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 366.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 326.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/qxggdklzyoqtjspbtsmp.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 13 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1021",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1021",
    "slug": "accent-cabinet-fhd-af-1021-fhd-af-1021",
    "sku": "FHD-AF-1021",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 410.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 410.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 369.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 328.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/tuklqqsj59reqw5sjgmg.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 13 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1022",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1022",
    "slug": "accent-cabinet-fhd-af-1022-fhd-af-1022",
    "sku": "FHD-AF-1022",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 412.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 412.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 371.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 330.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/r5a1emw22psuxjazcx4x.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 15 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1023",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1023",
    "slug": "accent-cabinet-fhd-af-1023-fhd-af-1023",
    "sku": "FHD-AF-1023",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 415.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 415.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 373.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 332.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/v5lpkvyym6zv8xr1pujc.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 16 x 35 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1024",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1024",
    "slug": "accent-cabinet-fhd-af-1024-fhd-af-1024",
    "sku": "FHD-AF-1024",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 417.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 417.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 375.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 334.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/axwjak1paxhsq0cqkbam.jpg"
    ],
    "specifications": {
      "Dimensions": "30 x 18 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1025",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1025",
    "slug": "accent-cabinet-fhd-af-1025-fhd-af-1025",
    "sku": "FHD-AF-1025",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 420.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 420.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 378.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 336.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522272/zko8q1ox1nc87a51osm4.jpg"
    ],
    "specifications": {
      "Dimensions": "39 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1026",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1026",
    "slug": "accent-cabinet-fhd-af-1026-fhd-af-1026",
    "sku": "FHD-AF-1026",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 422.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 422.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 380.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 338.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/achkazpw6wx7s4ywkj0w.jpg"
    ],
    "specifications": {
      "Dimensions": "39 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1027",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1027",
    "slug": "accent-cabinet-fhd-af-1027-fhd-af-1027",
    "sku": "FHD-AF-1027",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 425.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 425.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 382.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 340.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/mv61ydyrnyb2ovwewpmv.jpg"
    ],
    "specifications": {
      "Dimensions": "39 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1028",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1028",
    "slug": "accent-cabinet-fhd-af-1028-fhd-af-1028",
    "sku": "FHD-AF-1028",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 427.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 427.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 384.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 342.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522289/diqwrbirnqewqwim9at5.jpg"
    ],
    "specifications": {
      "Dimensions": "32 x 14 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1029",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1029",
    "slug": "accent-cabinet-fhd-af-1029-fhd-af-1029",
    "sku": "FHD-AF-1029",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 430.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 430.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 387.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 344.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/mzxacyb6lsniwsez97rb.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 13 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-AF-1030",
    "category_id": "ca86a0eb-eadf-42ba-98b6-f706beab411d",
    "name": "Accent Cabinet FHD-AF-1030",
    "slug": "accent-cabinet-fhd-af-1030-fhd-af-1030",
    "sku": "FHD-AF-1030",
    "description": "Handcrafted solid wood accent cabinet featuring artisanal storage compartments, smooth natural woodgrain, and tailored proportions.",
    "base_price": 432.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 432.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 389.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 346.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/zjzz8geprcn9zq6fcfiy.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 13 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Accent Cabinets",
      "Subcategory": "accent-cabinets"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1001",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1001",
    "slug": "bedside-table-fhd-bst-1001-fhd-bst-1001",
    "sku": "FHD-BST-1001",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 237.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 237.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 213.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 190.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/vyceapxju4hejrotm8ad.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 26 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1002",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1002",
    "slug": "bedside-table-fhd-bst-1002-fhd-bst-1002",
    "sku": "FHD-BST-1002",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 240.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 240.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 216.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 192.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522201/fepfrjhkb8rs9atfzvtg.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 26 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1003",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1003",
    "slug": "bedside-table-fhd-bst-1003-fhd-bst-1003",
    "sku": "FHD-BST-1003",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 242.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 242.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 218.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 194.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/fqdj0arshpwutl4b62qh.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 26 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1004",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1004",
    "slug": "bedside-table-fhd-bst-1004-fhd-bst-1004",
    "sku": "FHD-BST-1004",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 245.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 245.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 220.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 196.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/swtehu3kdstsmybmtjf9.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1005",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1005",
    "slug": "bedside-table-fhd-bst-1005-fhd-bst-1005",
    "sku": "FHD-BST-1005",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 247.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 247.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 222.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 198.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/bomhqylqbwrprrtpsaob.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1006",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1006",
    "slug": "bedside-table-fhd-bst-1006-fhd-bst-1006",
    "sku": "FHD-BST-1006",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 250.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 250.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 225.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 200.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/yibyknvy2bmii7va1aro.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1007",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1007",
    "slug": "bedside-table-fhd-bst-1007-fhd-bst-1007",
    "sku": "FHD-BST-1007",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 252.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 252.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 227.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 202.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522286/nevdeqp70slszmpb1lji.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1008",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1008",
    "slug": "bedside-table-fhd-bst-1008-fhd-bst-1008",
    "sku": "FHD-BST-1008",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 255.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 255.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 229.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 204.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522207/tmjxzzs30sf1ckxtge9j.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1009",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1009",
    "slug": "bedside-table-fhd-bst-1009-fhd-bst-1009",
    "sku": "FHD-BST-1009",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 257.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 257.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 231.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 206.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/uutx3idj9wtfejnv5s4c.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1010",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1010",
    "slug": "bedside-table-fhd-bst-1010-fhd-bst-1010",
    "sku": "FHD-BST-1010",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 260.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 260.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 234.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 208.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/co40g7mqfvjyglnkk5ah.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1011",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1011",
    "slug": "bedside-table-fhd-bst-1011-fhd-bst-1011",
    "sku": "FHD-BST-1011",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 262.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 262.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 236.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 210.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/gw8zg4l6vk1xzupi0fnv.jpg"
    ],
    "specifications": {
      "Dimensions": "17 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1012",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1012",
    "slug": "bedside-table-fhd-bst-1012-fhd-bst-1012",
    "sku": "FHD-BST-1012",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 265.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 265.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 238.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 212.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/yc3upthrxya23avbpiyx.jpg"
    ],
    "specifications": {
      "Dimensions": "17 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1013",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1013",
    "slug": "bedside-table-fhd-bst-1013-fhd-bst-1013",
    "sku": "FHD-BST-1013",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 267.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 267.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 240.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 214.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/ml0pjiqgqgyefcfgiabr.jpg"
    ],
    "specifications": {
      "Dimensions": "17 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1014",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1014",
    "slug": "bedside-table-fhd-bst-1014-fhd-bst-1014",
    "sku": "FHD-BST-1014",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 270.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 270.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 243.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 216.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/iouuzjknl81hp1oabioa.jpg"
    ],
    "specifications": {
      "Dimensions": "17 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1015",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1015",
    "slug": "bedside-table-fhd-bst-1015-fhd-bst-1015",
    "sku": "FHD-BST-1015",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 185.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 185.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 166.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 148.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522230/ytoysyjnaj9hsnm2o1b1.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1016",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1016",
    "slug": "bedside-table-fhd-bst-1016-fhd-bst-1016",
    "sku": "FHD-BST-1016",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 187.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 187.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 168.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 150.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/fbbermuddja6gjlbfgrq.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1017",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1017",
    "slug": "bedside-table-fhd-bst-1017-fhd-bst-1017",
    "sku": "FHD-BST-1017",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 190.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 190.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 171.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 152.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522287/yuueqjcprtvlcowxqxup.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 16 x 26 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1018",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1018",
    "slug": "bedside-table-fhd-bst-1018-fhd-bst-1018",
    "sku": "FHD-BST-1018",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 192.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 192.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 173.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 154.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522195/hx7bqq6qqcz79eipyfd1.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 16 x 26 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1019",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1019",
    "slug": "bedside-table-fhd-bst-1019-fhd-bst-1019",
    "sku": "FHD-BST-1019",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 195.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 195.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 175.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 156.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/blpcvihzgpevgineohjp.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 16 x 25 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1020",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1020",
    "slug": "bedside-table-fhd-bst-1020-fhd-bst-1020",
    "sku": "FHD-BST-1020",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 197.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 197.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 177.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 158.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/kwm4haefn4aeuv9qeoih.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 16 x 25 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1021",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1021",
    "slug": "bedside-table-fhd-bst-1021-fhd-bst-1021",
    "sku": "FHD-BST-1021",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 200.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 200.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 180.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 160.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/sw70hlz2roncvdaztedd.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 16 x 25 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1022",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1022",
    "slug": "bedside-table-fhd-bst-1022-fhd-bst-1022",
    "sku": "FHD-BST-1022",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 202.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 202.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 182.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 162.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/vvko4311a4uuxngb7dvw.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 16 x 25 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1023",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1023",
    "slug": "bedside-table-fhd-bst-1023-fhd-bst-1023",
    "sku": "FHD-BST-1023",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 205.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 205.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 184.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 164.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522261/tu6gyqkqy89ti6hsjvxs.jpg"
    ],
    "specifications": {
      "Dimensions": "21 x 16 x 27 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1024",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1024",
    "slug": "bedside-table-fhd-bst-1024-fhd-bst-1024",
    "sku": "FHD-BST-1024",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 207.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 207.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 186.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 166.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/cmppyelyw2gycpbw9dat.jpg"
    ],
    "specifications": {
      "Dimensions": "21 x 16 x 27 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1025",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1025",
    "slug": "bedside-table-fhd-bst-1025-fhd-bst-1025",
    "sku": "FHD-BST-1025",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 210.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 210.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 189.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 168.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522268/awxm3kvt78e52zgeqewc.jpg"
    ],
    "specifications": {
      "Dimensions": "21 x 16 x 27 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1026",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1026",
    "slug": "bedside-table-fhd-bst-1026-fhd-bst-1026",
    "sku": "FHD-BST-1026",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 212.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 212.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 191.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 170.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522199/i6wsmnohrjtiwbdiwqux.jpg"
    ],
    "specifications": {
      "Dimensions": "21 x 16 x 27 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1027",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1027",
    "slug": "bedside-table-fhd-bst-1027-fhd-bst-1027",
    "sku": "FHD-BST-1027",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 215.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 215.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 193.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 172.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/fnk8chmmfzqudsrepopj.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1028",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1028",
    "slug": "bedside-table-fhd-bst-1028-fhd-bst-1028",
    "sku": "FHD-BST-1028",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 217.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 217.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 195.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 174.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522294/bnghtqgyyhdstfmhp5vt.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1029",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1029",
    "slug": "bedside-table-fhd-bst-1029-fhd-bst-1029",
    "sku": "FHD-BST-1029",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 220.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 220.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 198.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 176.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522224/us9uqyj8ofcbvjse4zob.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1030",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1030",
    "slug": "bedside-table-fhd-bst-1030-fhd-bst-1030",
    "sku": "FHD-BST-1030",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 222.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 222.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 200.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 178.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/u8zkgo9i1bag3zivaz2s.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1031",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1031",
    "slug": "bedside-table-fhd-bst-1031-fhd-bst-1031",
    "sku": "FHD-BST-1031",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 225.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 225.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 202.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 180.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522201/z1eeryl7ge4cairnb5jq.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1032",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1032",
    "slug": "bedside-table-fhd-bst-1032-fhd-bst-1032",
    "sku": "FHD-BST-1032",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 227.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 227.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 204.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 182.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522230/ee19agkbblxdpu7sb0xt.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1033",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1033",
    "slug": "bedside-table-fhd-bst-1033-fhd-bst-1033",
    "sku": "FHD-BST-1033",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 230.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 230.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 207.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 184.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/mqocgsznucskejcemrvs.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1034",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1034",
    "slug": "bedside-table-fhd-bst-1034-fhd-bst-1034",
    "sku": "FHD-BST-1034",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 232.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 232.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 209.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 186.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/kkx0dn8hgdz7uxlp5339.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1035",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1035",
    "slug": "bedside-table-fhd-bst-1035-fhd-bst-1035",
    "sku": "FHD-BST-1035",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 235.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 235.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 211.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 188.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/ew5d8fe2soxk1kwkpq5y.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1036",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1036",
    "slug": "bedside-table-fhd-bst-1036-fhd-bst-1036",
    "sku": "FHD-BST-1036",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 237.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 237.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 213.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 190.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522264/zyfmv94nhlghvy005qqr.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1037",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1037",
    "slug": "bedside-table-fhd-bst-1037-fhd-bst-1037",
    "sku": "FHD-BST-1037",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 240.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 240.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 216.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 192.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/mjotjhpadpbwpuftk0yz.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1038",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1038",
    "slug": "bedside-table-fhd-bst-1038-fhd-bst-1038",
    "sku": "FHD-BST-1038",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 242.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 242.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 218.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 194.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522199/lyawo4jpgdttf365zern.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1039",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1039",
    "slug": "bedside-table-fhd-bst-1039-fhd-bst-1039",
    "sku": "FHD-BST-1039",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 245.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 245.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 220.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 196.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522224/vn3wjkx7s24pnbm9nvas.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1040",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1040",
    "slug": "bedside-table-fhd-bst-1040-fhd-bst-1040",
    "sku": "FHD-BST-1040",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 247.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 247.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 222.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 198.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/eksyszhw8fp9srxua4h3.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1041",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1041",
    "slug": "bedside-table-fhd-bst-1041-fhd-bst-1041",
    "sku": "FHD-BST-1041",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 250.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 250.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 225.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 200.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/bkawzac3wlnkaig8xnlr.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1042",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1042",
    "slug": "bedside-table-fhd-bst-1042-fhd-bst-1042",
    "sku": "FHD-BST-1042",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 252.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 252.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 227.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 202.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/qenxkrcc6md32v92vg8x.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1043",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1043",
    "slug": "bedside-table-fhd-bst-1043-fhd-bst-1043",
    "sku": "FHD-BST-1043",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 255.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 255.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 229.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 204.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522285/bhgbaozac5chnxdvkxfg.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1044",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1044",
    "slug": "bedside-table-fhd-bst-1044-fhd-bst-1044",
    "sku": "FHD-BST-1044",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 257.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 257.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 231.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 206.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522233/yahn8fncheget3o2hnyh.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1045",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1045",
    "slug": "bedside-table-fhd-bst-1045-fhd-bst-1045",
    "sku": "FHD-BST-1045",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 260.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 260.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 234.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 208.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/qhcfhlkpmzqmtnjit7hl.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1046",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1046",
    "slug": "bedside-table-fhd-bst-1046-fhd-bst-1046",
    "sku": "FHD-BST-1046",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 262.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 262.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 236.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 210.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/tukinnduo1ctdyps3fqj.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1047",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1047",
    "slug": "bedside-table-fhd-bst-1047-fhd-bst-1047",
    "sku": "FHD-BST-1047",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 265.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 265.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 238.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 212.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/avoai4ttvyd1dsoee0gd.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1048",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1048",
    "slug": "bedside-table-fhd-bst-1048-fhd-bst-1048",
    "sku": "FHD-BST-1048",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 267.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 267.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 240.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 214.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/uputettyoklzsedhu8xy.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 25 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1049",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1049",
    "slug": "bedside-table-fhd-bst-1049-fhd-bst-1049",
    "sku": "FHD-BST-1049",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 270.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 270.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 243.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 216.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/h0oocermnjw3somdiogp.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 26 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1050",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1050",
    "slug": "bedside-table-fhd-bst-1050-fhd-bst-1050",
    "sku": "FHD-BST-1050",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 185.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 185.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 166.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 148.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/jssbpuvrycjwqsd1jmqc.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 16 x 26 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1051",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1051",
    "slug": "bedside-table-fhd-bst-1051-fhd-bst-1051",
    "sku": "FHD-BST-1051",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 187.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 187.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 168.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 150.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/ot9whqqygpydxkayegxw.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1052",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1052",
    "slug": "bedside-table-fhd-bst-1052-fhd-bst-1052",
    "sku": "FHD-BST-1052",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 190.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 190.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 171.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 152.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/zixtcu9im4ekcnppqhds.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1053",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1053",
    "slug": "bedside-table-fhd-bst-1053-fhd-bst-1053",
    "sku": "FHD-BST-1053",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 192.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 192.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 173.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 154.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/dhxqdmp3etvnkpc6izyg.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1054",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1054",
    "slug": "bedside-table-fhd-bst-1054-fhd-bst-1054",
    "sku": "FHD-BST-1054",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 195.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 195.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 175.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 156.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522235/idky4f4ukqdpk7t9ckv2.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1055",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1055",
    "slug": "bedside-table-fhd-bst-1055-fhd-bst-1055",
    "sku": "FHD-BST-1055",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 197.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 197.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 177.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 158.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/lt8cekbmainzm1cfzot6.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1056",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1056",
    "slug": "bedside-table-fhd-bst-1056-fhd-bst-1056",
    "sku": "FHD-BST-1056",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 200.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 200.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 180.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 160.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/ewhijnl8etlhh2k0jvpo.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1057",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1057",
    "slug": "bedside-table-fhd-bst-1057-fhd-bst-1057",
    "sku": "FHD-BST-1057",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 202.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 202.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 182.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 162.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/an6fwhsqwnddksapjrul.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1058",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1058",
    "slug": "bedside-table-fhd-bst-1058-fhd-bst-1058",
    "sku": "FHD-BST-1058",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 205.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 205.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 184.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 164.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/ij60qtisx1iqzksiug1l.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1059",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1059",
    "slug": "bedside-table-fhd-bst-1059-fhd-bst-1059",
    "sku": "FHD-BST-1059",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 207.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 207.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 186.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 166.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/rizixct54eg5ghajq8ya.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1060",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1060",
    "slug": "bedside-table-fhd-bst-1060-fhd-bst-1060",
    "sku": "FHD-BST-1060",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 210.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 210.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 189.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 168.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522291/ceutamqbb8z81h4ap9tk.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1061",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1061",
    "slug": "bedside-table-fhd-bst-1061-fhd-bst-1061",
    "sku": "FHD-BST-1061",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 212.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 212.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 191.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 170.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/kb7s2aaftgxilo2l5fai.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1062",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1062",
    "slug": "bedside-table-fhd-bst-1062-fhd-bst-1062",
    "sku": "FHD-BST-1062",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 215.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 215.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 193.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 172.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/ssr11uvnzkboqcjyvzcz.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1063",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1063",
    "slug": "bedside-table-fhd-bst-1063-fhd-bst-1063",
    "sku": "FHD-BST-1063",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 217.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 217.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 195.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 174.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/fl80k38ddcp9napspm4y.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BST-1064",
    "category_id": "e1b10001-0000-0000-0000-000000000001",
    "name": "Bedside Table FHD-BST-1064",
    "slug": "bedside-table-fhd-bst-1064-fhd-bst-1064",
    "sku": "FHD-BST-1064",
    "description": "Artisanal solid wood bedside nightstand designed with warm architectural silhouettes, integrated storage, and heirloom construction.",
    "base_price": 220.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 220.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 198.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 176.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/fbdwem8ms6meqbjyr0am.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bedside Tables",
      "Subcategory": "bedside-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1001",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1001",
    "slug": "study-tables-&-desk-fhd-stt-1001-fhd-stt-1001",
    "sku": "FHD-STT-1001",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 442.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 442.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 398.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 354.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/cep83frxdroa7zdgje94.jpg"
    ],
    "specifications": {
      "Dimensions": "50 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1002",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1002",
    "slug": "study-tables-&-desk-fhd-stt-1002-fhd-stt-1002",
    "sku": "FHD-STT-1002",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 445.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 445.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 400.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 356.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/dw6kyk0jjnsal71mto2l.jpg"
    ],
    "specifications": {
      "Dimensions": "50 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1003",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1003",
    "slug": "study-tables-&-desk-fhd-stt-1003-fhd-stt-1003",
    "sku": "FHD-STT-1003",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 447.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 447.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 402.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 358.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/qv4uqxuvarw8qre4bzzw.jpg"
    ],
    "specifications": {
      "Dimensions": "52 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1004",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1004",
    "slug": "study-tables-&-desk-fhd-stt-1004-fhd-stt-1004",
    "sku": "FHD-STT-1004",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 450.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 450.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 405.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 360.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/nvc1ggwifgvopv7rxpem.jpg"
    ],
    "specifications": {
      "Dimensions": "52 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1005",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1005",
    "slug": "study-tables-&-desk-fhd-stt-1005-fhd-stt-1005",
    "sku": "FHD-STT-1005",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 452.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 452.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 407.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 362.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/vm3qybautbxetb4qn36r.jpg"
    ],
    "specifications": {
      "Dimensions": "46 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1006",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1006",
    "slug": "study-tables-&-desk-fhd-stt-1006-fhd-stt-1006",
    "sku": "FHD-STT-1006",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 455.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 455.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 409.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 364.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522270/uenh74lebnkvgpqbaj9d.jpg"
    ],
    "specifications": {
      "Dimensions": "46 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1007",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1007",
    "slug": "study-tables-&-desk-fhd-stt-1007-fhd-stt-1007",
    "sku": "FHD-STT-1007",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 457.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 457.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 411.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 366.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/nvdrte0tmzxxhmrfvvbb.jpg"
    ],
    "specifications": {
      "Dimensions": "54 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1008",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1008",
    "slug": "study-tables-&-desk-fhd-stt-1008-fhd-stt-1008",
    "sku": "FHD-STT-1008",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 460.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 460.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 414.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 368.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/ffju0fhmoqrmt94kbbhg.jpg"
    ],
    "specifications": {
      "Dimensions": "55 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1009",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1009",
    "slug": "study-tables-&-desk-fhd-stt-1009-fhd-stt-1009",
    "sku": "FHD-STT-1009",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 462.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 462.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 416.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 370.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/r4anjqcgnfdm3i1kttyi.jpg"
    ],
    "specifications": {
      "Dimensions": "48 x 18 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1010",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1010",
    "slug": "study-tables-&-desk-fhd-stt-1010-fhd-stt-1010",
    "sku": "FHD-STT-1010",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 465.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 465.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 418.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 372.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/i9fv6tkjfsfbieahh7t8.jpg"
    ],
    "specifications": {
      "Dimensions": "52 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1011",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1011",
    "slug": "study-tables-&-desk-fhd-stt-1011-fhd-stt-1011",
    "sku": "FHD-STT-1011",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 467.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 467.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 420.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 374.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/vhyu8nnahgsrzwyzvsth.jpg"
    ],
    "specifications": {
      "Dimensions": "48 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1012",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1012",
    "slug": "study-tables-&-desk-fhd-stt-1012-fhd-stt-1012",
    "sku": "FHD-STT-1012",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 470.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 470.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 423.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 376.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/kqbabc7nvegxupbxxvln.jpg"
    ],
    "specifications": {
      "Dimensions": "55 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1013",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1013",
    "slug": "study-tables-&-desk-fhd-stt-1013-fhd-stt-1013",
    "sku": "FHD-STT-1013",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 472.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 472.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 425.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 378.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/upeqgqedt0ni2isklfpk.jpg"
    ],
    "specifications": {
      "Dimensions": "47 x 17 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1014",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1014",
    "slug": "study-tables-&-desk-fhd-stt-1014-fhd-stt-1014",
    "sku": "FHD-STT-1014",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 475.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 475.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 427.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 380.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/egblhytj9xzkrbd3g8tz.jpg"
    ],
    "specifications": {
      "Dimensions": "54 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1015",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1015",
    "slug": "study-tables-&-desk-fhd-stt-1015-fhd-stt-1015",
    "sku": "FHD-STT-1015",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 390.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 390.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 351.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 312.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/eujgeo8z5uvnewcbhocd.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1016",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1016",
    "slug": "study-tables-&-desk-fhd-stt-1016-fhd-stt-1016",
    "sku": "FHD-STT-1016",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 392.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 392.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 353.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 314.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/ignqpbswhzcvqw3mx171.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1017",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1017",
    "slug": "study-tables-&-desk-fhd-stt-1017-fhd-stt-1017",
    "sku": "FHD-STT-1017",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 395.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 395.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 355.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 316.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/ripfrmhme8cwiw8mz9o3.jpg"
    ],
    "specifications": {
      "Dimensions": "52 x 18 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1018",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1018",
    "slug": "study-tables-&-desk-fhd-stt-1018-fhd-stt-1018",
    "sku": "FHD-STT-1018",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 397.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 397.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 357.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 318.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/qyqopm0wmazvxcpkjtuy.jpg"
    ],
    "specifications": {
      "Dimensions": "54 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1019",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1019",
    "slug": "study-tables-&-desk-fhd-stt-1019-fhd-stt-1019",
    "sku": "FHD-STT-1019",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 400.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 400.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 360.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 320.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/w8xybm2both3kre2sqpc.jpg"
    ],
    "specifications": {
      "Dimensions": "52 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1020",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1020",
    "slug": "study-tables-&-desk-fhd-stt-1020-fhd-stt-1020",
    "sku": "FHD-STT-1020",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 402.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 402.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 362.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 322.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/xm8wzy2wml1u4m6fvvvm.jpg"
    ],
    "specifications": {
      "Dimensions": "57 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1021",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1021",
    "slug": "study-tables-&-desk-fhd-stt-1021-fhd-stt-1021",
    "sku": "FHD-STT-1021",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 405.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 405.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 364.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 324.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/gnhxxkajkd0cm2cfzjxj.jpg"
    ],
    "specifications": {
      "Dimensions": "47 x 17 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1022",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1022",
    "slug": "study-tables-&-desk-fhd-stt-1022-fhd-stt-1022",
    "sku": "FHD-STT-1022",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 407.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 407.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 366.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 326.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/pfocfxqfyjfsdltofulz.jpg"
    ],
    "specifications": {
      "Dimensions": "52 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1023",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1023",
    "slug": "study-tables-&-desk-fhd-stt-1023-fhd-stt-1023",
    "sku": "FHD-STT-1023",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 410.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 410.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 369.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 328.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522193/htthbbc3jiqioszrl9iu.jpg"
    ],
    "specifications": {
      "Dimensions": "47 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1024",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1024",
    "slug": "study-tables-&-desk-fhd-stt-1024-fhd-stt-1024",
    "sku": "FHD-STT-1024",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 412.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 412.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 371.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 330.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/bvunuknggvklzmglz8ns.jpg"
    ],
    "specifications": {
      "Dimensions": "36 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1025",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1025",
    "slug": "study-tables-&-desk-fhd-stt-1025-fhd-stt-1025",
    "sku": "FHD-STT-1025",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 415.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 415.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 373.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 332.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/kk4wqshyqvlsgcr8bffd.jpg"
    ],
    "specifications": {
      "Dimensions": "64 x 24 x 29.5 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1026",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1026",
    "slug": "study-tables-&-desk-fhd-stt-1026-fhd-stt-1026",
    "sku": "FHD-STT-1026",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 417.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 417.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 375.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 334.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/zareroccmdgmjljy8sg7.jpg"
    ],
    "specifications": {
      "Dimensions": "65 x 29 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1027",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1027",
    "slug": "study-tables-&-desk-fhd-stt-1027-fhd-stt-1027",
    "sku": "FHD-STT-1027",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 420.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 420.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 378.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 336.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/rtza6lt7e0ejvdityk2e.jpg"
    ],
    "specifications": {
      "Dimensions": "84 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1028",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1028",
    "slug": "study-tables-&-desk-fhd-stt-1028-fhd-stt-1028",
    "sku": "FHD-STT-1028",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 422.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 422.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 380.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 338.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/a7fe6dokio5fv2x8ltkm.jpg"
    ],
    "specifications": {
      "Dimensions": "60 x 30 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1029",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1029",
    "slug": "study-tables-&-desk-fhd-stt-1029-fhd-stt-1029",
    "sku": "FHD-STT-1029",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 425.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 425.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 382.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 340.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/ugzfwinomxsz6v9mheh9.jpg"
    ],
    "specifications": {
      "Dimensions": "64 x 24 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1030",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1030",
    "slug": "study-tables-&-desk-fhd-stt-1030-fhd-stt-1030",
    "sku": "FHD-STT-1030",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 427.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 427.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 384.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 342.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/grdfzpzb2pp23j5blqfu.jpg"
    ],
    "specifications": {
      "Dimensions": "72 x 30 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1031",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1031",
    "slug": "study-tables-&-desk-fhd-stt-1031-fhd-stt-1031",
    "sku": "FHD-STT-1031",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 430.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 430.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 387.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 344.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/rv46hulh7chozqjuusio.jpg"
    ],
    "specifications": {
      "Dimensions": "60 x 30 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1032",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1032",
    "slug": "study-tables-&-desk-fhd-stt-1032-fhd-stt-1032",
    "sku": "FHD-STT-1032",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 432.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 432.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 389.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 346.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/ln48x9tn8utkhytpsq30.jpg"
    ],
    "specifications": {
      "Dimensions": "64 x 30 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1033",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1033",
    "slug": "study-tables-&-desk-fhd-stt-1033-fhd-stt-1033",
    "sku": "FHD-STT-1033",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 435.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 435.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 391.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 348.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/qwurcusqtgho64hmcwdz.jpg"
    ],
    "specifications": {
      "Dimensions": "48 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1034",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1034",
    "slug": "study-tables-&-desk-fhd-stt-1034-fhd-stt-1034",
    "sku": "FHD-STT-1034",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 437.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 437.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 393.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 350.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/sxm6wisfw2bqvazz5rky.jpg"
    ],
    "specifications": {
      "Dimensions": "48 x 24 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1035",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1035",
    "slug": "study-tables-&-desk-fhd-stt-1035-fhd-stt-1035",
    "sku": "FHD-STT-1035",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 440.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 440.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 396.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 352.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/mq7xcpppqwmufykykffe.jpg"
    ],
    "specifications": {
      "Dimensions": "64 x 29 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1036",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1036",
    "slug": "study-tables-&-desk-fhd-stt-1036-fhd-stt-1036",
    "sku": "FHD-STT-1036",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 442.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 442.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 398.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 354.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522226/vfq8bzs7xet3jkdjrpkh.jpg"
    ],
    "specifications": {
      "Dimensions": "60 x 18 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1037",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1037",
    "slug": "study-tables-&-desk-fhd-stt-1037-fhd-stt-1037",
    "sku": "FHD-STT-1037",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 445.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 445.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 400.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 356.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/s8ufoiuaywpfthkvo1xp.jpg"
    ],
    "specifications": {
      "Dimensions": "60 x 23 x 31 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1038",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1038",
    "slug": "study-tables-&-desk-fhd-stt-1038-fhd-stt-1038",
    "sku": "FHD-STT-1038",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 447.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 447.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 402.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 358.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/vu5mv3pnnuo13l6k7anw.jpg"
    ],
    "specifications": {
      "Dimensions": "55 x 27 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1039",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1039",
    "slug": "study-tables-&-desk-fhd-stt-1039-fhd-stt-1039",
    "sku": "FHD-STT-1039",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 450.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 450.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 405.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 360.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522193/kpsrc4ozx5shcfis48rk.jpg"
    ],
    "specifications": {
      "Dimensions": "77 x 31 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1040",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1040",
    "slug": "study-tables-&-desk-fhd-stt-1040-fhd-stt-1040",
    "sku": "FHD-STT-1040",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 452.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 452.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 407.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 362.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/d4ostk4f1ef2qc4krkuc.jpg"
    ],
    "specifications": {
      "Dimensions": "70 x 27 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1041",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1041",
    "slug": "study-tables-&-desk-fhd-stt-1041-fhd-stt-1041",
    "sku": "FHD-STT-1041",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 455.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 455.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 409.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 364.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/roukvrkskgpcfuhwwsfj.jpg"
    ],
    "specifications": {
      "Dimensions": "70 x 27 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1042",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1042",
    "slug": "study-tables-&-desk-fhd-stt-1042-fhd-stt-1042",
    "sku": "FHD-STT-1042",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 457.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 457.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 411.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 366.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/ghunuwdq9jmifgtmhd4v.jpg"
    ],
    "specifications": {
      "Dimensions": "70 x 27 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1043",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1043",
    "slug": "study-tables-&-desk-fhd-stt-1043-fhd-stt-1043",
    "sku": "FHD-STT-1043",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 460.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 460.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 414.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 368.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/bqqvomkclsaywfndsv3c.jpg"
    ],
    "specifications": {
      "Dimensions": "44 x 24 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1044",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1044",
    "slug": "study-tables-&-desk-fhd-stt-1044-fhd-stt-1044",
    "sku": "FHD-STT-1044",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 462.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 462.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 416.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 370.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522201/p2mt5qizgzd2nfwzg4qi.jpg"
    ],
    "specifications": {
      "Dimensions": "50 x 24 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1045",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1045",
    "slug": "study-tables-&-desk-fhd-stt-1045-fhd-stt-1045",
    "sku": "FHD-STT-1045",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 465.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 465.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 418.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 372.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/qrar1y6ujlvqp1ciuq82.jpg"
    ],
    "specifications": {
      "Dimensions": "60 x 20 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1046",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1046",
    "slug": "study-tables-&-desk-fhd-stt-1046-fhd-stt-1046",
    "sku": "FHD-STT-1046",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 467.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 467.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 420.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 374.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/rz7do7ljrhq6ybpgcabc.jpg"
    ],
    "specifications": {
      "Dimensions": "48 x 24 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1047",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1047",
    "slug": "study-tables-&-desk-fhd-stt-1047-fhd-stt-1047",
    "sku": "FHD-STT-1047",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 470.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 470.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 423.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 376.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522261/np57hduflw0qif5rrfb2.jpg"
    ],
    "specifications": {
      "Dimensions": "48 x 24 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-STT-1048",
    "category_id": "e1b10001-0000-0000-0000-000000000005",
    "name": "Study Tables & Desk FHD-STT-1048",
    "slug": "study-tables-&-desk-fhd-stt-1048-fhd-stt-1048",
    "sku": "FHD-STT-1048",
    "description": "Ergonomic study desk crafted in premium solid timber with clean modern surfaces, sturdy framing, and functional work area.",
    "base_price": 472.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 472.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 425.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 378.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/ut5ripyckacbgtbaojgt.jpg"
    ],
    "specifications": {
      "Dimensions": "46 x 22 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Study Tables & Desks",
      "Subcategory": "study-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1001",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1001",
    "slug": "console-table-fhd-cst-1001-fhd-cst-1001",
    "sku": "FHD-CST-1001",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 372.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 372.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 335.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 298.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/tl7mjiee8dyyliuhi34x.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1002",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1002",
    "slug": "console-table-fhd-cst-1002-fhd-cst-1002",
    "sku": "FHD-CST-1002",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 375.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 375.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 337.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 300.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/izwsnfszc3ofernepi4y.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1003",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1003",
    "slug": "console-table-fhd-cst-1003-fhd-cst-1003",
    "sku": "FHD-CST-1003",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 377.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 377.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 339.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 302.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522209/jok0akww0qy1l9d1djzx.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1004",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1004",
    "slug": "console-table-fhd-cst-1004-fhd-cst-1004",
    "sku": "FHD-CST-1004",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 380.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 380.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 342.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 304.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/qmb5t4jfshc9p1w8eyke.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1005",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1005",
    "slug": "console-table-fhd-cst-1005-fhd-cst-1005",
    "sku": "FHD-CST-1005",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 382.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 382.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 344.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 306.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/qzl5ireuqzfadzdfadka.jpg"
    ],
    "specifications": {
      "Dimensions": "38 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1006",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1006",
    "slug": "console-table-fhd-cst-1006-fhd-cst-1006",
    "sku": "FHD-CST-1006",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 385.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 385.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 346.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 308.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/wizoluhcy4grkgphkrwn.jpg"
    ],
    "specifications": {
      "Dimensions": "38 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1007",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1007",
    "slug": "console-table-fhd-cst-1007-fhd-cst-1007",
    "sku": "FHD-CST-1007",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 387.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 387.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 348.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 310.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/wbcnwnjcrxw35z3ajw8e.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1008",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1008",
    "slug": "console-table-fhd-cst-1008-fhd-cst-1008",
    "sku": "FHD-CST-1008",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 390.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 390.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 351.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 312.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/pires5wu0g0la8jcijbj.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1009",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1009",
    "slug": "console-table-fhd-cst-1009-fhd-cst-1009",
    "sku": "FHD-CST-1009",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 392.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 392.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 353.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 314.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/mbvlwmpp1eiqcjuhlhzd.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1010",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1010",
    "slug": "console-table-fhd-cst-1010-fhd-cst-1010",
    "sku": "FHD-CST-1010",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 395.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 395.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 355.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 316.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522184/wiezfks3xayjqbdzux3x.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1011",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1011",
    "slug": "console-table-fhd-cst-1011-fhd-cst-1011",
    "sku": "FHD-CST-1011",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 397.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 397.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 357.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 318.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/kmfexgp1i5d9fj0soyy8.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1012",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1012",
    "slug": "console-table-fhd-cst-1012-fhd-cst-1012",
    "sku": "FHD-CST-1012",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 400.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 400.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 360.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 320.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/bywdeiknmawv5ftztjie.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1013",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1013",
    "slug": "console-table-fhd-cst-1013-fhd-cst-1013",
    "sku": "FHD-CST-1013",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 402.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 402.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 362.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 322.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/xc8ip53iewthw95eqmqo.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1014",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1014",
    "slug": "console-table-fhd-cst-1014-fhd-cst-1014",
    "sku": "FHD-CST-1014",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 405.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 405.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 364.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 324.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/rkidp2rj38hn3ob95vms.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1015",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1015",
    "slug": "console-table-fhd-cst-1015-fhd-cst-1015",
    "sku": "FHD-CST-1015",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 320.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 320.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 288.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 256.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/keuyxm8mdmzdgu6vzoyi.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1016",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1016",
    "slug": "console-table-fhd-cst-1016-fhd-cst-1016",
    "sku": "FHD-CST-1016",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 322.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 322.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 290.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 258.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/e03tykqfioozhzgqsrvx.jpg"
    ],
    "specifications": {
      "Dimensions": "38 x 13 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1017",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1017",
    "slug": "console-table-fhd-cst-1017-fhd-cst-1017",
    "sku": "FHD-CST-1017",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 325.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 325.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 292.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 260.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/s7qqwcwxoxyrdhngi2x0.jpg"
    ],
    "specifications": {
      "Dimensions": "38 x 13 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1018",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1018",
    "slug": "console-table-fhd-cst-1018-fhd-cst-1018",
    "sku": "FHD-CST-1018",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 327.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 327.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 294.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 262.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/pjtcbljgxsfhmv3evr08.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 13 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1019",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1019",
    "slug": "console-table-fhd-cst-1019-fhd-cst-1019",
    "sku": "FHD-CST-1019",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 330.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 330.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 297.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 264.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/kks6qeivcli2rfxsm57g.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1020",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1020",
    "slug": "console-table-fhd-cst-1020-fhd-cst-1020",
    "sku": "FHD-CST-1020",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 332.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 332.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 299.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 266.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522259/fpgve81jflpxj90uwrko.jpg"
    ],
    "specifications": {
      "Dimensions": "38 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1021",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1021",
    "slug": "console-table-fhd-cst-1021-fhd-cst-1021",
    "sku": "FHD-CST-1021",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 335.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 335.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 301.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 268.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/lj3udswijxuxjj0jk2zb.jpg"
    ],
    "specifications": {
      "Dimensions": "38 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1022",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1022",
    "slug": "console-table-fhd-cst-1022-fhd-cst-1022",
    "sku": "FHD-CST-1022",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 337.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 337.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 303.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 270.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/ysr49bijowl9yap7tewl.jpg"
    ],
    "specifications": {
      "Dimensions": "38 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1023",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1023",
    "slug": "console-table-fhd-cst-1023-fhd-cst-1023",
    "sku": "FHD-CST-1023",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 340.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 340.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 306.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 272.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/rnymiaxcr4tbsifqlqtx.jpg"
    ],
    "specifications": {
      "Dimensions": "42 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1024",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1024",
    "slug": "console-table-fhd-cst-1024-fhd-cst-1024",
    "sku": "FHD-CST-1024",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 342.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 342.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 308.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 274.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522235/fd20wgv5yannzev55j0s.jpg"
    ],
    "specifications": {
      "Dimensions": "42 x 16 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1025",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1025",
    "slug": "console-table-fhd-cst-1025-fhd-cst-1025",
    "sku": "FHD-CST-1025",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 345.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 345.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 310.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 276.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/i3e6jegrifwy2y8y5rxf.jpg"
    ],
    "specifications": {
      "Dimensions": "Custom Dimensions",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1026",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1026",
    "slug": "console-table-fhd-cst-1026-fhd-cst-1026",
    "sku": "FHD-CST-1026",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 347.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 347.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 312.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 278.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522289/xawmfwn7buu2ueveposj.jpg"
    ],
    "specifications": {
      "Dimensions": "Custom Dimensions",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1027",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1027",
    "slug": "console-table-fhd-cst-1027-fhd-cst-1027",
    "sku": "FHD-CST-1027",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 350.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 350.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 315.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 280.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/wkjistphsh0sjvogmvyd.jpg"
    ],
    "specifications": {
      "Dimensions": "40 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1028",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1028",
    "slug": "console-table-fhd-cst-1028-fhd-cst-1028",
    "sku": "FHD-CST-1028",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 352.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 352.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 317.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 282.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/q6xcf8h6sutr0hkznasa.jpg"
    ],
    "specifications": {
      "Dimensions": "42 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1029",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1029",
    "slug": "console-table-fhd-cst-1029-fhd-cst-1029",
    "sku": "FHD-CST-1029",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 355.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 355.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 319.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 284.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522287/p421uf0jtjhz9yfgwo28.jpg"
    ],
    "specifications": {
      "Dimensions": "44 x 14 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-CST-1030",
    "category_id": "449157dd-716b-4ef9-8c72-1df6604729af",
    "name": "Console Table FHD-CST-1030",
    "slug": "console-table-fhd-cst-1030-fhd-cst-1030",
    "sku": "FHD-CST-1030",
    "description": "Sculptural console table designed for entryways and living rooms, highlighted by slender silhouettes and organic wood textures.",
    "base_price": 357.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 357.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 321.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 286.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/yukxrd0wkbwypcn9qjlx.jpg"
    ],
    "specifications": {
      "Dimensions": "44 x 14 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Console Tables",
      "Subcategory": "console-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1001",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1001",
    "slug": "bookshelves-&-storage-fhd-bs-1001-fhd-bs-1001",
    "sku": "FHD-BS-1001",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 412.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 412.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 371.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 330.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/a6knrsuemunxp0fmfvhh.jpg"
    ],
    "specifications": {
      "Dimensions": "26 x 13 x 38 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1002",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1002",
    "slug": "bookshelves-&-storage-fhd-bs-1002-fhd-bs-1002",
    "sku": "FHD-BS-1002",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 415.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 415.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 373.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 332.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522254/gzb8whgu0gsqtqjw7env.jpg"
    ],
    "specifications": {
      "Dimensions": "21 x 11 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1013",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1013",
    "slug": "bookshelves-&-storage-fhd-bs-1013-fhd-bs-1013",
    "sku": "FHD-BS-1013",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 442.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 442.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 398.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 354.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/ohbypgqcqwcjglnrqnra.jpg"
    ],
    "specifications": {
      "Dimensions": "Custom Dimensions",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1014",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1014",
    "slug": "bookshelves-&-storage-fhd-bs-1014-fhd-bs-1014",
    "sku": "FHD-BS-1014",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 445.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 445.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 400.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 356.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/y123eb6cxrp53stk4zld.jpg"
    ],
    "specifications": {
      "Dimensions": "Custom Dimensions",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1015",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1015",
    "slug": "bookshelves-&-storage-fhd-bs-1015-fhd-bs-1015",
    "sku": "FHD-BS-1015",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 360.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 360.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 324.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 288.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/vy0m99kaqck52msabaq4.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 14 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1016",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1016",
    "slug": "bookshelves-&-storage-fhd-bs-1016-fhd-bs-1016",
    "sku": "FHD-BS-1016",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 362.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 362.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 326.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 290.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522197/lyjcfyqostntfeo0lqrd.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1017",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1017",
    "slug": "bookshelves-&-storage-fhd-bs-1017-fhd-bs-1017",
    "sku": "FHD-BS-1017",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 365.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 365.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 328.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 292.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/y72c5uuhwdij8wbded3o.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 14 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1018",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1018",
    "slug": "bookshelves-&-storage-fhd-bs-1018-fhd-bs-1018",
    "sku": "FHD-BS-1018",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 367.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 367.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 330.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 294.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/c8ltf0a7lrzbhbf0griq.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1019",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1019",
    "slug": "bookshelves-&-storage-fhd-bs-1019-fhd-bs-1019",
    "sku": "FHD-BS-1019",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 370.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 370.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 333.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 296.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/fqoy53cdvj6uldzaj12b.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 14 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1020",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1020",
    "slug": "bookshelves-&-storage-fhd-bs-1020-fhd-bs-1020",
    "sku": "FHD-BS-1020",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 372.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 372.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 335.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 298.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/kjdgtzrtxoefbz3bq8m2.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 14 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1021",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1021",
    "slug": "bookshelves-&-storage-fhd-bs-1021-fhd-bs-1021",
    "sku": "FHD-BS-1021",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 375.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 375.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 337.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 300.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/csbbnmiy4hzyksh0anas.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 38 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1022",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1022",
    "slug": "bookshelves-&-storage-fhd-bs-1022-fhd-bs-1022",
    "sku": "FHD-BS-1022",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 377.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 377.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 339.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 302.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/ivks0dggftm52ktpxf0p.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 38 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1023",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1023",
    "slug": "bookshelves-&-storage-fhd-bs-1023-fhd-bs-1023",
    "sku": "FHD-BS-1023",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 380.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 380.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 342.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 304.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/oa2toaxsf82lrs22sh3g.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 38 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1024",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1024",
    "slug": "bookshelves-&-storage-fhd-bs-1024-fhd-bs-1024",
    "sku": "FHD-BS-1024",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 382.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 382.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 344.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 306.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/qw6cdjw6mxdsr7wmehdd.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 38 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1025",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1025",
    "slug": "bookshelves-&-storage-fhd-bs-1025-fhd-bs-1025",
    "sku": "FHD-BS-1025",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 385.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 385.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 346.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 308.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/fzgupjrsvqfew3gcjdzt.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 38 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1026",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1026",
    "slug": "bookshelves-&-storage-fhd-bs-1026-fhd-bs-1026",
    "sku": "FHD-BS-1026",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 387.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 387.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 348.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 310.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/oj0icttnl3kzntn2dngy.jpg"
    ],
    "specifications": {
      "Dimensions": "22 x 14 x 38 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1029",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1029",
    "slug": "bookshelves-&-storage-fhd-bs-1029-fhd-bs-1029",
    "sku": "FHD-BS-1029",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 395.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 395.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 355.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 316.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/vl7tezpgkazcx03kywuf.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1030",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1030",
    "slug": "bookshelves-&-storage-fhd-bs-1030-fhd-bs-1030",
    "sku": "FHD-BS-1030",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 397.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 397.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 357.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 318.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/abhkd2lr2mqlwhoinkqd.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1031",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1031",
    "slug": "bookshelves-&-storage-fhd-bs-1031-fhd-bs-1031",
    "sku": "FHD-BS-1031",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 400.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 400.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 360.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 320.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/u8xppweuswi5manwd0zs.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1032",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1032",
    "slug": "bookshelves-&-storage-fhd-bs-1032-fhd-bs-1032",
    "sku": "FHD-BS-1032",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 402.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 402.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 362.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 322.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/ofeonkthoqa1u3nhdnq0.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1033",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1033",
    "slug": "bookshelves-&-storage-fhd-bs-1033-fhd-bs-1033",
    "sku": "FHD-BS-1033",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 405.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 405.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 364.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 324.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/mkeexkgs9emlt2bto3v1.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1034",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1034",
    "slug": "bookshelves-&-storage-fhd-bs-1034-fhd-bs-1034",
    "sku": "FHD-BS-1034",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 407.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 407.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 366.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 326.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/uenxkybmxxsft7jo2jxp.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1035",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1035",
    "slug": "bookshelves-&-storage-fhd-bs-1035-fhd-bs-1035",
    "sku": "FHD-BS-1035",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 410.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 410.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 369.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 328.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/naqoex992vqb5w16muje.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1036",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1036",
    "slug": "bookshelves-&-storage-fhd-bs-1036-fhd-bs-1036",
    "sku": "FHD-BS-1036",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 412.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 412.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 371.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 330.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/p8hwukl3kom5rps3yrsg.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1037",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1037",
    "slug": "bookshelves-&-storage-fhd-bs-1037-fhd-bs-1037",
    "sku": "FHD-BS-1037",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 415.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 415.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 373.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 332.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/yyxr6vtr4ppcra0cadb4.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1038",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1038",
    "slug": "bookshelves-&-storage-fhd-bs-1038-fhd-bs-1038",
    "sku": "FHD-BS-1038",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 417.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 417.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 375.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 334.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/uey3cv93sm5nenfkkwve.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1039",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1039",
    "slug": "bookshelves-&-storage-fhd-bs-1039-fhd-bs-1039",
    "sku": "FHD-BS-1039",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 420.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 420.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 378.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 336.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/vhwlhzcgkr3colxbfvih.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1040",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1040",
    "slug": "bookshelves-&-storage-fhd-bs-1040-fhd-bs-1040",
    "sku": "FHD-BS-1040",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 422.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 422.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 380.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 338.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522186/trbfsc5jxvgpn9c3wwsy.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1041",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1041",
    "slug": "bookshelves-&-storage-fhd-bs-1041-fhd-bs-1041",
    "sku": "FHD-BS-1041",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 425.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 425.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 382.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 340.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/zy1p3bbnicswq5wfwzdf.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1042",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1042",
    "slug": "bookshelves-&-storage-fhd-bs-1042-fhd-bs-1042",
    "sku": "FHD-BS-1042",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 427.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 427.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 384.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 342.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/unvomozo2dh69sun14l9.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1043",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1043",
    "slug": "bookshelves-&-storage-fhd-bs-1043-fhd-bs-1043",
    "sku": "FHD-BS-1043",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 430.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 430.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 387.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 344.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522283/xmvn8ocnmyzyynlka3vm.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1044",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1044",
    "slug": "bookshelves-&-storage-fhd-bs-1044-fhd-bs-1044",
    "sku": "FHD-BS-1044",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 432.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 432.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 389.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 346.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/ojx1y45qf5xk5cozyvlh.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1045",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1045",
    "slug": "bookshelves-&-storage-fhd-bs-1045-fhd-bs-1045",
    "sku": "FHD-BS-1045",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 435.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 435.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 391.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 348.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/er606focc1waylwx5jvv.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1046",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1046",
    "slug": "bookshelves-&-storage-fhd-bs-1046-fhd-bs-1046",
    "sku": "FHD-BS-1046",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 437.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 437.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 393.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 350.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/r17ki3r7toped9cl4j4v.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1047",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1047",
    "slug": "bookshelves-&-storage-fhd-bs-1047-fhd-bs-1047",
    "sku": "FHD-BS-1047",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 440.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 440.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 396.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 352.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/lnuz2ev37rxar9evwwuw.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1048",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1048",
    "slug": "bookshelves-&-storage-fhd-bs-1048-fhd-bs-1048",
    "sku": "FHD-BS-1048",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 442.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 442.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 398.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 354.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/ov20zjiuyzmw2nigkdkc.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1049",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1049",
    "slug": "bookshelves-&-storage-fhd-bs-1049-fhd-bs-1049",
    "sku": "FHD-BS-1049",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 445.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 445.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 400.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 356.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/fss4tsctlvcj0dy9yjml.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1050",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1050",
    "slug": "bookshelves-&-storage-fhd-bs-1050-fhd-bs-1050",
    "sku": "FHD-BS-1050",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 360.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 360.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 324.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 288.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/rfg9yxnyjxru7gc8p9sm.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1051",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1051",
    "slug": "bookshelves-&-storage-fhd-bs-1051-fhd-bs-1051",
    "sku": "FHD-BS-1051",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 362.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 362.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 326.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 290.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/efenhzgnktr3qci49oi6.jpg"
    ],
    "specifications": {
      "Dimensions": "24 x 12 x 34 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1052",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1052",
    "slug": "bookshelves-&-storage-fhd-bs-1052-fhd-bs-1052",
    "sku": "FHD-BS-1052",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 365.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 365.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 328.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 292.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522188/gehziy6yjv9cetrcoz96.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 11 x 29 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1053",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1053",
    "slug": "bookshelves-&-storage-fhd-bs-1053-fhd-bs-1053",
    "sku": "FHD-BS-1053",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 367.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 367.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 330.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 294.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/xiz3dkktwpjxawpciwpj.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 43 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1054",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1054",
    "slug": "bookshelves-&-storage-fhd-bs-1054-fhd-bs-1054",
    "sku": "FHD-BS-1054",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 370.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 370.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 333.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 296.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/zkx5vylxlcfb2eold3kg.jpg"
    ],
    "specifications": {
      "Dimensions": "19 x 15 x 47 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1055",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1055",
    "slug": "bookshelves-&-storage-fhd-bs-1055-fhd-bs-1055",
    "sku": "FHD-BS-1055",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 372.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 372.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 335.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 298.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/iw2gdqne444xua7rfwfo.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 10 x 28 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1056",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1056",
    "slug": "bookshelves-&-storage-fhd-bs-1056-fhd-bs-1056",
    "sku": "FHD-BS-1056",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 375.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 375.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 337.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 300.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522197/bcsj3n0v8c4fmjgkzh80.jpg"
    ],
    "specifications": {
      "Dimensions": "15 x 12 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1057",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1057",
    "slug": "bookshelves-&-storage-fhd-bs-1057-fhd-bs-1057",
    "sku": "FHD-BS-1057",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 377.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 377.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 339.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 302.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/aoa2bibyvart9msjfisn.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 10 x 28 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1058",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1058",
    "slug": "bookshelves-&-storage-fhd-bs-1058-fhd-bs-1058",
    "sku": "FHD-BS-1058",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 380.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 380.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 342.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 304.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/ezlotoucxba2ziqsodu0.jpg"
    ],
    "specifications": {
      "Dimensions": "15 x 12 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1059",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1059",
    "slug": "bookshelves-&-storage-fhd-bs-1059-fhd-bs-1059",
    "sku": "FHD-BS-1059",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 382.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 382.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 344.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 306.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522184/vyflbhte6lv0s4pr1zbo.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 42 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1060",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1060",
    "slug": "bookshelves-&-storage-fhd-bs-1060-fhd-bs-1060",
    "sku": "FHD-BS-1060",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 385.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 385.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 346.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 308.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/ixl7smmm1y5ztk1p5ltg.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1061",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1061",
    "slug": "bookshelves-&-storage-fhd-bs-1061-fhd-bs-1061",
    "sku": "FHD-BS-1061",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 387.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 387.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 348.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 310.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/tdgy18at8tur4mcldhkg.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 32 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1062",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1062",
    "slug": "bookshelves-&-storage-fhd-bs-1062-fhd-bs-1062",
    "sku": "FHD-BS-1062",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 390.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 390.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 351.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 312.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/hbpedi5yktqktz0dwdqt.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 x 43 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1063",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1063",
    "slug": "bookshelves-&-storage-fhd-bs-1063-fhd-bs-1063",
    "sku": "FHD-BS-1063",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 392.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 392.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 353.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 314.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/xv3pb44k8mrvzgzna21g.jpg"
    ],
    "specifications": {
      "Dimensions": "15 x 12 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1064",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1064",
    "slug": "bookshelves-&-storage-fhd-bs-1064-fhd-bs-1064",
    "sku": "FHD-BS-1064",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 395.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 395.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 355.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 316.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/bqpxaequsbt9hcrpwcoz.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1065",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1065",
    "slug": "bookshelves-&-storage-fhd-bs-1065-fhd-bs-1065",
    "sku": "FHD-BS-1065",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 397.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 397.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 357.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 318.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/tfqe8scwi0vzy2xxgqat.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 36 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1066",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1066",
    "slug": "bookshelves-&-storage-fhd-bs-1066-fhd-bs-1066",
    "sku": "FHD-BS-1066",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 400.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 400.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 360.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 320.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522235/vx1phv8rljct8nhpttqc.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 40 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1067",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1067",
    "slug": "bookshelves-&-storage-fhd-bs-1067-fhd-bs-1067",
    "sku": "FHD-BS-1067",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 402.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 402.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 362.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 322.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522284/qaoflogiab9w4brmb7bx.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 40 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1068",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1068",
    "slug": "bookshelves-&-storage-fhd-bs-1068-fhd-bs-1068",
    "sku": "FHD-BS-1068",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 405.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 405.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 364.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 324.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/lprsx52ogpilyoayr5an.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 40 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1069",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1069",
    "slug": "bookshelves-&-storage-fhd-bs-1069-fhd-bs-1069",
    "sku": "FHD-BS-1069",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 407.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 407.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 366.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 326.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/y9vrlgvaz3kybwandzhl.jpg"
    ],
    "specifications": {
      "Dimensions": "33 x 16 x 35 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1070",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1070",
    "slug": "bookshelves-&-storage-fhd-bs-1070-fhd-bs-1070",
    "sku": "FHD-BS-1070",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 410.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 410.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 369.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 328.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/tgkoat6b9iyibq5sy3um.jpg"
    ],
    "specifications": {
      "Dimensions": "13 x 13 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1071",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1071",
    "slug": "bookshelves-&-storage-fhd-bs-1071-fhd-bs-1071",
    "sku": "FHD-BS-1071",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 412.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 412.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 371.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 330.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/vuhgrjmptvlmvaem6vr6.jpg"
    ],
    "specifications": {
      "Dimensions": "33 x 16 x 35 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-BS-1072",
    "category_id": "e1b10001-0000-0000-0000-000000000002",
    "name": "Bookshelves & Storage FHD-BS-1072",
    "slug": "bookshelves-&-storage-fhd-bs-1072-fhd-bs-1072",
    "sku": "FHD-BS-1072",
    "description": "Architectural solid wood shelving unit offering versatile open tiers, robust joinery, and minimalist display aesthetics.",
    "base_price": 415.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 415.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 373.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 332.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/bdj2skfpbrkxtbo5nc5q.jpg"
    ],
    "specifications": {
      "Dimensions": "13 x 13 x 30 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Bookshelves & Storage",
      "Subcategory": "bookshelves"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1001",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1001",
    "slug": "round-table-fhd-rt-1001-fhd-rt-1001",
    "sku": "FHD-RT-1001",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 532.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 532.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 479.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 426.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/zsgtqs6necrqmtspt0ss.jpg"
    ],
    "specifications": {
      "Dimensions": "D16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1002",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1002",
    "slug": "round-table-fhd-rt-1002-fhd-rt-1002",
    "sku": "FHD-RT-1002",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 535.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 535.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 481.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 428.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/stmsubxqfw1euk9aruax.jpg"
    ],
    "specifications": {
      "Dimensions": "D16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1003",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1003",
    "slug": "round-table-fhd-rt-1003-fhd-rt-1003",
    "sku": "FHD-RT-1003",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 537.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 537.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 483.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 430.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/vtm1bjnafi9anvahsz1f.jpg"
    ],
    "specifications": {
      "Dimensions": "D16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1004",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1004",
    "slug": "round-table-fhd-rt-1004-fhd-rt-1004",
    "sku": "FHD-RT-1004",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 540.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 540.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 486.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 432.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/m49hr8vw7zilmtqpicda.jpg"
    ],
    "specifications": {
      "Dimensions": "D16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1005",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1005",
    "slug": "round-table-fhd-rt-1005-fhd-rt-1005",
    "sku": "FHD-RT-1005",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 542.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 542.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 488.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 434.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522219/umdjzqzipvtvuqbe7oax.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1006",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1006",
    "slug": "round-table-fhd-rt-1006-fhd-rt-1006",
    "sku": "FHD-RT-1006",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 545.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 545.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 490.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 436.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522233/ksuw0hpy5b6h1cykuhnw.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1007",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1007",
    "slug": "round-table-fhd-rt-1007-fhd-rt-1007",
    "sku": "FHD-RT-1007",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 547.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 547.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 492.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 438.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/gfgsqmf8sbwsrnoioq2j.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1008",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1008",
    "slug": "round-table-fhd-rt-1008-fhd-rt-1008",
    "sku": "FHD-RT-1008",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 550.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 550.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 495.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 440.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/y55cuhmpiapslxgmmln2.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1009",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1009",
    "slug": "round-table-fhd-rt-1009-fhd-rt-1009",
    "sku": "FHD-RT-1009",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 552.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 552.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 497.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 442.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/tnltnn026mbhkpyqioin.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1010",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1010",
    "slug": "round-table-fhd-rt-1010-fhd-rt-1010",
    "sku": "FHD-RT-1010",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 555.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 555.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 499.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 444.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/d8uefjosnmglldakbyio.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1011",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1011",
    "slug": "round-table-fhd-rt-1011-fhd-rt-1011",
    "sku": "FHD-RT-1011",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 557.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 557.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 501.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 446.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522285/wdqpa5dahorsfqyh4wfq.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1012",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1012",
    "slug": "round-table-fhd-rt-1012-fhd-rt-1012",
    "sku": "FHD-RT-1012",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 560.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 560.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 504.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 448.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522282/seosknyxkhpejlzbzomq.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1013",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1013",
    "slug": "round-table-fhd-rt-1013-fhd-rt-1013",
    "sku": "FHD-RT-1013",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 562.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 562.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 506.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 450.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522207/wglmnglvamdvowfnfnyd.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1014",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1014",
    "slug": "round-table-fhd-rt-1014-fhd-rt-1014",
    "sku": "FHD-RT-1014",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 565.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 565.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 508.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 452.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/i4ihra6siud96ywulclu.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1015",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1015",
    "slug": "round-table-fhd-rt-1015-fhd-rt-1015",
    "sku": "FHD-RT-1015",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 480.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 480.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 432.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 384.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/awcui1pzlc2pkojkvoiq.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1016",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1016",
    "slug": "round-table-fhd-rt-1016-fhd-rt-1016",
    "sku": "FHD-RT-1016",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 482.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 482.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 434.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 386.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/v0b9jj2vpxkrg1nsbxhf.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1017",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1017",
    "slug": "round-table-fhd-rt-1017-fhd-rt-1017",
    "sku": "FHD-RT-1017",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 485.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 485.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 436.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 388.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/nh1n8bhgrvpgylw4z5px.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1018",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1018",
    "slug": "round-table-fhd-rt-1018-fhd-rt-1018",
    "sku": "FHD-RT-1018",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 487.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 487.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 438.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 390.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/lsvgsxq7ecojhgwzofwz.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1019",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1019",
    "slug": "round-table-fhd-rt-1019-fhd-rt-1019",
    "sku": "FHD-RT-1019",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 490.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 490.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 441.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 392.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/ced9ywx43alkfu5wt7ex.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1020",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1020",
    "slug": "round-table-fhd-rt-1020-fhd-rt-1020",
    "sku": "FHD-RT-1020",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 492.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 492.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 443.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 394.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/iw9rmtfhnpsz7bjiml98.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1021",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1021",
    "slug": "round-table-fhd-rt-1021-fhd-rt-1021",
    "sku": "FHD-RT-1021",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 495.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 495.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 445.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 396.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/uezpjl5pmsd82vi1hyoh.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1022",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1022",
    "slug": "round-table-fhd-rt-1022-fhd-rt-1022",
    "sku": "FHD-RT-1022",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 497.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 497.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 447.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 398.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/q4ofzudcwiyxsnxg0rng.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1023",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1023",
    "slug": "round-table-fhd-rt-1023-fhd-rt-1023",
    "sku": "FHD-RT-1023",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 500.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 500.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 450.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 400.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/mbjhhzlh3uajg92appgk.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1024",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1024",
    "slug": "round-table-fhd-rt-1024-fhd-rt-1024",
    "sku": "FHD-RT-1024",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 502.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 502.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 452.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 402.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/oqewpnjeknd02nyylkc5.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1025",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1025",
    "slug": "round-table-fhd-rt-1025-fhd-rt-1025",
    "sku": "FHD-RT-1025",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 505.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 505.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 454.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 404.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/duzrhishaksgb6m4gz2i.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1026",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1026",
    "slug": "round-table-fhd-rt-1026-fhd-rt-1026",
    "sku": "FHD-RT-1026",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 507.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 507.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 456.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 406.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/dp4kfcl6ayu5yvlltskw.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1027",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1027",
    "slug": "round-table-fhd-rt-1027-fhd-rt-1027",
    "sku": "FHD-RT-1027",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 510.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 510.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 459.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 408.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/z1smqar2sqlvgd3r38bc.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1028",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1028",
    "slug": "round-table-fhd-rt-1028-fhd-rt-1028",
    "sku": "FHD-RT-1028",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 512.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 512.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 461.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 410.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522187/b5zxglb21i5xgevas3nq.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1029",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1029",
    "slug": "round-table-fhd-rt-1029-fhd-rt-1029",
    "sku": "FHD-RT-1029",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 515.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 515.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 463.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 412.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522254/vbctbrelvhkv31al2tml.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1030",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1030",
    "slug": "round-table-fhd-rt-1030-fhd-rt-1030",
    "sku": "FHD-RT-1030",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 517.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 517.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 465.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 414.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/ar2pv4p6ofx6tyb5tlsu.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1031",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1031",
    "slug": "round-table-fhd-rt-1031-fhd-rt-1031",
    "sku": "FHD-RT-1031",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 520.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 520.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 468.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 416.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522217/x2jbehvawpmpkegme7us.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1032",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1032",
    "slug": "round-table-fhd-rt-1032-fhd-rt-1032",
    "sku": "FHD-RT-1032",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 522.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 522.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 470.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 418.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522250/mzn5zro2nsh3vuywck0n.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1033",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1033",
    "slug": "round-table-fhd-rt-1033-fhd-rt-1033",
    "sku": "FHD-RT-1033",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 525.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 525.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 472.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 420.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522251/k9r9uimxfq4sroziinb3.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1034",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1034",
    "slug": "round-table-fhd-rt-1034-fhd-rt-1034",
    "sku": "FHD-RT-1034",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 527.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 527.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 474.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 422.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/qf1lwmurv7z0yubrlenl.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1035",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1035",
    "slug": "round-table-fhd-rt-1035-fhd-rt-1035",
    "sku": "FHD-RT-1035",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 530.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 530.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 477.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 424.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/cqif5ojtzdinnx3gqwyo.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1036",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1036",
    "slug": "round-table-fhd-rt-1036-fhd-rt-1036",
    "sku": "FHD-RT-1036",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 532.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 532.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 479.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 426.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522266/plkic7rpzciketwilw03.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1037",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1037",
    "slug": "round-table-fhd-rt-1037-fhd-rt-1037",
    "sku": "FHD-RT-1037",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 535.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 535.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 481.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 428.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522192/b234jicrvcguxwg5bxeq.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1038",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1038",
    "slug": "round-table-fhd-rt-1038-fhd-rt-1038",
    "sku": "FHD-RT-1038",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 537.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 537.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 483.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 430.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522185/tnrpmibxweg2kujfxqxp.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1039",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1039",
    "slug": "round-table-fhd-rt-1039-fhd-rt-1039",
    "sku": "FHD-RT-1039",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 540.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 540.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 486.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 432.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/wcje91aqqd4eber1sasi.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1040",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1040",
    "slug": "round-table-fhd-rt-1040-fhd-rt-1040",
    "sku": "FHD-RT-1040",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 542.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 542.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 488.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 434.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/krohvfdfmpt67frzkpsg.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1041",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1041",
    "slug": "round-table-fhd-rt-1041-fhd-rt-1041",
    "sku": "FHD-RT-1041",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 545.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 545.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 490.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 436.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/p2uoh4ushncogdvfalxc.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1042",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1042",
    "slug": "round-table-fhd-rt-1042-fhd-rt-1042",
    "sku": "FHD-RT-1042",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 547.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 547.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 492.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 438.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/jyv0vzuemgcsrn8bmlii.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1043",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1043",
    "slug": "round-table-fhd-rt-1043-fhd-rt-1043",
    "sku": "FHD-RT-1043",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 550.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 550.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 495.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 440.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/oawvbztky2lkeoqrcaba.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1044",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1044",
    "slug": "round-table-fhd-rt-1044-fhd-rt-1044",
    "sku": "FHD-RT-1044",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 552.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 552.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 497.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 442.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/yidlu7im4lpyks0sreot.jpg"
    ],
    "specifications": {
      "Dimensions": "10 x 10 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1045",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1045",
    "slug": "round-table-fhd-rt-1045-fhd-rt-1045",
    "sku": "FHD-RT-1045",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 555.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 555.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 499.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 444.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/dduqyoqwx14ca1julkr4.jpg"
    ],
    "specifications": {
      "Dimensions": "10 x 10 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1046",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1046",
    "slug": "round-table-fhd-rt-1046-fhd-rt-1046",
    "sku": "FHD-RT-1046",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 557.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 557.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 501.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 446.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/bahfb5k2uexojghmizk5.jpg"
    ],
    "specifications": {
      "Dimensions": "10 x 10 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1047",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1047",
    "slug": "round-table-fhd-rt-1047-fhd-rt-1047",
    "sku": "FHD-RT-1047",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 560.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 560.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 504.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 448.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/afazhpyjmj6sue6z5nu4.jpg"
    ],
    "specifications": {
      "Dimensions": "10 x 10 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1048",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1048",
    "slug": "round-table-fhd-rt-1048-fhd-rt-1048",
    "sku": "FHD-RT-1048",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 562.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 562.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 506.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 450.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/ecshe9uohbya7t0vfgaf.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1049",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1049",
    "slug": "round-table-fhd-rt-1049-fhd-rt-1049",
    "sku": "FHD-RT-1049",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 565.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 565.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 508.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 452.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522251/nnsoweaw6mevfsfkjx41.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1050",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1050",
    "slug": "round-table-fhd-rt-1050-fhd-rt-1050",
    "sku": "FHD-RT-1050",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 480.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 480.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 432.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 384.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522264/ssnmcjyreo6yu3szmpwb.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1051",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1051",
    "slug": "round-table-fhd-rt-1051-fhd-rt-1051",
    "sku": "FHD-RT-1051",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 482.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 482.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 434.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 386.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/eufnboyf1zxln7pnwvqk.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1052",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1052",
    "slug": "round-table-fhd-rt-1052-fhd-rt-1052",
    "sku": "FHD-RT-1052",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 485.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 485.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 436.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 388.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522225/vdjuhlo99yflu12tv6my.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1053",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1053",
    "slug": "round-table-fhd-rt-1053-fhd-rt-1053",
    "sku": "FHD-RT-1053",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 487.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 487.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 438.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 390.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/iv4yqe4pjnwxc9zjupfa.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1054",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1054",
    "slug": "round-table-fhd-rt-1054-fhd-rt-1054",
    "sku": "FHD-RT-1054",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 490.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 490.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 441.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 392.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522286/gtcnmxvj7dtf4lokthuj.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1055",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1055",
    "slug": "round-table-fhd-rt-1055-fhd-rt-1055",
    "sku": "FHD-RT-1055",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 492.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 492.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 443.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 394.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522289/bqyzl8cf7zhzkdokbt4a.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1056",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1056",
    "slug": "round-table-fhd-rt-1056-fhd-rt-1056",
    "sku": "FHD-RT-1056",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 495.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 495.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 445.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 396.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522273/c0n2k9w4szvqpowywtff.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1057",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1057",
    "slug": "round-table-fhd-rt-1057-fhd-rt-1057",
    "sku": "FHD-RT-1057",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 497.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 497.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 447.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 398.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/ranc7vvplkhbh6rfzgon.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1058",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1058",
    "slug": "round-table-fhd-rt-1058-fhd-rt-1058",
    "sku": "FHD-RT-1058",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 500.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 500.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 450.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 400.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/jisnnnuzofzhesm9r9yy.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 12 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1059",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1059",
    "slug": "round-table-fhd-rt-1059-fhd-rt-1059",
    "sku": "FHD-RT-1059",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 502.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 502.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 452.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 402.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522203/vqbdj452jfgbcgcwd6iq.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 18 x 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1060",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1060",
    "slug": "round-table-fhd-rt-1060-fhd-rt-1060",
    "sku": "FHD-RT-1060",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 505.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 505.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 454.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 404.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522233/xs7waxmt6nvn82pbeyzl.jpg"
    ],
    "specifications": {
      "Dimensions": "18 x 18 x 22.5 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1061",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1061",
    "slug": "round-table-fhd-rt-1061-fhd-rt-1061",
    "sku": "FHD-RT-1061",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 507.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 507.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 456.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 406.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/phzlgh3mb0maxutkqler.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1062",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1062",
    "slug": "round-table-fhd-rt-1062-fhd-rt-1062",
    "sku": "FHD-RT-1062",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 510.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 510.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 459.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 408.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/qnqmtptykptgswujhymb.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1063",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1063",
    "slug": "round-table-fhd-rt-1063-fhd-rt-1063",
    "sku": "FHD-RT-1063",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 512.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 512.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 461.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 410.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/pz25uxmjkilsvekmej6t.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1064",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1064",
    "slug": "round-table-fhd-rt-1064-fhd-rt-1064",
    "sku": "FHD-RT-1064",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 515.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 515.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 463.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 412.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522186/dk25zau3wxlvs0brx4yf.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1065",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1065",
    "slug": "round-table-fhd-rt-1065-fhd-rt-1065",
    "sku": "FHD-RT-1065",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 517.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 517.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 465.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 414.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/a9qwp4rzdkovvmc96hdx.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1066",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1066",
    "slug": "round-table-fhd-rt-1066-fhd-rt-1066",
    "sku": "FHD-RT-1066",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 520.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 520.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 468.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 416.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/ikoejke7u2trnxypkv7q.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1067",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1067",
    "slug": "round-table-fhd-rt-1067-fhd-rt-1067",
    "sku": "FHD-RT-1067",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 522.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 522.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 470.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 418.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522256/fdkoxjgrtg5cwpbt5ngd.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1068",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1068",
    "slug": "round-table-fhd-rt-1068-fhd-rt-1068",
    "sku": "FHD-RT-1068",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 525.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 525.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 472.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 420.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522190/b4dwubwwtimxduize4jj.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1069",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1069",
    "slug": "round-table-fhd-rt-1069-fhd-rt-1069",
    "sku": "FHD-RT-1069",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 527.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 527.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 474.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 422.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/yqswzywszvz3hl0wm2mi.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1070",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1070",
    "slug": "round-table-fhd-rt-1070-fhd-rt-1070",
    "sku": "FHD-RT-1070",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 530.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 530.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 477.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 424.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522221/qprtnhyvf2oyzm3jzt2r.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1071",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1071",
    "slug": "round-table-fhd-rt-1071-fhd-rt-1071",
    "sku": "FHD-RT-1071",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 532.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 532.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 479.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 426.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522274/he0gvgvagqkjvrtnrgca.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1072",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1072",
    "slug": "round-table-fhd-rt-1072-fhd-rt-1072",
    "sku": "FHD-RT-1072",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 535.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 535.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 481.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 428.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522263/mlpzi4qnwnspv2dpofv0.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1073",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1073",
    "slug": "round-table-fhd-rt-1073-fhd-rt-1073",
    "sku": "FHD-RT-1073",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 537.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 537.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 483.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 430.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522261/hfgzv1lzlys46f96froe.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1074",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1074",
    "slug": "round-table-fhd-rt-1074-fhd-rt-1074",
    "sku": "FHD-RT-1074",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 540.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 540.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 486.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 432.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522217/i53xnerrwibvfqrztqa7.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1075",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1075",
    "slug": "round-table-fhd-rt-1075-fhd-rt-1075",
    "sku": "FHD-RT-1075",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 542.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 542.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 488.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 434.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522190/lernqbveq9k8jxhdpgjz.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1076",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1076",
    "slug": "round-table-fhd-rt-1076-fhd-rt-1076",
    "sku": "FHD-RT-1076",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 545.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 545.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 490.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 436.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/pltfqydpz4viajkntklf.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 16 x 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1077",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1077",
    "slug": "round-table-fhd-rt-1077-fhd-rt-1077",
    "sku": "FHD-RT-1077",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 547.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 547.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 492.75
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 438.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/z1oitybiwwks9nti6pwz.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1078",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1078",
    "slug": "round-table-fhd-rt-1078-fhd-rt-1078",
    "sku": "FHD-RT-1078",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 550.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 550.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 495.0
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 440.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522269/ewjoqx2un2regejk6ylo.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1079",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1079",
    "slug": "round-table-fhd-rt-1079-fhd-rt-1079",
    "sku": "FHD-RT-1079",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 552.5,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 552.5
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 497.25
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 442.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/sclswmwel1zqhf2opx2z.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-RT-1080",
    "category_id": "e1b10001-0000-0000-0000-000000000003",
    "name": "Round Table FHD-RT-1080",
    "slug": "round-table-fhd-rt-1080-fhd-rt-1080",
    "sku": "FHD-RT-1080",
    "description": "Graceful round wooden table featuring handcrafted pedestal base and tactile circular surface for conversational dining or coffee settings.",
    "base_price": 555.0,
    "moq": 5,
    "bulk_tiers": [
      {
        "min_qty": 5,
        "max_qty": 15,
        "unit_price": 555.0
      },
      {
        "min_qty": 16,
        "max_qty": 40,
        "unit_price": 499.5
      },
      {
        "min_qty": 41,
        "max_qty": null,
        "unit_price": 444.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/qyfzfm0bxlq643ujtcwe.jpg"
    ],
    "specifications": {
      "Dimensions": "14 x 14 x 23 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Round Tables",
      "Subcategory": "round-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1001",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1001",
    "slug": "side-&-accent-table-fhd-st-1001-fhd-st-1001",
    "sku": "FHD-ST-1001",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 217.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 217.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 195.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 174.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/t5mnop522lxo5mro8jcv.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1002",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1002",
    "slug": "side-&-accent-table-fhd-st-1002-fhd-st-1002",
    "sku": "FHD-ST-1002",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 220.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 220.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 198.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 176.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522215/svjgszf5zlshid0rhht1.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1003",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1003",
    "slug": "side-&-accent-table-fhd-st-1003-fhd-st-1003",
    "sku": "FHD-ST-1003",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 222.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 222.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 200.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 178.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/ptoxck3wgnpc6ipxngam.jpg"
    ],
    "specifications": {
      "Dimensions": "15 X 15 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1004",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1004",
    "slug": "side-&-accent-table-fhd-st-1004-fhd-st-1004",
    "sku": "FHD-ST-1004",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 225.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 225.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 202.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 180.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522209/vcuh9nkitelpvssokiss.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1005",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1005",
    "slug": "side-&-accent-table-fhd-st-1005-fhd-st-1005",
    "sku": "FHD-ST-1005",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 227.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 227.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 204.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 182.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/gq9dr48fg80g6diw2r0l.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1006",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1006",
    "slug": "side-&-accent-table-fhd-st-1006-fhd-st-1006",
    "sku": "FHD-ST-1006",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 230.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 230.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 207.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 184.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522255/yn0ylwr32nrororgt185.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1007",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1007",
    "slug": "side-&-accent-table-fhd-st-1007-fhd-st-1007",
    "sku": "FHD-ST-1007",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 232.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 232.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 209.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 186.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/tbsqqjv9mhdunbuipvmb.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1008",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1008",
    "slug": "side-&-accent-table-fhd-st-1008-fhd-st-1008",
    "sku": "FHD-ST-1008",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 235.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 235.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 211.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 188.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522268/e2q0cdpeclpb0hvimzwy.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1009",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1009",
    "slug": "side-&-accent-table-fhd-st-1009-fhd-st-1009",
    "sku": "FHD-ST-1009",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 237.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 237.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 213.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 190.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/ydfighdsfc9ovchmgrwk.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1010",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1010",
    "slug": "side-&-accent-table-fhd-st-1010-fhd-st-1010",
    "sku": "FHD-ST-1010",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 240.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 240.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 216.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 192.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522226/l1ldydydu4brikqxdhly.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1011",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1011",
    "slug": "side-&-accent-table-fhd-st-1011-fhd-st-1011",
    "sku": "FHD-ST-1011",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 242.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 242.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 218.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 194.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/xn3ozu8xutuqevedafu2.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1012",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1012",
    "slug": "side-&-accent-table-fhd-st-1012-fhd-st-1012",
    "sku": "FHD-ST-1012",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 245.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 245.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 220.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 196.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522254/stvfbqvv9bfiqvx0zors.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1013",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1013",
    "slug": "side-&-accent-table-fhd-st-1013-fhd-st-1013",
    "sku": "FHD-ST-1013",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 247.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 247.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 222.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 198.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/wlqzoxzmzgqnnwmjqwbr.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1014",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1014",
    "slug": "side-&-accent-table-fhd-st-1014-fhd-st-1014",
    "sku": "FHD-ST-1014",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 250.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 250.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 225.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 200.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/n1cpl8ezgywgtwf7ia7l.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1015",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1015",
    "slug": "side-&-accent-table-fhd-st-1015-fhd-st-1015",
    "sku": "FHD-ST-1015",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 165.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 165.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 148.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 132.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/ntyf1jlnplzjn2zkgcf3.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1016",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1016",
    "slug": "side-&-accent-table-fhd-st-1016-fhd-st-1016",
    "sku": "FHD-ST-1016",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 167.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 167.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 150.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 134.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522280/w3hxfz0hdrhfx358qi5s.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1017",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1017",
    "slug": "side-&-accent-table-fhd-st-1017-fhd-st-1017",
    "sku": "FHD-ST-1017",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 170.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 170.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 153.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 136.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/xpilsrlec5zazyvqzwkw.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1018",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1018",
    "slug": "side-&-accent-table-fhd-st-1018-fhd-st-1018",
    "sku": "FHD-ST-1018",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 172.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 172.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 155.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 138.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522239/xxlusuptpblvhq95fcxy.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1019",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1019",
    "slug": "side-&-accent-table-fhd-st-1019-fhd-st-1019",
    "sku": "FHD-ST-1019",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 175.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 175.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 157.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 140.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522224/uecm5jshexrmjhvrrqjj.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1020",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1020",
    "slug": "side-&-accent-table-fhd-st-1020-fhd-st-1020",
    "sku": "FHD-ST-1020",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 177.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 177.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 159.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 142.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/npdgbg0u4zpibxie3gw7.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1021",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1021",
    "slug": "side-&-accent-table-fhd-st-1021-fhd-st-1021",
    "sku": "FHD-ST-1021",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 180.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 180.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 162.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 144.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522245/ihvmfmdqyrfsbnjqyu6e.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1022",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1022",
    "slug": "side-&-accent-table-fhd-st-1022-fhd-st-1022",
    "sku": "FHD-ST-1022",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 182.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 182.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 164.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 146.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522214/bbwhtzn2oyjmzkpl0jun.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1023",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1023",
    "slug": "side-&-accent-table-fhd-st-1023-fhd-st-1023",
    "sku": "FHD-ST-1023",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 185.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 185.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 166.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 148.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/tchcrvmimypxlxmihmyp.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1024",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1024",
    "slug": "side-&-accent-table-fhd-st-1024-fhd-st-1024",
    "sku": "FHD-ST-1024",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 187.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 187.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 168.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 150.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522286/rzuyuzo5fulnvucbn6bw.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1025",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1025",
    "slug": "side-&-accent-table-fhd-st-1025-fhd-st-1025",
    "sku": "FHD-ST-1025",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 190.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 190.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 171.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 152.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522183/ripdjh6n3aboxgfwuzrt.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1026",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1026",
    "slug": "side-&-accent-table-fhd-st-1026-fhd-st-1026",
    "sku": "FHD-ST-1026",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 192.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 192.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 173.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 154.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/d6d6vubnsd7ur0lqyqij.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1027",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1027",
    "slug": "side-&-accent-table-fhd-st-1027-fhd-st-1027",
    "sku": "FHD-ST-1027",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 195.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 195.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 175.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 156.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522232/zigcjourzrcevsxmrvpc.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1028",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1028",
    "slug": "side-&-accent-table-fhd-st-1028-fhd-st-1028",
    "sku": "FHD-ST-1028",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 197.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 197.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 177.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 158.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/ymd3nqiyvtokvocfabaw.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1029",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1029",
    "slug": "side-&-accent-table-fhd-st-1029-fhd-st-1029",
    "sku": "FHD-ST-1029",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 200.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 200.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 180.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 160.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/pllstd8kuiozyvqqww7y.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1030",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1030",
    "slug": "side-&-accent-table-fhd-st-1030-fhd-st-1030",
    "sku": "FHD-ST-1030",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 202.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 202.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 182.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 162.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/sfbqa3gajdjsmrhomfns.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1031",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1031",
    "slug": "side-&-accent-table-fhd-st-1031-fhd-st-1031",
    "sku": "FHD-ST-1031",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 205.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 205.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 184.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 164.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522280/sxslmrlvq0xks1opmicr.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1032",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1032",
    "slug": "side-&-accent-table-fhd-st-1032-fhd-st-1032",
    "sku": "FHD-ST-1032",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 207.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 207.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 186.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 166.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/mccsreau8a1srm7ncfea.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1033",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1033",
    "slug": "side-&-accent-table-fhd-st-1033-fhd-st-1033",
    "sku": "FHD-ST-1033",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 210.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 210.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 189.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 168.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/sg6a3vkv1dcnmmfjm0ox.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1034",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1034",
    "slug": "side-&-accent-table-fhd-st-1034-fhd-st-1034",
    "sku": "FHD-ST-1034",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 212.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 212.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 191.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 170.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522278/mchyg9wst5n0me4cp0es.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1035",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1035",
    "slug": "side-&-accent-table-fhd-st-1035-fhd-st-1035",
    "sku": "FHD-ST-1035",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 215.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 215.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 193.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 172.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522291/ba1dvffybg7ivcjvefno.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1036",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1036",
    "slug": "side-&-accent-table-fhd-st-1036-fhd-st-1036",
    "sku": "FHD-ST-1036",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 217.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 217.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 195.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 174.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522222/uhgkp0pf8xpqpyj4lgei.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1037",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1037",
    "slug": "side-&-accent-table-fhd-st-1037-fhd-st-1037",
    "sku": "FHD-ST-1037",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 220.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 220.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 198.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 176.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/q9yyszrzllreedt0xk7p.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1038",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1038",
    "slug": "side-&-accent-table-fhd-st-1038-fhd-st-1038",
    "sku": "FHD-ST-1038",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 222.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 222.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 200.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 178.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522265/tyxemmqrzkle7lnhy08l.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1039",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1039",
    "slug": "side-&-accent-table-fhd-st-1039-fhd-st-1039",
    "sku": "FHD-ST-1039",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 225.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 225.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 202.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 180.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/e3pqqxb5fiw2qcw3hywz.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1040",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1040",
    "slug": "side-&-accent-table-fhd-st-1040-fhd-st-1040",
    "sku": "FHD-ST-1040",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 227.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 227.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 204.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 182.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522184/w4gvm0eiljroiambdthi.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1041",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1041",
    "slug": "side-&-accent-table-fhd-st-1041-fhd-st-1041",
    "sku": "FHD-ST-1041",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 230.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 230.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 207.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 184.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/rcqxstokmnouxlevayjr.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1042",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1042",
    "slug": "side-&-accent-table-fhd-st-1042-fhd-st-1042",
    "sku": "FHD-ST-1042",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 232.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 232.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 209.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 186.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/xcekg2p0u5httufsyvhm.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1043",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1043",
    "slug": "side-&-accent-table-fhd-st-1043-fhd-st-1043",
    "sku": "FHD-ST-1043",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 235.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 235.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 211.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 188.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522208/nregqlhwiqerittay3nq.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1044",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1044",
    "slug": "side-&-accent-table-fhd-st-1044-fhd-st-1044",
    "sku": "FHD-ST-1044",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 237.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 237.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 213.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 190.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/uhypgasnyat4p4vljime.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1045",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1045",
    "slug": "side-&-accent-table-fhd-st-1045-fhd-st-1045",
    "sku": "FHD-ST-1045",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 240.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 240.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 216.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 192.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522198/lnzn5v2nfgqajjkfbi1l.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1046",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1046",
    "slug": "side-&-accent-table-fhd-st-1046-fhd-st-1046",
    "sku": "FHD-ST-1046",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 242.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 242.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 218.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 194.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/rjepok07hatjhoa2ujmr.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1047",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1047",
    "slug": "side-&-accent-table-fhd-st-1047-fhd-st-1047",
    "sku": "FHD-ST-1047",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 245.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 245.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 220.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 196.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/qgxbnzeuyp3kmhjlebpv.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1048",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1048",
    "slug": "side-&-accent-table-fhd-st-1048-fhd-st-1048",
    "sku": "FHD-ST-1048",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 247.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 247.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 222.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 198.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/fns7pgbqhf5nvzwkzhg3.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1049",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1049",
    "slug": "side-&-accent-table-fhd-st-1049-fhd-st-1049",
    "sku": "FHD-ST-1049",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 250.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 250.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 225.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 200.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/dp9fg2guihvrbldcpfjv.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1050",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1050",
    "slug": "side-&-accent-table-fhd-st-1050-fhd-st-1050",
    "sku": "FHD-ST-1050",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 165.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 165.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 148.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 132.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522190/r4bh6tnoz8lkhakmzejk.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1051",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1051",
    "slug": "side-&-accent-table-fhd-st-1051-fhd-st-1051",
    "sku": "FHD-ST-1051",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 167.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 167.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 150.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 134.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522199/bsqypdzxx4erm4lvjmyy.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1052",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1052",
    "slug": "side-&-accent-table-fhd-st-1052-fhd-st-1052",
    "sku": "FHD-ST-1052",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 170.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 170.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 153.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 136.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522202/evntgmonbmeu2iodl9go.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1053",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1053",
    "slug": "side-&-accent-table-fhd-st-1053-fhd-st-1053",
    "sku": "FHD-ST-1053",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 172.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 172.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 155.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 138.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522247/xtco1vda97a08w3nfa9g.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1054",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1054",
    "slug": "side-&-accent-table-fhd-st-1054-fhd-st-1054",
    "sku": "FHD-ST-1054",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 175.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 175.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 157.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 140.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/cbrstxtfq88lys2stuge.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1055",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1055",
    "slug": "side-&-accent-table-fhd-st-1055-fhd-st-1055",
    "sku": "FHD-ST-1055",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 177.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 177.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 159.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 142.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/bvtjv0pz06eq5kjjiq9y.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1056",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1056",
    "slug": "side-&-accent-table-fhd-st-1056-fhd-st-1056",
    "sku": "FHD-ST-1056",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 180.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 180.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 162.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 144.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/li4zh28g55465fvtbsdp.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1057",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1057",
    "slug": "side-&-accent-table-fhd-st-1057-fhd-st-1057",
    "sku": "FHD-ST-1057",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 182.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 182.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 164.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 146.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522248/hxc2eqmvnzaffbloopqh.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1058",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1058",
    "slug": "side-&-accent-table-fhd-st-1058-fhd-st-1058",
    "sku": "FHD-ST-1058",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 185.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 185.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 166.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 148.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522220/h7n5ckak9zg3bnb1glbh.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1059",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1059",
    "slug": "side-&-accent-table-fhd-st-1059-fhd-st-1059",
    "sku": "FHD-ST-1059",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 187.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 187.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 168.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 150.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522262/v3php1vhbxeplr691pmh.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1060",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1060",
    "slug": "side-&-accent-table-fhd-st-1060-fhd-st-1060",
    "sku": "FHD-ST-1060",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 190.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 190.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 171.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 152.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522196/bkslnynnv6r4dxujp5mw.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1061",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1061",
    "slug": "side-&-accent-table-fhd-st-1061-fhd-st-1061",
    "sku": "FHD-ST-1061",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 192.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 192.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 173.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 154.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/ptyx6ban8ysb8kc1am40.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1062",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1062",
    "slug": "side-&-accent-table-fhd-st-1062-fhd-st-1062",
    "sku": "FHD-ST-1062",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 195.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 195.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 175.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 156.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522191/ydqvfqwbvonurwmdnjrb.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1063",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1063",
    "slug": "side-&-accent-table-fhd-st-1063-fhd-st-1063",
    "sku": "FHD-ST-1063",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 197.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 197.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 177.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 158.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522259/waifmq54rn9pp56ao9o4.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1064",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1064",
    "slug": "side-&-accent-table-fhd-st-1064-fhd-st-1064",
    "sku": "FHD-ST-1064",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 200.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 200.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 180.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 160.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522217/qajm69hnk7ruwfvvydr9.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1065",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1065",
    "slug": "side-&-accent-table-fhd-st-1065-fhd-st-1065",
    "sku": "FHD-ST-1065",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 202.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 202.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 182.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 162.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522271/tno8gpjki7eflmvdzfpc.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1066",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1066",
    "slug": "side-&-accent-table-fhd-st-1066-fhd-st-1066",
    "sku": "FHD-ST-1066",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 205.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 205.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 184.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 164.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522200/lu0kfys6x4fr2qlaiqov.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1067",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1067",
    "slug": "side-&-accent-table-fhd-st-1067-fhd-st-1067",
    "sku": "FHD-ST-1067",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 207.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 207.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 186.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 166.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522205/hke50ugsnjd8ucl3eslv.jpg"
    ],
    "specifications": {
      "Dimensions": "15 X 15 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1068",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1068",
    "slug": "side-&-accent-table-fhd-st-1068-fhd-st-1068",
    "sku": "FHD-ST-1068",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 210.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 210.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 189.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 168.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522244/lfjhohzoqwwzttu98cwd.jpg"
    ],
    "specifications": {
      "Dimensions": "15 X 15 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1069",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1069",
    "slug": "side-&-accent-table-fhd-st-1069-fhd-st-1069",
    "sku": "FHD-ST-1069",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 212.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 212.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 191.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 170.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522212/tiyy56ynal3tajuum9nh.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1070",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1070",
    "slug": "side-&-accent-table-fhd-st-1070-fhd-st-1070",
    "sku": "FHD-ST-1070",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 215.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 215.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 193.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 172.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/dups4sr7lbyssligla3x.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1071",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1071",
    "slug": "side-&-accent-table-fhd-st-1071-fhd-st-1071",
    "sku": "FHD-ST-1071",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 217.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 217.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 195.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 174.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522293/luczwj2k8cm8a4e3dfkh.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1072",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1072",
    "slug": "side-&-accent-table-fhd-st-1072-fhd-st-1072",
    "sku": "FHD-ST-1072",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 220.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 220.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 198.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 176.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522258/cxuvzkbp48izjvrzses4.jpg"
    ],
    "specifications": {
      "Dimensions": "15 X 13.7 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1073",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1073",
    "slug": "side-&-accent-table-fhd-st-1073-fhd-st-1073",
    "sku": "FHD-ST-1073",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 222.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 222.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 200.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 178.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522228/c2rz75v3ald5yewkd9dj.jpg"
    ],
    "specifications": {
      "Dimensions": "15 X 13.7 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1074",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1074",
    "slug": "side-&-accent-table-fhd-st-1074-fhd-st-1074",
    "sku": "FHD-ST-1074",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 225.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 225.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 202.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 180.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522260/zfychdn2qo1ooag4xlpe.jpg"
    ],
    "specifications": {
      "Dimensions": "15.7 X 14 X 12 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1075",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1075",
    "slug": "side-&-accent-table-fhd-st-1075-fhd-st-1075",
    "sku": "FHD-ST-1075",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 227.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 227.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 204.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 182.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/ck4221ndyqhhus4cv8qe.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1076",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1076",
    "slug": "side-&-accent-table-fhd-st-1076-fhd-st-1076",
    "sku": "FHD-ST-1076",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 230.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 230.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 207.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 184.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522193/fdnfhtjxjocsxpmb8ejj.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1077",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1077",
    "slug": "side-&-accent-table-fhd-st-1077-fhd-st-1077",
    "sku": "FHD-ST-1077",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 232.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 232.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 209.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 186.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522189/sp6tddgjpgwxsnyzd6dc.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1078",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1078",
    "slug": "side-&-accent-table-fhd-st-1078-fhd-st-1078",
    "sku": "FHD-ST-1078",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 235.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 235.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 211.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 188.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522229/bievrq28yocxz5raqpb9.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1079",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1079",
    "slug": "side-&-accent-table-fhd-st-1079-fhd-st-1079",
    "sku": "FHD-ST-1079",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 237.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 237.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 213.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 190.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522240/nrb8aesvugmx0qvksah1.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1080",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1080",
    "slug": "side-&-accent-table-fhd-st-1080-fhd-st-1080",
    "sku": "FHD-ST-1080",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 240.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 240.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 216.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 192.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522207/lst2jxk4jqwihorcz0mw.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21.7 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1081",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1081",
    "slug": "side-&-accent-table-fhd-st-1081-fhd-st-1081",
    "sku": "FHD-ST-1081",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 242.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 242.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 218.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 194.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/xeepaqoxhnd2wx4dy8tr.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 21.7 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1082",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1082",
    "slug": "side-&-accent-table-fhd-st-1082-fhd-st-1082",
    "sku": "FHD-ST-1082",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 245.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 245.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 220.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 196.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522240/bic30jzosaaptwnd03kq.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1085",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1085",
    "slug": "side-&-accent-table-fhd-st-1085-fhd-st-1085",
    "sku": "FHD-ST-1085",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 165.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 165.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 148.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 132.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/wi6jvnfoszex4wvgj0wb.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1086",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1086",
    "slug": "side-&-accent-table-fhd-st-1086-fhd-st-1086",
    "sku": "FHD-ST-1086",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 167.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 167.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 150.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 134.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522186/uynr8lfrkchvctdcuhxv.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1087",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1087",
    "slug": "side-&-accent-table-fhd-st-1087-fhd-st-1087",
    "sku": "FHD-ST-1087",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 170.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 170.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 153.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 136.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/kmsegakakssyqkna5rnr.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1088",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1088",
    "slug": "side-&-accent-table-fhd-st-1088-fhd-st-1088",
    "sku": "FHD-ST-1088",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 172.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 172.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 155.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 138.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522209/nlntaulfztvf3fgivnjm.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1089",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1089",
    "slug": "side-&-accent-table-fhd-st-1089-fhd-st-1089",
    "sku": "FHD-ST-1089",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 175.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 175.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 157.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 140.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522257/rojottoyh9rqzociogf4.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1090",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1090",
    "slug": "side-&-accent-table-fhd-st-1090-fhd-st-1090",
    "sku": "FHD-ST-1090",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 177.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 177.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 159.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 142.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522194/lqzgx4slfmfgvrs4d4a6.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1091",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1091",
    "slug": "side-&-accent-table-fhd-st-1091-fhd-st-1091",
    "sku": "FHD-ST-1091",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 180.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 180.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 162.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 144.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522223/ydsijpy02mrdxacromvx.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1092",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1092",
    "slug": "side-&-accent-table-fhd-st-1092-fhd-st-1092",
    "sku": "FHD-ST-1092",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 182.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 182.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 164.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 146.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522205/ousoyepvu3odl2scwbga.jpg"
    ],
    "specifications": {
      "Dimensions": "14 X 14 X 21.6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1093",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1093",
    "slug": "side-&-accent-table-fhd-st-1093-fhd-st-1093",
    "sku": "FHD-ST-1093",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 185.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 185.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 166.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 148.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522234/n3okjlnkykwhjjs59ljp.jpg"
    ],
    "specifications": {
      "Dimensions": "15.7 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1094",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1094",
    "slug": "side-&-accent-table-fhd-st-1094-fhd-st-1094",
    "sku": "FHD-ST-1094",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 187.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 187.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 168.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 150.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522236/fsxsrcmrjgldqrhaufum.jpg"
    ],
    "specifications": {
      "Dimensions": "15.7 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1095",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1095",
    "slug": "side-&-accent-table-fhd-st-1095-fhd-st-1095",
    "sku": "FHD-ST-1095",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 190.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 190.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 171.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 152.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522227/qfiwczaaji9o74u6lsfx.jpg"
    ],
    "specifications": {
      "Dimensions": "15.7 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1096",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1096",
    "slug": "side-&-accent-table-fhd-st-1096-fhd-st-1096",
    "sku": "FHD-ST-1096",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 192.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 192.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 173.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 154.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522252/ttov6xhpgsa47eakh9vw.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1097",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1097",
    "slug": "side-&-accent-table-fhd-st-1097-fhd-st-1097",
    "sku": "FHD-ST-1097",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 195.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 195.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 175.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 156.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522182/gisiubhz4bijk4y33skn.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1098",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1098",
    "slug": "side-&-accent-table-fhd-st-1098-fhd-st-1098",
    "sku": "FHD-ST-1098",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 197.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 197.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 177.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 158.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522290/a7kvskk1pglca4nodawt.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1099",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1099",
    "slug": "side-&-accent-table-fhd-st-1099-fhd-st-1099",
    "sku": "FHD-ST-1099",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 200.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 200.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 180.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 160.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522246/zkbdp8wogkjnh8m8ponh.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1100",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1100",
    "slug": "side-&-accent-table-fhd-st-1100-fhd-st-1100",
    "sku": "FHD-ST-1100",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 202.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 202.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 182.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 162.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522218/niq3czxjj50pqe036vqo.jpg"
    ],
    "specifications": {
      "Dimensions": "20 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1101",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1101",
    "slug": "side-&-accent-table-fhd-st-1101-fhd-st-1101",
    "sku": "FHD-ST-1101",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 205.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 205.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 184.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 164.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522213/qtq1u07zfopgzqwidlkc.jpg"
    ],
    "specifications": {
      "Dimensions": "20 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1102",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1102",
    "slug": "side-&-accent-table-fhd-st-1102-fhd-st-1102",
    "sku": "FHD-ST-1102",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 207.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 207.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 186.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 166.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522287/niouatsxpqdgjkzhparh.jpg"
    ],
    "specifications": {
      "Dimensions": "20 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1103",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1103",
    "slug": "side-&-accent-table-fhd-st-1103-fhd-st-1103",
    "sku": "FHD-ST-1103",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 210.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 210.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 189.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 168.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522231/ac0y4hx8qtfnzfgcbfoq.jpg"
    ],
    "specifications": {
      "Dimensions": "20 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1104",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1104",
    "slug": "side-&-accent-table-fhd-st-1104-fhd-st-1104",
    "sku": "FHD-ST-1104",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 212.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 212.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 191.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 170.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522216/xt91sj9ia2ak2kaqyot5.jpg"
    ],
    "specifications": {
      "Dimensions": "20 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1105",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1105",
    "slug": "side-&-accent-table-fhd-st-1105-fhd-st-1105",
    "sku": "FHD-ST-1105",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 215.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 215.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 193.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 172.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/mdeesxvuudbslsgkzpyn.jpg"
    ],
    "specifications": {
      "Dimensions": "18 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1106",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1106",
    "slug": "side-&-accent-table-fhd-st-1106-fhd-st-1106",
    "sku": "FHD-ST-1106",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 217.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 217.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 195.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 174.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522277/w09lxmvblujraiynv8he.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1107",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1107",
    "slug": "side-&-accent-table-fhd-st-1107-fhd-st-1107",
    "sku": "FHD-ST-1107",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 220.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 220.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 198.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 176.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522279/vhbkfvnybyqqjgqmmmi5.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1108",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1108",
    "slug": "side-&-accent-table-fhd-st-1108-fhd-st-1108",
    "sku": "FHD-ST-1108",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 222.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 222.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 200.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 178.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522276/y0nus58iwodbma2ohrb5.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1109",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1109",
    "slug": "side-&-accent-table-fhd-st-1109-fhd-st-1109",
    "sku": "FHD-ST-1109",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 225.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 225.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 202.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 180.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522211/fuqozuvyth8r5jwrdya6.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 14 X 20 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1110",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1110",
    "slug": "side-&-accent-table-fhd-st-1110-fhd-st-1110",
    "sku": "FHD-ST-1110",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 227.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 227.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 204.75
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 182.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/cqni3cqa9oneo4vdh7tn.jpg"
    ],
    "specifications": {
      "Dimensions": "18 X 14 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1111",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1111",
    "slug": "side-&-accent-table-fhd-st-1111-fhd-st-1111",
    "sku": "FHD-ST-1111",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 230.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 230.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 207.0
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 184.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/sfk3dtm0k5mbnmw8ehpa.jpg"
    ],
    "specifications": {
      "Dimensions": "18 X 12 X 24 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1112",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1112",
    "slug": "side-&-accent-table-fhd-st-1112-fhd-st-1112",
    "sku": "FHD-ST-1112",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 232.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 232.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 209.25
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 186.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/c5ajapmco7lqdwhpruyx.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-ST-1113",
    "category_id": "e1b10001-0000-0000-0000-000000000004",
    "name": "Side & Accent Table FHD-ST-1113",
    "slug": "side-&-accent-table-fhd-st-1113-fhd-st-1113",
    "sku": "FHD-ST-1113",
    "description": "Versatile companion side table crafted from natural solid wood, perfect beside sofas, armchairs, or bedside spaces.",
    "base_price": 235.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 235.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 211.5
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 188.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522266/nm2oa42txtikql6vhi1u.jpg"
    ],
    "specifications": {
      "Dimensions": "16 X 12 X 22 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "furnishing",
      "Category": "Side & Accent Tables",
      "Subcategory": "side-tables"
    },
    "in_stock": true,
    "featured": true,
    "department": "furnishing"
  },
  {
    "id": "FHD-PF-1001",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1001",
    "slug": "wooden-photo-frame-fhd-pf-1001-fhd-pf-1001",
    "sku": "FHD-PF-1001",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 87.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 87.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 78.75
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 70.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522281/qabor2ys2c6kplhtp5b7.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1002",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1002",
    "slug": "wooden-photo-frame-fhd-pf-1002-fhd-pf-1002",
    "sku": "FHD-PF-1002",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 90.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 90.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 81.0
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 72.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522292/c06vsu00zs2zsgfpkkc0.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1003",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1003",
    "slug": "wooden-photo-frame-fhd-pf-1003-fhd-pf-1003",
    "sku": "FHD-PF-1003",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 92.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 92.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 83.25
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 74.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522267/opf1bcc59gmwxfi65spx.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1004",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1004",
    "slug": "wooden-photo-frame-fhd-pf-1004-fhd-pf-1004",
    "sku": "FHD-PF-1004",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 95.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 95.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 85.5
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 76.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522204/djsgldps72qyzswfdxpq.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1005",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1005",
    "slug": "wooden-photo-frame-fhd-pf-1005-fhd-pf-1005",
    "sku": "FHD-PF-1005",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 97.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 97.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 87.75
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 78.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522237/s7boezjrneyvsnytoq70.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1006",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1006",
    "slug": "wooden-photo-frame-fhd-pf-1006-fhd-pf-1006",
    "sku": "FHD-PF-1006",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 100.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 100.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 90.0
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 80.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522288/dmnvkdtst5nalnuszqub.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1007",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1007",
    "slug": "wooden-photo-frame-fhd-pf-1007-fhd-pf-1007",
    "sku": "FHD-PF-1007",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 102.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 102.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 92.25
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 82.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522238/astgx0vrrzjefwmc2e1v.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1008",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1008",
    "slug": "wooden-photo-frame-fhd-pf-1008-fhd-pf-1008",
    "sku": "FHD-PF-1008",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 105.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 105.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 94.5
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 84.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522188/wbqvmu8te3ktdukwyzke.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1009",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1009",
    "slug": "wooden-photo-frame-fhd-pf-1009-fhd-pf-1009",
    "sku": "FHD-PF-1009",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 107.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 107.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 96.75
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 86.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522275/l6vthecox3f5usport4f.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1010",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1010",
    "slug": "wooden-photo-frame-fhd-pf-1010-fhd-pf-1010",
    "sku": "FHD-PF-1010",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 110.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 110.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 99.0
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 88.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/q5uhi92ulxjwg2ftw1ce.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1011",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1011",
    "slug": "wooden-photo-frame-fhd-pf-1011-fhd-pf-1011",
    "sku": "FHD-PF-1011",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 112.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 112.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 101.25
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 90.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522210/cctcxojvmpoeivmpguvk.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1012",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1012",
    "slug": "wooden-photo-frame-fhd-pf-1012-fhd-pf-1012",
    "sku": "FHD-PF-1012",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 115.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 115.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 103.5
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 92.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522181/eygiux8jwaxpv81hblc2.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1013",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1013",
    "slug": "wooden-photo-frame-fhd-pf-1013-fhd-pf-1013",
    "sku": "FHD-PF-1013",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 117.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 117.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 105.75
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 94.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522230/hche4yneww4xtk8swybv.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1014",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1014",
    "slug": "wooden-photo-frame-fhd-pf-1014-fhd-pf-1014",
    "sku": "FHD-PF-1014",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 120.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 120.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 108.0
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 96.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522249/eemf2dfxebxfxftp64zw.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1015",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1015",
    "slug": "wooden-photo-frame-fhd-pf-1015-fhd-pf-1015",
    "sku": "FHD-PF-1015",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 35.0,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 35.0
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 31.5
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 28.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522243/rbdczefqcmvwy3jmi6zi.jpg"
    ],
    "specifications": {
      "Dimensions": "4 x6 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-PF-1016",
    "category_id": "e1b10001-0000-0000-0000-000000000006",
    "name": "Wooden Photo Frame FHD-PF-1016",
    "slug": "wooden-photo-frame-fhd-pf-1016-fhd-pf-1016",
    "sku": "FHD-PF-1016",
    "description": "Artisan solid wood photo frame showcasing refined beveling, rich natural grain, and timeless tabletop or wall presentation.",
    "base_price": 37.5,
    "moq": 25,
    "bulk_tiers": [
      {
        "min_qty": 25,
        "max_qty": 75,
        "unit_price": 37.5
      },
      {
        "min_qty": 76,
        "max_qty": 200,
        "unit_price": 33.75
      },
      {
        "min_qty": 201,
        "max_qty": null,
        "unit_price": 30.0
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522206/qte921yk9vshqeuf9ejx.jpg"
    ],
    "specifications": {
      "Dimensions": "8 x 10 in",
      "Material": "Solid Wood \u00b7 Handcrafted",
      "Finish": "Natural / Walnut / Teak Stains",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Wooden Photo Frames",
      "Subcategory": "photo-frames"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-RD-6002",
    "category_id": "f809989d-1523-4750-8d73-c79eca3171c5",
    "name": "Artisanal Silver Reindeer Festive Centerpiece",
    "slug": "artisanal-silver-reindeer-festive-centerpiece-fhd-rd-6002",
    "sku": "FHD-RD-6002",
    "description": "Cast aluminum holiday centerpiece with antiqued silver patina and refined sculptural antlers. High demand B2B seasonal gift and holiday boutique retail seller.",
    "base_price": 90.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 90.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 81.45
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 72.4
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522241/qqktwvzi0texbk1p4ace.jpg"
    ],
    "specifications": {
      "Dimensions": "12 x 5 x 18 in",
      "Material": "Cast Aluminum & Glass",
      "Finish": "Antiqued Silver Patina",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Holiday & Festive",
      "Subcategory": "holiday-decor"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-RD-6003",
    "category_id": "f809989d-1523-4750-8d73-c79eca3171c5",
    "name": "Handcrafted Brass Reindeer Sleigh Decor",
    "slug": "handcrafted-brass-reindeer-sleigh-decor-fhd-rd-6003",
    "sku": "FHD-RD-6003",
    "description": "Architectural cast brass reindeer and sleigh festive display piece with hand-etched botanical motifs and weighted stable heirloom base.",
    "base_price": 93.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 93.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 83.7
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 74.4
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522291/h5hkvx6r9ipmxjudwtx2.jpg"
    ],
    "specifications": {
      "Dimensions": "16 x 6 x 14 in",
      "Material": "Solid Cast Brass",
      "Finish": "Warm Antique Gold",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Holiday & Festive",
      "Subcategory": "holiday-decor"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-RD-6004",
    "category_id": "f809989d-1523-4750-8d73-c79eca3171c5",
    "name": "Illuminated Architectural Star Arch",
    "slug": "illuminated-architectural-star-arch-fhd-rd-6004",
    "sku": "FHD-RD-6004",
    "description": "Hand-carved solid mango wood star arch featuring ambient warm LED illumination, mortise-tenon joinery, and festive holiday presence.",
    "base_price": 95.5,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 95.5
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 85.95
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 76.4
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522276/g7xmuxgeou8zj7vnd4d5.jpg"
    ],
    "specifications": {
      "Dimensions": "20 x 4 x 22 in",
      "Material": "Solid Mango Wood & Warm LED",
      "Finish": "Natural Whitewash / Warm Patina",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Holiday & Festive",
      "Subcategory": "holiday-decor"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  },
  {
    "id": "FHD-RD-6005",
    "category_id": "f809989d-1523-4750-8d73-c79eca3171c5",
    "name": "Crackle Glass Festive Vanity Hurricane Set",
    "slug": "crackle-glass-festive-vanity-hurricane-set-fhd-rd-6005",
    "sku": "FHD-RD-6005",
    "description": "Set of artisan mouth-blown crackle glass candle hurricanes seated on hand-spun solid brass pedestal collars, creating dramatic light refraction.",
    "base_price": 98.0,
    "moq": 10,
    "bulk_tiers": [
      {
        "min_qty": 10,
        "max_qty": 30,
        "unit_price": 98.0
      },
      {
        "min_qty": 31,
        "max_qty": 80,
        "unit_price": 88.2
      },
      {
        "min_qty": 81,
        "max_qty": null,
        "unit_price": 78.4
      }
    ],
    "images": [
      "https://res.cloudinary.com/dfknq2hab/image/upload/v1794522253/eqisylqydprvbailry7k.jpg"
    ],
    "specifications": {
      "Dimensions": "7 x 7 x 12 in",
      "Material": "Handblown Crackle Glass & Brass",
      "Finish": "Champagne Luster / Antique Brass",
      "Packaging": "Export Grade 5-Ply Commercial Carton, Palletized",
      "Department": "accessories",
      "Category": "Holiday & Festive",
      "Subcategory": "holiday-decor"
    },
    "in_stock": true,
    "featured": true,
    "department": "accessories"
  }
];
