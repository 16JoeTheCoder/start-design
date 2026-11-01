# Design Language: Jesper Landberg

> Extracted from `https://jesperlandberg.com` on November 1, 2026
> 172 elements analyzed

This document describes the complete design language of the website. It is structured for AI/LLM consumption — use it to faithfully recreate the visual design in any framework.

## Color Palette

### Tonal Ramps

Generated in OKLCH from each role colour, so the steps are perceptually even. The site's own colour keeps its position in the ladder.

| Role | 50 | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | 950 |
|------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| neutral | `#f5f5f5` | `#eaeaea` | `#d9d9d9` | `#c0c0c0` | `#9f9f9f` | `#828282` | **`#767676`** | `#575757` | `#464646` | `#393939` | `#1f1f1f` |

### Semantic Pairs

| Role | Background | Foreground | Contrast | Level |
|------|------------|------------|----------|-------|
| `surface.page` | `#000000` | `#ffffff` | 21:1 | AAA |

### Dominance

Share of painted background area — what the page looks like, as opposed to what it declares most often.

- `#000000` — 100%
- `#ffffff` — 0%

### Neutral Colors

| Hex | HSL | Usage Count |
|-----|-----|-------------|
| `#ffffff` | hsl(0, 0%, 100%) | 234 |
| `#000000` | hsl(0, 0%, 0%) | 120 |
| `#767676` | hsl(0, 0%, 46%) | 2 |

### Background Colors

Used on large-area elements: `#000000`

### Text Colors

Text color palette: `#000000`, `#ffffff`

### Full Color Inventory

| Hex | Contexts | Count |
|-----|----------|-------|
| `#ffffff` | text, border, background | 234 |
| `#000000` | text, border, background | 120 |
| `#767676` | border | 2 |

## Typography

### Font Families

- **sans** — used for all (52 elements)

### Type System

- **Scale ratio** — 1.125 (major second), anchored at 8.53333px · 100% of sizes sit on the ladder
- **Measure** — ~145 characters per line (wide)
- **Fluid type** — 1 clamp/viewport font sizes, 5px → 0px
  - ⚠ 1 clamp() value has no viewport unit in the preferred term — they never scale.

### Named Scale

| Role | Size | Weight | Line Height | Tracking |
|------|------|--------|-------------|----------|
| `h1` | 23.8933px / 1.4933rem | 700 | 33.4507px | normal |
| `h2` | 17.92px / 1.12rem | 700 | 25.088px | normal |
| `title-1` | 16px / 1rem | 400 | 22.4px | normal |
| `title-2` | 15.36px / 0.96rem | 400 | 21.504px | -0.768px |
| `title-3` | 13.3333px / 0.8333rem | 400 | normal | normal |
| `body` | 11.9467px / 0.7467rem | 400 | 16.7253px | normal |
| `body-sm` | 8.53333px / 0.5333rem | 400 | normal | normal |

### Fluid Declarations

```css
html { font-size: clamp(5px,20px,10 * 100vw/var(--size)); }
```

### Type Scale

| Size (px) | Size (rem) | Weight | Line Height | Letter Spacing | Used On |
|-----------|------------|--------|-------------|----------------|---------|
| 23.8933px | 1.4933rem | 700 | 33.4507px | normal | h1 |
| 17.92px | 1.12rem | 700 | 25.088px | normal | h2 |
| 16px | 1rem | 400 | 22.4px | normal | button, span |
| 15.36px | 0.96rem | 400 | 21.504px | -0.768px | span |
| 13.3333px | 0.8333rem | 400 | normal | normal | input |
| 11.9467px | 0.7467rem | 400 | 16.7253px | normal | body, div, canvas, main |
| 8.53333px | 0.5333rem | 400 | normal | normal | html, head, meta, title |

### Heading Scale

```css
h1 { font-size: 23.8933px; font-weight: 700; line-height: 33.4507px; }
h2 { font-size: 17.92px; font-weight: 700; line-height: 25.088px; }
```

### Body Text

```css
body { font-size: 11.9467px; font-weight: 400; line-height: 16.7253px; }
```

### Font Weights in Use

`400` (155x), `500` (14x), `700` (3x)

## Spacing

| Token | Value | Rem |
|-------|-------|-----|
| spacing-13 | 13px | 0.8125rem |
| spacing-68 | 68px | 4.25rem |

## Border Radii

| Label | Value | Count |
|-------|-------|-------|
| xl | 17px | 8 |
| full | 999px | 12 |

## CSS Custom Properties

### Colors

```css
--tw-ring-offset-shadow: 0 0 #0000;
--tw-ring-shadow: 0 0 #0000;
--tw-ring-inset: ;
--tw-ring-offset-width: 0px;
--tw-border-spacing-x: 0;
--tw-shadow-colored: 0 0 #0000;
--tw-border-spacing-y: 0;
--tw-ring-color: rgba(59,130,246,.5);
--tw-ring-offset-color: #fff;
```

### Spacing

```css
--size: 390;
--tw-contain-size: ;
--tw-numeric-spacing: ;
```

### Shadows

```css
--tw-shadow: 0 0 #0000;
--tw-drop-shadow: ;
```

### Other

```css
--tw-contrast: ;
--tw-backdrop-sepia: ;
--tw-sepia: ;
--tw-skew-x: 0;
--tw-ordinal: ;
--tw-backdrop-saturate: ;
--tw-backdrop-blur: ;
--tw-contain-style: ;
--tw-translate-x: 0;
--tw-gradient-via-position: ;
--tw-backdrop-invert: ;
--tw-saturate: ;
--tw-scroll-snap-strictness: proximity;
--tw-grayscale: ;
--tw-scale-x: 1;
--tw-backdrop-hue-rotate: ;
--tw-gradient-to-position: ;
--tw-brightness: ;
--tw-numeric-fraction: ;
--tw-backdrop-grayscale: ;
--tw-hue-rotate: ;
--tw-scale-y: 1;
--tw-pan-y: ;
--tw-backdrop-contrast: ;
--tw-skew-y: 0;
--tw-backdrop-brightness: ;
--tw-slashed-zero: ;
--tw-blur: ;
--tw-invert: ;
--tw-pan-x: ;
--tw-translate-y: 0;
--tw-backdrop-opacity: ;
--tw-gradient-from-position: ;
--tw-numeric-figure: ;
--tw-rotate: 0;
--tw-pinch-zoom: ;
--tw-contain-paint: ;
--tw-contain-layout: ;
```

### Semantic

```css
--tw-shadow-colored: 0 0 #0000;
```

## Breakpoints

| Name | Value | Type |
|------|-------|------|
| sm | 650px | min-width |
| 1100px | 1100px | min-width |
| xl | 1300px | min-width |
| 1400px | 1400px | min-width |

## Transitions & Animations

**Easing functions:** `cubic-bezier(0, 0, 0.2, 1)`

**Durations:** `0.3s`, `0.5s`

### Common Transitions

```css
transition: all;
transition: opacity 0.3s cubic-bezier(0, 0, 0.2, 1);
transition: opacity 0.5s cubic-bezier(0, 0, 0.2, 1);
```

## Component Patterns

Detected UI component patterns and their most common styles:

### Buttons (3 instances)

```css
.buttons {
  background-color: rgb(255, 255, 255);
  color: rgb(255, 255, 255);
  font-size: 8.53333px;
  font-weight: 500;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### Inputs (2 instances)

```css
.inputs {
  background-color: rgb(255, 255, 255);
  color: rgb(0, 0, 0);
  border-color: rgb(118, 118, 118);
  border-radius: 0px;
  font-size: 11.9467px;
  padding-top: 0px;
  padding-right: 0px;
}
```

### Links (22 instances)

```css
.links {
  color: rgb(255, 255, 255);
  font-size: 11.9467px;
  font-weight: 400;
}
```

### Navigation (1 instances)

```css
.navigation {
  color: rgb(255, 255, 255);
  padding-top: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  padding-right: 0px;
  position: relative;
}
```

### Badges (8 instances)

```css
.badges {
  color: rgb(255, 255, 255);
  font-size: 8.53333px;
  font-weight: 500;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

## Component Clusters

Reusable component instances grouped by DOM structure and style similarity:

### Input — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(0, 0, 0, 0);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px inset rgb(118, 118, 118);
  font-size: 11.9467px;
  font-weight: 400;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgb(255, 255, 255);
  color: rgb(0, 0, 0);
  padding: 0px 0px 0px 0px;
  border-radius: 999px;
  border: 0px none rgb(0, 0, 0);
  font-size: 16px;
  font-weight: 400;
```

### Button — 2 instances, 1 variant

**Variant 1** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(255, 255, 255);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(255, 255, 255);
  font-size: 8.53333px;
  font-weight: 500;
```

## Layout System

**0 grid containers** and **26 flex containers** detected.

### The System

- **Gap scale** — 4.26667px · 6.82667px · 17.0667px

### Flex Patterns

| Direction/Wrap | Count |
|----------------|-------|
| row/nowrap | 22x |
| column/nowrap | 3x |
| row/wrap | 1x |

**Gap values:** `normal 6.82667px`, `normal 4.26667px`, `6.82667px 17.0667px`, `17.0667px 8.53333px`

## Accessibility (WCAG 2.1)

**Overall Score: 100%** — 0 passing, 0 failing color pairs

## Dark Mode

The site has a distinct dark mode color scheme:

- **Backgrounds:** `#000000`
- **Text:** `#000000`, `#ffffff`

### Dark Mode CSS Variables

```css
--tw-ring-offset-shadow: 0 0 #0000;
--tw-ring-shadow: 0 0 #0000;
--tw-ring-offset-width: 0px;
--tw-ring-inset: ;
--tw-border-spacing-x: 0;
--tw-shadow-colored: 0 0 #0000;
--tw-border-spacing-y: 0;
--tw-ring-color: rgba(59,130,246,.5);
--tw-ring-offset-color: #fff;
--size: 390;
--tw-contain-size: ;
--tw-numeric-spacing: ;
--tw-shadow: 0 0 #0000;
--tw-drop-shadow: ;
--tw-contrast: ;
--tw-backdrop-sepia: ;
--tw-sepia: ;
--tw-skew-x: 0;
--tw-ordinal: ;
--tw-backdrop-saturate: ;
--tw-backdrop-blur: ;
--tw-contain-style: ;
--tw-translate-x: 0;
--tw-gradient-via-position: ;
--tw-backdrop-invert: ;
--tw-saturate: ;
--tw-scroll-snap-strictness: proximity;
--tw-grayscale: ;
--tw-scale-x: 1;
--tw-backdrop-hue-rotate: ;
--tw-gradient-to-position: ;
--tw-brightness: ;
--tw-numeric-fraction: ;
--tw-backdrop-grayscale: ;
--tw-hue-rotate: ;
--tw-scale-y: 1;
--tw-pan-y: ;
--tw-backdrop-contrast: ;
--tw-skew-y: 0;
--tw-backdrop-brightness: ;
--tw-slashed-zero: ;
--tw-blur: ;
--tw-invert: ;
--tw-pan-x: ;
--tw-translate-y: 0;
--tw-backdrop-opacity: ;
--tw-gradient-from-position: ;
--tw-numeric-figure: ;
--tw-rotate: 0;
--tw-pinch-zoom: ;
--tw-contain-paint: ;
--tw-contain-layout: ;
success: [object Object];
warning: [object Object];
error: [object Object];
info: [object Object];
```

## Design System Score

**Overall: 87/100 (Grade: B)**

| Category | Score |
|----------|-------|
| Color Discipline | 85/100 |
| Typography Consistency | 100/100 |
| Spacing System | 70/100 |
| Shadow Consistency | 85/100 |
| Border Radius Consistency | 100/100 |
| Accessibility | 100/100 |
| CSS Tokenization | 100/100 |

**Strengths:** Tight, disciplined color palette, Consistent typography system, Clean elevation system, Consistent border radii, Strong accessibility compliance, Good CSS variable tokenization

**Issues:**
- No clear primary brand color detected
- 16 !important rules — prefer specificity over overrides
- 54% of CSS is unused — consider purging
- 117 duplicate CSS declarations

## Z-Index Map

**3 unique z-index values** across 2 layers.

| Layer | Range | Elements |
|-------|-------|----------|
| sticky | 10,40 | div.g.l, div.p.o.i.n.t.e.r.-.e.v.e.n.t.s.-.n.o.n.e. .f.i.x.e.d. .l.e.f.t.-.1./.2. .t.o.p.-.1./.2. .z.-.4.0. .w.-.4.2.0. .-.t.r.a.n.s.l.a.t.e.-.x.-.1./.2. .-.t.r.a.n.s.l.a.t.e.-.y.-.1./.2. .s.:.w.-.6.0.0, div.p.o.i.n.t.e.r.-.e.v.e.n.t.s.-.n.o.n.e. .f.i.x.e.d. .l.e.f.t.-.1./.2. .t.o.p.-.1./.2. .z.-.4.0. .w.-.4.2.0. .-.t.r.a.n.s.l.a.t.e.-.x.-.1./.2. .-.t.r.a.n.s.l.a.t.e.-.y.-.1./.2. .s.:.w.-.6.0.0 |
| base | 1,1 | input.v.i.s.i.b.l.e. .r.e.l.a.t.i.v.e. .z.-.1. .h.-.f.u.l.l. .w.-.f.u.l.l. .b.o.r.d.e.r.-.0. .b.g.-.t.r.a.n.s.p.a.r.e.n.t. .t.e.x.t.-.t.r.a.n.s.p.a.r.e.n.t. .c.a.r.e.t.-.w.h.i.t.e. .o.u.t.l.i.n.e.-.n.o.n.e. .p.o.i.n.t.e.r.-.e.v.e.n.t.s.-.a.u.t.o. .[.f.o.n.t.:.i.n.h.e.r.i.t.]. .[.l.e.t.t.e.r.-.s.p.a.c.i.n.g.:.i.n.h.e.r.i.t.]. .[.-.w.e.b.k.i.t.-.t.e.x.t.-.f.i.l.l.-.c.o.l.o.r.:.t.r.a.n.s.p.a.r.e.n.t.]. .s.e.l.e.c.t.i.o.n.:.b.g.-.w.h.i.t.e./.2.0. .a.u.t.o.f.i.l.l.:.b.g.-.c.l.i.p.-.t.e.x.t. .a.u.t.o.f.i.l.l.:.[.-.w.e.b.k.i.t.-.t.e.x.t.-.f.i.l.l.-.c.o.l.o.r.:.t.r.a.n.s.p.a.r.e.n.t.]. .a.u.t.o.f.i.l.l.:.[.t.r.a.n.s.i.t.i.o.n.:.b.a.c.k.g.r.o.u.n.d.-.c.o.l.o.r._.0.s._.9.9.9.9.9.9.s.] |

## Font Files

| Family | Source | Weights | Styles |
|--------|--------|---------|--------|
| sans | self-hosted | 200 1000 | normal |

## Motion Language

**Feel:** responsive · **Scroll-linked:** yes

### Duration Tokens

| name | value | ms |
|---|---|---|
| `md` | `300ms` | 300 |
| `lg` | `500ms` | 500 |

### Easing Families

- **ease-out** (4 uses) — `cubic-bezier(0, 0, 0.2, 1)`

## Component Anatomy

### button — 3 instances

**Slots:** label

## Brand Voice

**Tone:** neutral · **Pronoun:** third-person · **Headings:** Sentence case (tight)

### Top CTA Verbs

- **profile** (1)
- **newsletter** (1)

### Button Copy Patterns

- "profile" (1×)
- "newsletter" (1×)

### Sample Headings

> Jesper Landberg — design engineer
> Featured work
> Elsewhere

## Page Intent

**Type:** `landing` (confidence 0.31)
**Description:** Swedish design engineer building visually rich, motion-driven websites. Two-time Awwwards Independent of the Year (2022 & 2024).

Alternates: blog-post (0.35)

## Section Roles

Reading order (top→bottom): testimonial → nav

| # | Role | Heading | Confidence |
|---|------|---------|------------|
| 0 | testimonial | Jesper Landberg — design engineer | 0.8 |
| 1 | nav | — | 0.9 |

## Material Language

**Label:** `flat` (confidence 0)

| Metric | Value |
|--------|-------|
| Avg saturation | 0 |
| Shadow profile | none |
| Avg shadow blur | 0px |
| Max radius | 999px |
| backdrop-filter in use | no |
| Gradients | 0 |

## Component Library

**Detected:** `tailwindcss` (confidence 0.448)

Evidence:
- tailwind-like class density 47%

## Quick Start

To recreate this design in a new project:

1. **Install fonts:** Add `sans` from Google Fonts or your font provider
2. **Import CSS variables:** Copy `variables.css` into your project
3. **Tailwind users:** Use the generated `tailwind.config.js` to extend your theme
4. **Design tokens:** Import `design-tokens.json` for tooling integration
