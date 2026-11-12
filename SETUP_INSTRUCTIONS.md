# Fair Home Decor — B2B Wholesale Platform Setup Guide
### Complete 5-Minute Setup for Next.js 14, Supabase (Free Tier) & Cloudinary (Free Tier)

This guide walks you through connecting your production-ready B2B Wholesale Platform with **Supabase Database & Auth** and **Cloudinary Image Hosting**.

---

## 🚀 Quick Start Checklist

1. [ ] Apply `supabase/schema.sql` to your Supabase Project
2. [ ] Configure `.env.local`
3. [ ] Elevate your first account to `'admin'`
4. [ ] Configure Cloudinary Unsigned Upload Preset
5. [ ] Launch with `npm run dev`

---

## Step 1: Set Up Supabase Database & Auth (Free Tier)

1. Go to [https://supabase.com](https://supabase.com) and create a **Free** project.
2. Once the project is provisioned, click **SQL Editor** in the left sidebar.
3. Click **New Query**, open the file [`supabase/schema.sql`](./supabase/schema.sql) in this repo, copy its entire contents, paste it into the SQL editor, and click **RUN**.
4. This script will automatically create:
   - `profiles` table (linked to `auth.users` with `admin` and `buyer` roles)
   - `categories` table (pre-seeded with 6 collections)
   - `products` table (pre-seeded with flagship wholesale items, specifications, and volume tiers)
   - `quote_requests` table (for B2B Purchase Inquiries and pro-forma quotes)
   - Row Level Security (RLS) policies protecting admin routes and securing buyer data
   - Automatic user creation trigger (`handle_new_user`)

---

## Step 2: Configure Environment Variables

1. In your project root, copy `.env.local.example` to `.env.local`:
   ```bash
   cp .env.local.example .env.local
   ```
2. In the Supabase Dashboard, navigate to **Project Settings** (gear icon) &rarr; **API**:
   - Copy **Project URL** into `NEXT_PUBLIC_SUPABASE_URL`
   - Copy **anon / public** key into `NEXT_PUBLIC_SUPABASE_ANON_KEY`

Example `.env.local`:
```env
NEXT_PUBLIC_SUPABASE_URL=https://xyzcompany.supabase.co
NEXT_PUBLIC_SUPABASE_ANON_KEY=eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9...
NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME=fairhomedecor
NEXT_PUBLIC_CLOUDINARY_UPLOAD_PRESET=fhd_wholesale_unsigned
```

---

## Step 3: Create Your First Admin User

1. Start the development server:
   ```bash
   npm run dev
   ```
2. In your browser, open [http://localhost:3000/register](http://localhost:3000/register) and register an account with your administrator email.
3. Return to the **Supabase Dashboard** &rarr; **SQL Editor** and run this single command to grant yourself super-administrator access:
   ```sql
   UPDATE public.profiles
   SET role = 'admin', is_approved = true
   WHERE email = 'your-admin-email@domain.com';
   ```
4. Sign in at [http://localhost:3000/login](http://localhost:3000/login) — you will now have unrestricted access to the **Admin Dashboard** at `/admin`!

---

## Step 4: Configure Cloudinary Unsigned Upload Preset (Free Tier)

Cloudinary provides free image hosting with CDN acceleration and automatic webp transformation.

1. Create a free account at [https://cloudinary.com](https://cloudinary.com).
2. Note your **Cloud Name** displayed on the Cloudinary Dashboard (e.g. `fairhomedecor`) and set it as `NEXT_PUBLIC_CLOUDINARY_CLOUD_NAME` in `.env.local`.
3. In Cloudinary, click the **Settings gear icon** (bottom-left) &rarr; **Upload** tab.
4. Scroll down to **Upload presets** and click **Add upload preset**.
5. Configure the preset:
   - **Upload preset name**: Enter `fhd_wholesale_unsigned` (or whatever you set in `NEXT_PUBLIC_CLOUDINARY_UPLOAD_PRESET`).
   - **Signing Mode**: Select **Unsigned** (*critical: allows client-side direct uploads*).
   - **Folder** (optional): `products`.
6. Click **Save**.

*Note: If you haven't set up Cloudinary yet, the admin product form also includes a convenient "+ Add image by external URL" button to link existing images directly.*

---

## Step 5: Test Key B2B Features

### Storefront & Procurement Workflow:
- **Wholesale Homepage (`/`)**: Tailored hero, trade benefits, category grid, and volume procurement callouts.
- **B2B Product Catalog (`/products`)**: Real-time category filtering, SKU/Name search, MOQ badges, and starting wholesale pricing.
- **Product Detail (`/products/[slug]`)**:
  - Multi-image gallery with thumbnail selection.
  - Architectural technical specifications table.
  - **Interactive Tiered Pricing Table**: Dynamically highlights the active volume discount tier as you increase the quantity input.
- **Quote Cart & RFQ Checkout (`/quote-cart`)**:
  - Enforces minimum order quantity per item.
  - Form for Company Name, Reseller Tax ID, and delivery address.
  - Submits directly into Supabase `quote_requests` with a generated Reference ID.
- **Buyer Account Portal (`/account`)**:
  - Displays wholesale approval status badge and past RFQ history.

### Admin Dashboard (`/admin`):
- **Overview (`/admin`)**: Live KPI metrics (Total Products, Pending Quotes, Approved Buyers, Pipeline Value).
- **Products (`/admin/products`)**: Searchable data table, live in-stock toggle switch, and delete confirmation modal.
- **Product Form (`/admin/products/new`)**:
  - Cloudinary drag-and-drop uploader with progress and reordering.
  - Dynamic **"+ Add Price Tier"** builder for volume discounts.
  - Dynamic **Specifications** key-value builder.
- **Categories (`/admin/categories`)**: Manage taxonomy collections with image banners.
- **Quotes (`/admin/quotes`)**: Inspect itemized lines, view company delivery addresses, and transition statuses (`Pending` &rarr; `Quoted` &rarr; `Approved` &rarr; `Dispatched`).
- **Buyer Approvals (`/admin/buyers`)**: Inspect business applications and toggle verified wholesale buyer status.

---

## 🔒 Security & Route Protection

All `/admin/*` routes are strictly guarded by Next.js Server Middleware (`src/middleware.ts`) which validates the user's session cookie and checks `role === 'admin'` in Supabase `profiles`. Non-admin users are automatically redirected to `/login?error=admin_required`.

