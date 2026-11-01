# Design Language: Deebak Tamilmani | Design Portfolio

> Extracted from `https://www.dbydt.space` on November 1, 2026
> 1953 elements analyzed

This document describes the complete design language of the website. It is structured for AI/LLM consumption — use it to faithfully recreate the visual design in any framework.

## Color Palette

### Primary Colors

| Role | Hex | RGB | HSL | Usage Count |
|------|-----|-----|-----|-------------|
| Primary | `#eeebe4` | rgb(238, 235, 228) | hsl(42, 23%, 91%) | 2547 |

### Tonal Ramps

Generated in OKLCH from each role colour, so the steps are perceptually even. The site's own colour keeps its position in the ladder.

| Role | 50 | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | 950 |
|------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| primary | `#f7f5f1` | **`#eeebe4`** | `#dbd9d4` | `#c2c0ba` | `#a29f99` | `#84827b` | `#6e6c66` | `#595651` | `#484642` | `#3a3935` | `#201f1c` |
| neutral | `#f5f5f5` | `#eaeaea` | `#d9d9d9` | `#c0c0c0` | `#9f9f9f` | `#828282` | `#6c6c6c` | `#575757` | `#464646` | `#393939` | **`#2b2b2b`** |

### Semantic Pairs

| Role | Background | Foreground | Contrast | Level |
|------|------------|------------|----------|-------|
| `surface.page` | `#eeebe4` | `#000000` | 17.64:1 | AAA |
| `surface.raised` | `#000000` | `#eeebe4` | 17.64:1 | AAA |
| `action.primary` | `#eeebe4` | `#000000` | 17.64:1 | AAA |

### Dominance

Share of painted background area — what the page looks like, as opposed to what it declares most often.

- `#eeebe4` — 74%
- `#000000` — 14%
- `#2b2b2b` — 12%

### Neutral Colors

| Hex | HSL | Usage Count |
|-----|-----|-------------|
| `#2b2b2b` | hsl(0, 0%, 17%) | 1508 |
| `#000000` | hsl(0, 0%, 0%) | 277 |
| `#6b675f` | hsl(40, 6%, 40%) | 20 |

### Background Colors

Used on large-area elements: `#eeebe4`, `#000000`, `#2b2b2b`

### Text Colors

Text color palette: `#eeebe4`, `#0000ee`, `#000000`, `#2b2b2b`, `#6b675f`

### Full Color Inventory

| Hex | Contexts | Count |
|-----|----------|-------|
| `#eeebe4` | text, background, border | 2547 |
| `#2b2b2b` | text, border, background | 1508 |
| `#000000` | background, text, border | 277 |
| `#0000ee` | text, border | 52 |
| `#6b675f` | text, border | 20 |

## Typography

### Font Families

- **Lay Grotesk Hello** — used for body (253 elements)
- **Geist Pixel** — used for body (70 elements)
- **Lay Grotesk** — used for body (4 elements)
- **Arial** — used for body (4 elements)

### Type System

- **Scale ratio** — 1.067 (minor second), anchored at 9px · 100% of sizes sit on the ladder
- **Measure** — ~327 characters per line (wide, low confidence from 1 sample)
- **Fluid type** — 1 clamp/viewport font sizes, 17px → 32px

### Named Scale

| Role | Size | Weight | Line Height | Tracking |
|------|------|--------|-------------|----------|
| `h2` | 120px / 7.5rem | 600 | normal | normal |
| `h1` | 32px / 2rem | 700 | normal | normal |
| `title-1` | 28.16px / 1.76rem | 600 | 28.16px | -1.408px |
| `title-2` | 24px / 1.5rem | 700 | normal | normal |
| `title-3` | 20px / 1.25rem | 400 | 20px | normal |
| `body` | 16px / 1rem | 400 | normal | normal |
| `body-sm` | 15px / 0.9375rem | 600 | 15px | -0.15px |
| `micro` | 13.3333px / 0.8333rem | 400 | normal | normal |
| `sm-3` | 13px / 0.8125rem | 400 | 19.5px | -0.13px |
| `sm-4` | 12px / 0.75rem | 600 | 12px | normal |
| `sm-5` | 11.7px / 0.7312rem | 400 | 17.55px | -0.13px |
| `sm-6` | 11px / 0.6875rem | 400 | 12.65px | normal |
| `sm-7` | 10px / 0.625rem | 400 | 11.5px | 0.6px |
| `sm-8` | 9px / 0.5625rem | 400 | normal | normal |

### Fluid Declarations

```css
.bento-hello-nav-text { font-size: clamp(1.05rem, 0.24rem + 1.9vw, 2rem); }
```

### Type Scale

| Size (px) | Size (rem) | Weight | Line Height | Letter Spacing | Used On |
|-----------|------------|--------|-------------|----------------|---------|
| 120px | 7.5rem | 600 | normal | normal | text, h2, span |
| 32px | 2rem | 700 | normal | normal | h1 |
| 28.16px | 1.76rem | 600 | 28.16px | -1.408px | button, span, a |
| 24px | 1.5rem | 700 | normal | normal | h2 |
| 20px | 1.25rem | 400 | 20px | normal | span |
| 16px | 1rem | 400 | normal | normal | html, head, meta, title |
| 15px | 0.9375rem | 600 | 15px | -0.15px | span |
| 13.3333px | 0.8333rem | 400 | normal | normal | button, span |
| 13px | 0.8125rem | 400 | 19.5px | -0.13px | a |
| 12px | 0.75rem | 600 | 12px | normal | span |
| 11.7px | 0.7312rem | 400 | 17.55px | -0.13px | span |
| 11px | 0.6875rem | 400 | 12.65px | normal | div, a, svg, path |
| 10px | 0.625rem | 400 | 11.5px | 0.6px | div, span, p, strong |
| 9px | 0.5625rem | 400 | normal | normal | span |

### Heading Scale

```css
h2 { font-size: 120px; font-weight: 600; line-height: normal; }
h1 { font-size: 32px; font-weight: 700; line-height: normal; }
h2 { font-size: 24px; font-weight: 700; line-height: normal; }
```

### Body Text

```css
body { font-size: 16px; font-weight: 400; line-height: normal; }
```

### Font Weights in Use

`400` (1719x), `600` (229x), `700` (5x)

## Spacing

**Base unit:** 2px

| Token | Value | Rem |
|-------|-------|-----|
| spacing-1 | 1px | 0.0625rem |
| spacing-10 | 10px | 0.625rem |
| spacing-14 | 14px | 0.875rem |
| spacing-16 | 16px | 1rem |
| spacing-20 | 20px | 1.25rem |
| spacing-24 | 24px | 1.5rem |
| spacing-40 | 40px | 2.5rem |
| spacing-42 | 42px | 2.625rem |
| spacing-74 | 74px | 4.625rem |
| spacing-102 | 102px | 6.375rem |

## Border Radii

| Label | Value | Count |
|-------|-------|-------|
| full | 50px | 212 |

## Elevation

1 levels from 1 raw shadows · neutral tint

**xs** — blur 6px, y 0px, used 2× · 2 layers
```css
box-shadow: rgba(43, 43, 43, 0.5) 0px 0px 1px 0px, rgba(43, 43, 43, 0.4) 0px 0px 6px 0px;
```

## Transitions & Animations

**Easing functions:** `cubic-bezier(0.16, 1, 0.3, 1)`

**Durations:** `0.16s`, `0.3s`, `0.18s`, `0.35s`, `0.2s`, `0.5s`, `0.4s`, `0.25s`, `2.4s`, `0.62s`, `0.08s`, `0.45s`

### Common Transitions

```css
transition: all;
transition: opacity 0.16s;
transition: opacity 0.3s;
transition: opacity 0.18s;
transition: opacity 0.35s, visibility 0.35s;
transition: opacity 0.2s;
transition: opacity 0.5s;
transition: opacity 0.4s;
transition: width 0.25s;
transition: opacity 0.2s, transform 0.2s;
```

### Keyframe Animations

**pg-annot-plus-in**
```css
@keyframes pg-annot-plus-in {
  0% { opacity: 0; transform: scale(0.4); }
  100% { opacity: 0.72; transform: scale(1); }
}
```

**pg-annot-grow**
```css
@keyframes pg-annot-grow {
  0% { transform: scale(0); }
  100% { transform: scale(1); }
}
```

**pg-annot-rise**
```css
@keyframes pg-annot-rise {
  100% { transform: translateY(0px); }
}
```

**film-grain-flicker**
```css
@keyframes film-grain-flicker {
  0% { background-position: 0px 0px; }
  10% { background-position: -47px 23px; }
  20% { background-position: 67px -59px; }
  30% { background-position: -83px 41px; }
  40% { background-position: 19px 73px; }
  50% { background-position: -61px -17px; }
  60% { background-position: 37px -43px; }
  70% { background-position: -29px 61px; }
  80% { background-position: 53px 13px; }
  90% { background-position: -71px -53px; }
  100% { background-position: 0px 0px; }
}
```

**bento-hello-grip-hop**
```css
@keyframes bento-hello-grip-hop {
  0% { transform: translateY(0px); animation-timing-function: cubic-bezier(0.3, 0, 0.2, 1); }
  8% { transform: translateY(-4px); animation-timing-function: cubic-bezier(0.4, 0, 0.2, 1); }
  20%, 100% { transform: translateY(0px); }
}
```

## Component Patterns

Detected UI component patterns and their most common styles:

### Buttons (20 instances)

```css
.buttons {
  background-color: rgb(238, 235, 228);
  color: rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### Cards (21 instances)

```css
.cards {
  background-color: rgb(238, 235, 228);
  border-radius: 0px;
  padding-top: 0px;
  padding-right: 0px;
}
```

### Links (39 instances)

```css
.links {
  color: rgb(0, 0, 238);
  font-size: 16px;
  font-weight: 400;
}
```

### Navigation (155 instances)

```css
.navigation {
  background-color: rgb(238, 235, 228);
  color: rgb(0, 0, 0);
  padding-top: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  padding-right: 0px;
  position: static;
}
```

### Modals (1 instances)

```css
.modals {
  border-radius: 0px;
  padding-top: 0px;
  padding-right: 0px;
}
```

### Badges (117 instances)

```css
.badges {
  color: rgb(238, 235, 228);
  font-size: 10px;
  font-weight: 400;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### Accordions (36 instances)

```css
.accordions {
  background-color: rgb(238, 235, 228);
  color: rgb(43, 43, 43);
  font-size: 16px;
  padding-top: 0px;
  padding-right: 0px;
  border-color: rgb(43, 43, 43);
}
```

### ProgressBars (6 instances)

```css
.progressBars {
  background-color: rgba(238, 235, 228, 0.35);
  color: rgb(238, 235, 228);
  border-radius: 0px;
  font-size: 16px;
}
```

### Switches (12 instances)

```css
.switches {
  border-radius: 0px;
  border-color: rgb(43, 43, 43);
}
```

## Component Clusters

Reusable component instances grouped by DOM structure and style similarity:

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(0, 0, 0);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(0, 0, 0);
  font-size: 28.16px;
  font-weight: 600;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(0, 0, 0);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(0, 0, 0);
  font-size: 13.3333px;
  font-weight: 400;
```

### Card — 2 instances, 1 variant

**Variant 1** (2 instances)

```css
  background: rgb(238, 235, 228);
  color: rgb(238, 235, 228);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(238, 235, 228);
  font-size: 16px;
  font-weight: 400;
```

### Card — 2 instances, 2 variants

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(238, 235, 228);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(238, 235, 228);
  font-size: 16px;
  font-weight: 400;
```

**Variant 2** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(43, 43, 43);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(238, 235, 228);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(238, 235, 228);
  font-size: 16px;
  font-weight: 400;
```

### Card — 6 instances, 2 variants

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(238, 235, 228);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(238, 235, 228);
  font-size: 16px;
  font-weight: 400;
```

**Variant 2** (5 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(43, 43, 43);
  padding: 0px 0px 24px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgb(238, 235, 228);
  color: rgb(43, 43, 43);
  padding: 16px 16px 16px 16px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(43, 43, 43);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(43, 43, 43);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Button — 7 instances, 1 variant

**Variant 1** (7 instances)

```css
  background: rgb(238, 235, 228);
  color: rgb(43, 43, 43);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(43, 43, 43);
  padding: 0px 0px 24px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(43, 43, 43);
  padding: 0px 0px 24px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

### Button — 5 instances, 1 variant

**Variant 1** (5 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(43, 43, 43);
  padding: 8px 0px 8px 0px;
  border-radius: 0px;
  border: 0px none rgb(43, 43, 43);
  font-size: 16px;
  font-weight: 400;
```

## Layout System

**38 grid containers** and **493 flex containers** detected.

### The System

- **Column system** — 3 columns
- **Gap scale** — 2.4px · 6px · 8px · 9.6px · 12px

### Grid Column Patterns

| Columns | Usage Count |
|---------|-------------|
| 3-column | 26x |
| 1-column | 12x |

### Grid Templates

```css
grid-template-columns: 64px 140.812px 52px;
gap: 0px 9.6px;
grid-template-columns: 64px 140.812px 52px;
gap: 0px 9.6px;
grid-template-columns: 64px 140.812px 52px;
gap: 0px 9.6px;
grid-template-columns: 64px 140.812px 52px;
gap: 0px 9.6px;
grid-template-columns: 64px 140.812px 52px;
gap: 0px 9.6px;
```

### Flex Patterns

| Direction/Wrap | Count |
|----------------|-------|
| column/nowrap | 83x |
| row/nowrap | 408x |
| row/wrap | 2x |

**Gap values:** `0px 9.6px`, `2.4px`, `3px`, `3.2px 17.6px`, `4px`, `6px`, `8px`, `9.6px`, `10px`, `12px`

## Accessibility (WCAG 2.1)

**Overall Score: 100%** — 0 passing, 0 failing color pairs

## Design System Score

**Overall: 86/100 (Grade: B)**

| Category | Score |
|----------|-------|
| Color Discipline | 100/100 |
| Typography Consistency | 50/100 |
| Spacing System | 100/100 |
| Shadow Consistency | 100/100 |
| Border Radius Consistency | 100/100 |
| Accessibility | 100/100 |
| CSS Tokenization | 50/100 |

**Strengths:** Tight, disciplined color palette, Well-defined spacing scale, Clean elevation system, Consistent border radii, Strong accessibility compliance

**Issues:**
- 4 font families — consider limiting to 2 (heading + body)
- 964 duplicate CSS declarations

## Z-Index Map

**8 unique z-index values** across 1 layers.

| Layer | Range | Elements |
|-------|-------|----------|
| base | 0,7 | div.b.e.n.t.o.-.h.e.l.l.o.-.s.c.r.u.b.-.s.c.r.o.l.l.e.r. .l.e.n.i.s, div.b.e.n.t.o.-.h.e.l.l.o.-.s.c.e.n.e, div.b.e.n.t.o.-.h.e.l.l.o.-.r.u.l.e.r.-.s.l.o.t. .b.e.n.t.o.-.h.e.l.l.o.-.r.u.l.e.r.-.s.l.o.t.-.-.n.a.v |

**Issues:**
- 8 unique values in a narrow range (0-7)

## SVG Icons

**4 unique SVG icons** detected. Dominant style: **filled**.

| Size Class | Count |
|------------|-------|
| xs | 4 |

**Icon colors:** `currentColor`

## Font Files

| Family | Source | Weights | Styles |
|--------|--------|---------|--------|
| Lay Grotesk | self-hosted | 600 | normal |
| Geist Pixel | self-hosted | 400 | normal |
| Lay Grotesk Hello | self-hosted | 400, 500, 600, 700 | normal |

## Image Style Patterns

| Pattern | Count | Key Styles |
|---------|-------|------------|
| general | 12 | objectFit: cover, borderRadius: 0px, shape: square |

**Aspect ratios:** 4:3 (12x)

## Motion Language

**Feel:** responsive · **Scroll-linked:** yes

### Duration Tokens

| name | value | ms |
|---|---|---|
| `instant` | `80ms` | 80 |
| `sm` | `160ms` | 160 |
| `md` | `300ms` | 300 |
| `lg` | `450ms` | 450 |

### Easing Families

- **ease-out** (21 uses) — `cubic-bezier(0.16, 1, 0.3, 1)`

### Keyframes In Use

| name | kind | properties | uses |
|---|---|---|---|
| `pg-annot-plus-in` | reveal | opacity, transform | 8 |
| `pg-annot-grow` | scale | transform | 8 |
| `pg-annot-rise` | slide-y | transform | 32 |
| `bento-hello-grip-hop` | slide-y | transform, animation-timing-function | 1 |

## Component Anatomy

### card — 16 instances


### button — 14 instances

**Slots:** label

## Brand Voice

**Tone:** friendly · **Pronoun:** you-only · **Headings:** Sentence case (tight)

### Top CTA Verbs

- **d** (1)
- **about** (1)
- **experience** (1)
- **education** (1)
- **featured** (1)
- **research** (1)
- **embedding** (1)
- **graph** (1)

### Button Copy Patterns

- "(d/dt)
i’m deebak
architect
designer
welcome to my space" (1×)
- "×" (1×)
- "about
+" (1×)
- "experience
+" (1×)
- "education
+" (1×)
- "featured
+" (1×)
- "research
+" (1×)
- "2026
embedding intelligence in 3d modeling workflows
stuckeman center for design computing
+" (1×)
- "2026
graph-based floor plan maker
ongoing · generative floor plans
+" (1×)
- "teaching
+" (1×)

### Sample Headings

> Deebak Tamilmani | Design Portfolio
> Projects
> Research
> Experience and education
> Contact

## Page Intent

**Type:** `landing` (confidence 0.31)
**Description:** Design portfolio of Deebak Tamilmani. Fragments of architecture and design projects, held as memory rather than archive, drawn in real time as a WebGPU point cloud.

Alternates: blog-post (0.35)

## Section Roles

Reading order (top→bottom): steps

| # | Role | Heading | Confidence |
|---|------|---------|------------|
| 0 | steps | Deebak Tamilmani \| Design Portfolio | 0.75 |

## Material Language

**Label:** `flat` (confidence 0)

| Metric | Value |
|--------|-------|
| Avg saturation | 0.231 |
| Shadow profile | soft |
| Avg shadow blur | 0px |
| Max radius | 50px |
| backdrop-filter in use | no |
| Gradients | 0 |

## Imagery Style

**Label:** `photography` (confidence 0.583)
**Counts:** total 12, svg 0, icon 0, screenshot-like 0, photo-like 12
**Dominant aspect:** square-ish
**Radius profile on images:** square

## Quick Start

To recreate this design in a new project:

1. **Install fonts:** Add `Lay Grotesk Hello` from Google Fonts or your font provider
2. **Import CSS variables:** Copy `variables.css` into your project
3. **Tailwind users:** Use the generated `tailwind.config.js` to extend your theme
4. **Design tokens:** Import `design-tokens.json` for tooling integration
