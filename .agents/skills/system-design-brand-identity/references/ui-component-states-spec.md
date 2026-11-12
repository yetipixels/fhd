# UI Component States & Accessibility Specification

This specification governs the interactive states, responsive behaviors, and accessibility requirements for all UI components created or maintained by Antigravity.

---

## 1. The 7 Interactive States Matrix

Every interactive component (Buttons, Form Controls, Table Rows, Cards, Tabs, Menu Items) must account for the following 7 states:

| State | Trigger | Visual & Functional Requirement | CSS Selector / Implementation |
|---|---|---|---|
| **1. Rest (Default)** | Normal rendered state | Clean base appearance with brand tokens, accessible contrast. | `.component` |
| **2. Hover** | Cursor enters element | Subtle elevation, background tint, or scale change (`scale(1.02)` / `translateY(-1px)`). Must NOT cause layout shift. | `.component:hover` |
| **3. Focus-Visible** | Keyboard navigation | Unambiguous focus ring (`outline: 2px solid var(--color-accent); outline-offset: 2px;`). Never use `outline: none` without replacement. | `.component:focus-visible` |
| **4. Active (Pressed)** | Mouse click down / Tap | Subtle compression (`scale(0.98)` or darkened background). Gives tactile feedback. | `.component:active` |
| **5. Disabled** | `disabled` attribute or `aria-disabled="true"` | Lower opacity (`0.55`), `cursor: not-allowed`, `pointer-events: none`. Color contrast must remain legible. | `.component:disabled, .component[aria-disabled="true"]` |
| **6. Loading / Busy** | Async action pending | Spinner icon or animated flight cue, `cursor: wait`, interactive clicks suppressed, `aria-busy="true"`. | `.component.is-loading, .component[aria-busy="true"]` |
| **7. Validation** | Form error or success | Border color changes to `--color-error` or `--color-success`, assistive icon displayed, `aria-invalid="true"`. | `.component.has-error, .component.has-success` |

---

## 2. Touch Screen & Mobile Usability Rules

1. **Touch Target Size**:
   - All clickable targets (buttons, links, icons, tabs, checkboxes) must measure at least **$44\text{px} \times 44\text{px}$** of touchable area on mobile devices (WCAG 2.5.5).
   - Use padding (e.g. `padding: 12px 16px;`) or pseudo-elements (`::after` hit-area expansion) to meet this requirement without visual bloat.

2. **iOS Safari Form Field Rule**:
   - Every `<input>`, `<select>`, and `<textarea>` must use `font-size: 16px !important` or higher on screens $\le 768\text{px}$.
   - Failure to do this causes mobile Safari to zoom into the field on focus, breaking viewport layout.

3. **No Horizontal Scroll**:
   - `max-width: 100vw; overflow-x: hidden;` on body/containers.
   - Any multi-column grid (`repeat(4, 1fr)`) must collapse to 2 columns on tablets and 1–2 columns on mobile.
   - Any tabular layout on mobile must either convert to stacked card items or provide explicit horizontal scrolling with scroll indicator cues.

---

## 3. Component Specific Checklists

### Form Controls
- Label is explicitly linked via `for="id"` or wraps the input.
- Placeholder text contrast is between 3:1 and 4.5:1 (visible but distinct from entered text).
- Required fields marked with `aria-required="true"` and visual indicator.
- Helper and error text linked using `aria-describedby="error-id"`.

### Modals & Dialogs
- Backdrop has `aria-hidden="true"`, modal has `role="dialog"` and `aria-modal="true"`.
- Focus trapped inside modal while open.
- Pressing `Escape` key closes the modal.
- Clicking backdrop closes the modal (with option to disable for critical workflows).
- Never place CSS `transform` on the `body` element, which breaks `position: fixed` containment.

### Dropdowns & Navigation
- Top-level button has `aria-haspopup="true"` and `aria-expanded="false"`.
- Chevron icon rotates smoothly (`180deg`) when open.
- Closes cleanly when user clicks outside or presses `Escape`.

