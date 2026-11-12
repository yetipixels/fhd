# Brand Manifest & Design Specification

Use this document to register and enforce a project's brand identity.

---

## 1. Project Information
- **Project Name:** [e.g., Fair Home Decor / Aesternex Enterprise]
- **Parent Company / Organization:** [e.g., Aesternex Technologies / Independent]
- **Target Audience:** [e.g., Luxury homeowners / Enterprise DevOps engineers]
- **Design Archetype:** [e.g., Editorial Luxury / Technical Precision / Playful Consumer]

---

## 2. Core Palette

| Role | Color Name | HEX | RGB | HSL | Contrast vs. Background |
|---|---|---|---|---|---|
| **Primary** | Dark Espresso | `#2B2520` | `rgb(43, 37, 32)` | `hsl(27, 15%, 15%)` | 13.8:1 (AAA) |
| **Secondary** | Sage Olive | `#7C8C6E` | `rgb(124, 140, 110)` | `hsl(92, 12%, 49%)` | 4.6:1 (AA) |
| **Accent** | Warm Sand | `#C8BC9E` | `rgb(200, 188, 158)` | `hsl(43, 29%, 70%)` | 2.2:1 (Decorative) |
| **Background** | Linen Beige | `#FAF8F5` | `rgb(250, 248, 245)` | `hsl(36, 33%, 97%)` | Base Canvas |
| **Surface** | Pure White | `#FFFFFF` | `rgb(255, 255, 255)` | `hsl(0, 0%, 100%)` | Elevated Canvas |
| **Border** | Soft Tan | `#DDD5C5` | `rgb(221, 213, 197)` | `hsl(40, 26%, 82%)` | Card/Field Stroke |

---

## 3. Typography Stack

### Primary Headings
- **Font Family:** `Cormorant Garamond, Georgia, serif`
- **Fallback:** `serif`
- **Weights:** 300 (Light Display), 400 (Standard Heading), 600 (Semibold)
- **Characteristics:** Elegant serifs, high x-height, generous tracking for uppercase tags (`0.2em`).

### Body Copy & User Interface
- **Font Family:** `Montserrat, -apple-system, sans-serif`
- **Fallback:** `sans-serif`
- **Weights:** 300 (Editorial Body), 400 (Regular), 500 (Medium), 600 (Semibold Buttons)
- **Line Height:** 1.6 - 1.8 for optimal legibility.

---

## 4. Component Defaults

- **Buttons:** Border radius `4px`, padding `12px 24px`, uppercase, tracking `0.14em`.
- **Cards:** White background, border `1px solid var(--color-border)`, soft shadow on hover (`0 10px 24px rgba(43,37,32,0.09)`).
- **Inputs:** Font size $\ge 16\text{px}$ on mobile screens, subtle border with focus highlight ring.
- **Modals:** Deep blur backdrop (`blur(8px)`), max width `860px` (or `580px` for dialogs), max height `90vh` with internal scroll.

---

## 5. Prohibited Styling Anti-Patterns

- ❌ Never use pure black (`#000000`) for text when brand uses deep charcoal/brown (`#2B2520`).
- ❌ Never introduce unstyled generic browser buttons without hover/active transitions.
- ❌ Never use raw pixel widths that cause horizontal scrolling on $375\text{px}$ screens.
- ❌ Never omit focus rings on keyboard-accessible elements.

