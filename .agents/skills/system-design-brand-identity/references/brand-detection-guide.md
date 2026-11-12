# Brand Detection & System Profiling Guide

This reference outlines the step-by-step heuristic for detecting project branding, mapping company identities, and handling unknown repositories.

---

## 1. Automated Detection Heuristic

When the agent begins a frontend task, execute the following probe sequence:

1. **Check Workspace Documentation**:
   - Inspect `README.md`, `BRAND.md`, `DESIGN.md`, or `.agents/rules/`.
   - Search for organization names (e.g. `Aesternex`, `Fair Home Decor`, client names).

2. **Check Configuration Files**:
   - `package.json`: Check `name`, `author`, `description`.
   - `tailwind.config.js`: Inspect extended colors, fontFamily, and theme tokens.
   - `style.css` / `variables.css`: Inspect `:root` variables.

3. **Check Visual Assets**:
   - `assets/images/logo.png`, `public/logo.svg`, `favicon.ico`.
   - Check metadata in HTML `<head>` (`<meta property="og:site_name">`, `<meta name="author">`).

---

## 2. Established Brand Profiles

### A. Aesternex Technologies
- **Brand Keywords**: `Aesternex`, `Aesternex Technologies`, `Aesternex Cloud`, `Aesternex AI`.
- **Identity Essence**: Enterprise cloud, AI platform engineering, mission-critical infrastructure.
- **Design Tokens to Apply**:
  ```css
  --color-primary: #2563EB;        /* Electric Blue */
  --color-primary-dark: #1E40AF;   /* Navy Blue */
  --color-secondary: #0F172A;      /* Deep Slate */
  --color-accent: #06B6D4;         /* Cyber Cyan */
  --color-bg-light: #F8FAFC;
  --color-bg-dark: #0B0F19;
  --color-surface-light: #FFFFFF;
  --color-surface-dark: #1E293B;
  --color-border-light: #E2E8F0;
  --color-border-dark: #334155;
  --font-sans: 'Inter', 'Plus Jakarta Sans', system-ui, sans-serif;
  --font-mono: 'Fira Code', 'SF Mono', monospace;
  ```
- **Rules**:
  - Prefer dark mode or clean dual-theme toggle.
  - Buttons have subtle glow or modern gradient (`linear-gradient(135deg, #2563EB, #06B6D4)`).
  - Cards feature thin 1px border with crisp micro-shadows.

### B. Fair Home Decor
- **Brand Keywords**: `Fair Home Decor`, `FHD`, `Considered Living, Beautifully Made`.
- **Identity Essence**: Heritage woodworking, luxury artisanal furnishings, organic serenity.
- **Design Tokens to Apply**:
  ```css
  --color-bg: #FAF8F5;             /* Warm Natural Linen */
  --color-cream: #EDE9E1;          /* Soft Cream */
  --color-tan: #D9D2C4;            /* Soft Tan */
  --color-dark: #2B2520;           /* Deep Espresso / Charcoal Brown */
  --color-brown: #5C4B3A;          /* Warm Wood Brown */
  --color-sage: #7C8C6E;           /* Muted Olive Sage */
  --color-sage-dark: #5A6B4E;      /* Deep Forest Sage */
  --color-sand: #C8BC9E;           /* Golden Sand */
  --font-serif: 'Cormorant Garamond', Georgia, serif;
  --font-sans: 'Montserrat', system-ui, sans-serif;
  ```
- **Rules**:
  - Warm beige canvas (`#FAF8F5`), never pure cold sterile gray (`#F0F0F0`).
  - Dark brown text (`#2B2520`), never harsh pure black (`#000000`).
  - Serif headings with italicized accent words (`<em>...</em>`).
  - Buttons use bold letter-spacing (`0.14em`) and uppercase styling.

---

## 3. Handling Undetermined or New Brands

If the repository does not match any known profile and has no existing tokens:
1. **Extract Existing CSS**: Inspect the dominant colors in the primary CSS file.
2. **Cluster by Role**: Group colors into Background, Surface, Primary Text, Accent, and Border.
3. **Draft a Brand Manifest**: Create `brand-manifest.md` based on discovered patterns.
4. **Never Force Foreign Colors**: Do not inject Aesternex blue into an artisanal decor site, and do not inject warm beige into a fintech cloud console.

