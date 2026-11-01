# Design Language: Heron AI | Works inside your design tools

> Extracted from `https://heronaiapp.com` on November 1, 2026
> 2279 elements analyzed

This document describes the complete design language of the website. It is structured for AI/LLM consumption — use it to faithfully recreate the visual design in any framework.

## Color Palette

### Primary Colors

| Role | Hex | RGB | HSL | Usage Count |
|------|-----|-----|-----|-------------|
| Primary | `#fa3600` | rgb(250, 54, 0) | hsl(13, 100%, 49%) | 219 |
| Secondary | `#ffdede` | rgb(255, 222, 222) | hsl(0, 100%, 94%) | 1 |
| Accent | `#dd6013` | rgb(221, 96, 19) | hsl(23, 84%, 47%) | 1 |

### Tonal Ramps

Generated in OKLCH from each role colour, so the steps are perceptually even. The site's own colour keeps its position in the ladder.

| Role | 50 | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | 950 |
|------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| primary | `#ffd2b7` | `#ffc2a5` | `#ffaa8b` | `#ff8765` | `#ff5732` | **`#fa3600`** | `#ce0000` | `#ac0000` | `#920000` | `#790000` | `#4a0000` |
| secondary | `#fff0f0` | **`#ffdede`** | `#ebd2d2` | `#d4b9b9` | `#b59797` | `#977a7a` | `#7f6464` | `#685050` | `#554041` | `#463333` | `#271b1b` |
| accent | `#ffe0bb` | `#ffd2a9` | `#ffbd90` | `#ff9f6b` | `#f2783a` | **`#dd6013`** | `#b54100` | `#972e00` | `#7f2200` | `#691700` | `#3f0600` |
| neutral | `#f5f5f5` | `#eaeaea` | `#d9d9d9` | `#c0c0c0` | `#9f9f9f` | `#828282` | `#6c6c6c` | `#575757` | `#464646` | `#393939` | **`#282828`** |

### Semantic Pairs

| Role | Background | Foreground | Contrast | Level |
|------|------------|------------|----------|-------|
| `surface.page` | `#ffffff` | `#000000` | 21:1 | AAA |
| `action.primary` | `#fa3600` | `#000000` | 5.59:1 | AA |
| `action.secondary` | `#ffdede` | `#000000` | 16.76:1 | AAA |
| `action.accent` | `#dd6013` | `#000000` | 5.76:1 | AA |

### Dominance

Share of painted background area — what the page looks like, as opposed to what it declares most often.

- `#ffffff` — 80%
- `#282828` — 9%
- `#b3b3af` — 9%
- `#fa3600` — 2%
- `#e0e0da` — 0%
- `#f2f2f1` — 0%

### Neutral Colors

| Hex | HSL | Usage Count |
|-----|-----|-------------|
| `#282828` | hsl(0, 0%, 16%) | 3642 |
| `#b3b3af` | hsl(60, 3%, 69%) | 445 |
| `#72726f` | hsl(60, 1%, 44%) | 160 |
| `#ffffff` | hsl(0, 0%, 100%) | 139 |
| `#000000` | hsl(0, 0%, 0%) | 72 |
| `#626260` | hsl(60, 1%, 38%) | 32 |
| `#f2f2f1` | hsl(60, 4%, 95%) | 4 |
| `#e0e0da` | hsl(60, 9%, 87%) | 2 |

### Background Colors

Used on large-area elements: `#ffffff`

### Text Colors

Text color palette: `#000000`, `#282828`, `#fa3600`, `#ffffff`, `#0000ee`, `#b3b3af`, `#b4b4b0`, `#72726f`, `#626260`

### Full Color Inventory

| Hex | Contexts | Count |
|-----|----------|-------|
| `#282828` | text, border, background | 3642 |
| `#b3b3af` | background, border, text | 445 |
| `#fa3600` | text, border, background | 219 |
| `#72726f` | text, border | 160 |
| `#ffffff` | text, border, background | 139 |
| `#000000` | text, border | 72 |
| `#0000ee` | text, border | 51 |
| `#626260` | text, border | 32 |
| `#f2f2f1` | background | 4 |
| `#e0e0da` | background | 2 |
| `#dd6013` | background | 1 |
| `#ffdede` | background | 1 |

## Typography

### Font Families

- **BT Grotesk** — used for all (94 elements)
- **Geistmono** — used for mono (123 elements)

### Type System

- **Scale ratio** — 1.2 (minor third), anchored at 10.3704px · 80% of sizes sit on the ladder
- **Measure** — ~62 characters per line (comfortable, low confidence from 1 sample)
- **Fluid type** — 3 clamp/viewport font sizes, 2px → 33px

### Named Scale

| Role | Size | Weight | Line Height | Tracking |
|------|------|--------|-------------|----------|
| `h1` | 41.4815px / 2.5926rem | 700 | 41.4815px | -0.82963px |
| `h2` | 35.5556px / 2.2222rem | 600 | 35.5556px | -0.711111px |
| `title-1` | 29.6296px / 1.8518rem | 600 | 29.6296px | -0.592593px |
| `title-2` | 23.7037px / 1.4815rem | 600 | 23.7037px | -0.474074px |
| `title-3` | 20.7407px / 1.2963rem | 600 | 20.7407px | -0.414815px |
| `title-4` | 17.7778px / 1.1111rem | 700 | 19.5556px | -0.355556px |
| `title-5` | 11.8519px / 0.7407rem | 500 | 15.4074px | -0.237037px |
| `title-6` | 10.3704px / 0.6482rem | 500 | 13.4815px | -0.237037px |
| `title-7` | 8.88889px / 0.5556rem | 500 | 11.5556px | normal |
| `body` | 7.40741px / 0.463rem | 400 | normal | normal |

### Fluid Declarations

```css
html { font-size: 2.54453vw; }
html { font-size: 1.19904vw; }
html { font-size: 0.578704vw; }
```

### Type Scale

| Size (px) | Size (rem) | Weight | Line Height | Letter Spacing | Used On |
|-----------|------------|--------|-------------|----------------|---------|
| 41.4815px | 2.5926rem | 700 | 41.4815px | -0.82963px | h1, div |
| 35.5556px | 2.2222rem | 600 | 35.5556px | -0.711111px | h2, br |
| 29.6296px | 1.8518rem | 600 | 29.6296px | -0.592593px | h2 |
| 23.7037px | 1.4815rem | 600 | 23.7037px | -0.474074px | div, br |
| 20.7407px | 1.2963rem | 600 | 20.7407px | -0.414815px | div, br |
| 17.7778px | 1.1111rem | 700 | 19.5556px | -0.355556px | div |
| 11.8519px | 0.7407rem | 500 | 15.4074px | -0.237037px | body, div, style, svg |
| 10.3704px | 0.6482rem | 500 | 13.4815px | -0.237037px | a, div, br, p |
| 8.88889px | 0.5556rem | 500 | 11.5556px | normal | div, span |
| 7.40741px | 0.463rem | 400 | normal | normal | html, head, meta, link |

### Heading Scale

```css
h1 { font-size: 41.4815px; font-weight: 700; line-height: 41.4815px; }
h2 { font-size: 35.5556px; font-weight: 600; line-height: 35.5556px; }
h2 { font-size: 29.6296px; font-weight: 600; line-height: 29.6296px; }
```

### Body Text

```css
body { font-size: 7.40741px; font-weight: 400; line-height: normal; }
```

### Font Weights in Use

`500` (2187x), `400` (48x), `600` (28x), `700` (16x)

## Spacing

| Token | Value | Rem |
|-------|-------|-----|
| spacing-1 | 1px | 0.0625rem |
| spacing-30 | 30px | 1.875rem |
| spacing-36 | 36px | 2.25rem |
| spacing-41 | 41px | 2.5625rem |
| spacing-72 | 72px | 4.5rem |
| spacing-89 | 89px | 5.5625rem |
| spacing-95 | 95px | 5.9375rem |
| spacing-105 | 105px | 6.5625rem |
| spacing-111 | 111px | 6.9375rem |
| spacing-119 | 119px | 7.4375rem |
| spacing-310 | 310px | 19.375rem |
| spacing-316 | 316px | 19.75rem |
| spacing-345 | 345px | 21.5625rem |

## Border Radii

| Label | Value | Count |
|-------|-------|-------|
| full | 50px | 1 |
| full | 99px | 3 |

## Elevation

1 levels from 1 raw shadows · neutral tint

**xs** — blur 0px, y 5.92593px, used 1×
```css
box-shadow: rgb(0, 0, 0) 0px 5.92593px 0px -1.48148px;
```

## CSS Custom Properties

### Colors

```css
--content--border: #b3b3af;
--size--border: max(1px,.1rem);
--content--primary: #282828;
--content--secondary: #414140;
--bg-img: url('https://cdn.prod.website-files.com/68f73a0fbae6fa626a19135c/6900476d411e3ea05889428f_bg.svg');
--bg-grid: url('https://cdn.prod.website-files.com/68f73a0fbae6fa626a19135c/68faf70718094e7433046fcc_bg-deco.svg');
```

### Spacing

```css
--size--padding-hero: calc(4.4rem + 1rem*2);
--size--max-screen-height: calc(100dvh - 1.6rem);
--size--line: 0px;
```

### Other

```css
--content--terriary: #282828b8;
--content--brand: #fa3600;
--content--white: white;
--content--disable: #b4b4b0;
--content--surface: #72726f;
--content--granite-gray: #626260;
--content--secon<deleted|variable-e7a8f6b3-897d-acdf-6323-9933b4907bfe>: #414140;
--content--transparent: transparent;
--loading-logo-dasharray: 0;
--trans-percent: 0%;
--mask-percent: 0%;
```

## Breakpoints

| Name | Value | Type |
|------|-------|------|
| sm | 479px | max-width |
| md | 767px | max-width |
| md | 768px | min-width |
| lg | 991px | max-width |
| lg | 992px | min-width |

## Transitions & Animations

**Easing functions:** `cubic-bezier(0.625, 0.05, 0, 1)`, `cubic-bezier(0.23, 1, 0.32, 1)`, `cubic-bezier(0.59, 0.23, 0.22, 0.96)`

**Durations:** `0.4s`, `0.35s`, `0.3s`, `0.48s`, `0.5s`, `0.2s`, `0.1s`, `0.45s`, `0.65s`

### Common Transitions

```css
transition: all;
transition: 0.4s;
transition: transform 0.35s, opacity 0.4s;
transition: border-color 0.3s, color 0.3s cubic-bezier(0.625, 0.05, 0, 1);
transition: transform 0.48s cubic-bezier(0.625, 0.05, 0, 1);
transition: border-color 0.4s;
transition: transform 0.4s;
transition: color 0.4s;
transition: border-color 0.3s;
transition: transform 0.5s cubic-bezier(0.23, 1, 0.32, 1);
```

### Keyframe Animations

**spin**
```css
@keyframes spin {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
```

**marqueeLeft**
```css
@keyframes marqueeLeft {
  0% { transform: translateX(0px); }
  100% { transform: translateX(-100%); }
}
```

**marqueeRight**
```css
@keyframes marqueeRight {
  0% { transform: translateX(-100%); }
  100% { transform: translateX(0px); }
}
```

**rotate**
```css
@keyframes rotate {
  0% { transform: rotate(0deg); }
  100% { transform: rotate(360deg); }
}
```

**fadeLoop**
```css
@keyframes fadeLoop {
  0% { opacity: 0.7; transform: scale(0.95); }
  50% { opacity: 1; transform: scale(1); }
  100% { opacity: 0.7; transform: scale(0.95); }
}
```

**spin**
```css
@keyframes spin {
  0% { content: "-"; }
  25% { content: "\\"; }
  50% { content: "|"; }
  75% { content: "/"; }
  100% { content: "-"; }
}
```

**rotate-icon**
```css
@keyframes rotate-icon {
  0%, 40% { transform: rotate(45deg); }
  50%, 90% { transform: rotate(0deg); }
  100% { transform: rotate(45deg); }
}
```

**homeProblemDraw**
```css
@keyframes homeProblemDraw {
  0% { opacity: 0; stroke-dashoffset: var(--path-length); }
  1% { opacity: 1; }
  100% { opacity: 1; stroke-dashoffset: 0; }
}
```

**homeProblemDashAppear**
```css
@keyframes homeProblemDashAppear {
  0% { opacity: 0; }
  100% { opacity: var(--dash-opacity); }
}
```

**homeProblemDashFlow**
```css
@keyframes homeProblemDashFlow {
  0% { stroke-dashoffset: 0; }
  100% { stroke-dashoffset: var(--dash-step); }
}
```

## Component Patterns

Detected UI component patterns and their most common styles:

### Buttons (11 instances)

```css
.buttons {
  background-color: rgb(239, 239, 239);
  color: rgb(250, 54, 0);
  font-size: 11.8519px;
  font-weight: 500;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### Cards (10 instances)

```css
.cards {
  background-color: rgb(242, 242, 241);
  border-radius: 0px;
  padding-top: 0px;
  padding-right: 0px;
}
```

### Inputs (1 instances)

```css
.inputs {
  color: rgb(40, 40, 40);
  border-color: rgb(179, 179, 175);
  border-radius: 0px;
  font-size: 11.8519px;
  padding-top: 5.92593px;
  padding-right: 5.92593px;
}
```

### Links (43 instances)

```css
.links {
  color: rgb(40, 40, 40);
  font-size: 11.8519px;
  font-weight: 500;
}
```

### Navigation (37 instances)

```css
.navigation {
  background-color: rgb(40, 40, 40);
  color: rgba(40, 40, 40, 0.72);
  padding-top: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  padding-right: 0px;
  position: relative;
}
```

### Footer (86 instances)

```css
.footer {
  background-color: rgb(179, 179, 175);
  color: rgba(40, 40, 40, 0.72);
  padding-top: 0px;
  padding-bottom: 0px;
  font-size: 11.8519px;
}
```

### Dropdowns (48 instances)

```css
.dropdowns {
  background-color: rgb(40, 40, 40);
  border-radius: 0px;
  border-color: rgba(40, 40, 40, 0.72);
  padding-top: 0px;
}
```

### Badges (69 instances)

```css
.badges {
  color: rgba(40, 40, 40, 0.72);
  font-size: 11.8519px;
  font-weight: 500;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### Tabs (1 instances)

```css
.tabs {
  color: rgb(40, 40, 40);
  font-size: 11.8519px;
  font-weight: 500;
  padding-top: 3.7037px;
  padding-right: 3.7037px;
  border-color: rgb(40, 40, 40);
  border-radius: 0px;
}
```

### ProgressBars (7 instances)

```css
.progressBars {
  background-color: rgb(250, 54, 0);
  color: rgba(40, 40, 40, 0.72);
  border-radius: 0px;
  font-size: 11.8519px;
}
```

## Component Clusters

Reusable component instances grouped by DOM structure and style similarity:

### Button — 3 instances, 3 variants

**Variant 1** (1 instance)

```css
  background: rgb(239, 239, 239);
  color: rgb(255, 255, 255);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(255, 255, 255);
  font-size: 11.8519px;
  font-weight: 500;
```

**Variant 2** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(40, 40, 40);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(40, 40, 40);
  font-size: 11.8519px;
  font-weight: 500;
```

**Variant 3** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(179, 179, 175);
  padding: 7.40741px 7.40741px 7.40741px 7.40741px;
  border-radius: 0px;
  border: 0px 0px 0px 1px none none none solid rgb(179, 179, 175);
  font-size: 11.8519px;
  font-weight: 500;
```

### Button — 2 instances, 1 variant

**Variant 1** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(40, 40, 40, 0.72);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgba(40, 40, 40, 0.72);
  font-size: 11.8519px;
  font-weight: 500;
```

### Card — 2 instances, 1 variant

**Variant 1** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(40, 40, 40, 0.72);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(179, 179, 175);
  font-size: 11.8519px;
  font-weight: 500;
```

### Card — 3 instances, 1 variant

**Variant 1** (3 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(40, 40, 40, 0.72);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgba(40, 40, 40, 0.72);
  font-size: 11.8519px;
  font-weight: 500;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(40, 40, 40, 0.72);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(179, 179, 175);
  font-size: 11.8519px;
  font-weight: 500;
```

### Input — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(40, 40, 40);
  padding: 5.92593px 5.92593px 5.92593px 11.8519px;
  border-radius: 0px;
  border: 1px 1px 1px 0px solid rgb(179, 179, 175);
  font-size: 11.8519px;
  font-weight: 500;
```

## Layout System

**110 grid containers** and **378 flex containers** detected.

### The System

- **Content column** — 618px wide
- **Column system** — 12 columns (canonical page grid)
- **Section rhythm** — 24px vertical padding (ladder: 24px · 47px · 89px · 345px)
- **Gap scale** — 1.48148px · 2.96296px · 4.44444px · 5.92593px · 11.8519px · 14.8148px · 16px · 23.7037px
- **Fluid layout** — 6 clamp/viewport declarations

```css
.w-lightbox-view { width: 100vw; }
.w-lightbox-image { max-width: 100vw; }
.w-lightbox-image { max-width: 96vw; }
.w-lightbox-group .w-lightbox-image { max-width: 82.3vw; }
.utility-page-wrap { width: 100vw; }
.loading-line-bg.bg-global { width: 100vw; }
```

### Container Widths

| Max Width | Padding |
|-----------|---------|
| 100% | 0px |

### Grid Column Patterns

| Columns | Usage Count |
|---------|-------------|
| 1-column | 87x |
| 12-column | 17x |
| 2-column | 4x |
| 9-column | 2x |

### Grid Templates

```css
grid-template-columns: 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px;
gap: 0px 14.8148px;
grid-template-columns: 1268.16px;
grid-template-columns: 1268.16px;
grid-template-columns: 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px;
gap: 0px 14.8148px;
grid-template-columns: 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px 92.0938px 92.1094px;
gap: 0px 14.8148px;
```

### Flex Patterns

| Direction/Wrap | Count |
|----------------|-------|
| row/nowrap | 311x |
| column/nowrap | 67x |

**Gap values:** `0px 14.8148px`, `normal 51.8519px`, `0px normal`, `normal 11.8519px`, `normal 4.44444px`, `normal 23.7037px`, `normal 14.8148px`, `1.48148px`, `2.96296px`, `2.96296px normal`, `4.44444px`, `5.92593px`, `11.8519px`, `11.8519px normal`, `16px`, `47.4074px normal`

## Accessibility (WCAG 2.1)

**Overall Score: 100%** — 0 passing, 0 failing color pairs

## Dark Mode

The site has a distinct dark mode color scheme:

- **Primary:** `#fa3600`
- **Secondary:** `#ffdede`
- **Backgrounds:** `#ffffff`
- **Text:** `#000000`, `#282828`, `#fa3600`, `#ffffff`, `#0000ee`

### Dark Mode CSS Variables

```css
--content--border: #b3b3af;
--size--border: max(1px,.1rem);
--content--primary: #282828;
--content--secondary: #414140;
--bg-img: url('https://cdn.prod.website-files.com/68f73a0fbae6fa626a19135c/6900476d411e3ea05889428f_bg.svg');
--bg-grid: url('https://cdn.prod.website-files.com/68f73a0fbae6fa626a19135c/68faf70718094e7433046fcc_bg-deco.svg');
--size--padding-hero: calc(4.4rem + 1rem*2);
--size--max-screen-height: calc(100dvh - 1.6rem);
--size--line: 0px;
--content--terriary: #282828b8;
--content--brand: #fa3600;
--content--white: white;
--content--disable: #b4b4b0;
--content--surface: #72726f;
--content--granite-gray: #626260;
--content--secon<deleted|variable-e7a8f6b3-897d-acdf-6323-9933b4907bfe>: #414140;
--content--transparent: transparent;
--loading-logo-dasharray: 0;
--trans-percent: 0%;
--mask-percent: 0%;
success: [object Object];
warning: [object Object];
error: [object Object];
info: [object Object];
```

## Design System Score

**Overall: 88/100 (Grade: B)**

| Category | Score |
|----------|-------|
| Color Discipline | 100/100 |
| Typography Consistency | 90/100 |
| Spacing System | 70/100 |
| Shadow Consistency | 100/100 |
| Border Radius Consistency | 100/100 |
| Accessibility | 100/100 |
| CSS Tokenization | 100/100 |

**Strengths:** Tight, disciplined color palette, Consistent typography system, Clean elevation system, Consistent border radii, Strong accessibility compliance, Good CSS variable tokenization

**Issues:**
- 84 !important rules — prefer specificity over overrides
- 75% of CSS is unused — consider purging
- 6552 duplicate CSS declarations

## Z-Index Map

**12 unique z-index values** across 4 layers.

| Layer | Range | Elements |
|-------|-------|----------|
| modal | 99999,2147483647 | div.c.o.o.k.i.e.-.b.a.n.n.e.r. .b.g.-.g.l.o.b.a.l, div.m.a.i.n.-.d.e.c.o, header.h.e.a.d.e.r |
| dropdown | 999,999 | div.c.u.r.s.o.r, div.a.w.w.w.a.r.d.s |
| sticky | 22,22 | div.h.o.m.e.-.h.e.r.o.-.i.m.g.-.d.e.c.o. .i.t.e.m.2 |
| base | 0,5 | button.h.e.a.d.e.r.-.m.e.n.u.-.i.t.e.m. .h.a.s.-.s.u.b.m.e.n.u, a.h.e.a.d.e.r.-.m.e.n.u.-.i.t.e.m. .w.-.i.n.l.i.n.e.-.b.l.o.c.k, button.h.e.a.d.e.r.-.m.e.n.u.-.i.t.e.m. .h.a.s.-.s.u.b.m.e.n.u |

**Issues:**
- Very high z-index values: 99999, 100000, 10000000, 2147483647

## SVG Icons

**25 unique SVG icons** detected. Dominant style: **outlined**.

| Size Class | Count |
|------------|-------|
| xs | 11 |
| sm | 1 |
| md | 5 |
| lg | 1 |
| xl | 7 |

**Icon colors:** `#282828`, `currentColor`, `#FA3600`, `white`, `#F15534`, `#B3B3AF`, `#72726F`, `#626260`, `#fa3600`

## Font Files

| Family | Source | Weights | Styles |
|--------|--------|---------|--------|
| webflow-icons | self-hosted | 400 | normal |
| Geistmono | self-hosted | 500 | normal |
| BT Grotesk | self-hosted | 400, 500, 600, 700 | normal, italic |

## Image Style Patterns

| Pattern | Count | Key Styles |
|---------|-------|------------|
| hero | 8 | objectFit: cover, borderRadius: 0px, shape: square |
| gallery | 6 | objectFit: contain, borderRadius: 0px, shape: square |
| general | 4 | objectFit: contain, borderRadius: 0px, shape: square |
| thumbnail | 1 | objectFit: cover, borderRadius: 0px, shape: square |

**Aspect ratios:** 3:4 (8x), 16:9 (7x), 1:1 (2x), 2.12:1 (1x), 4.54:1 (1x)

## Motion Language

**Feel:** mixed · **Scroll-linked:** yes

### Duration Tokens

| name | value | ms |
|---|---|---|
| `xs` | `100ms` | 100 |
| `sm` | `200ms` | 200 |
| `md` | `300ms` | 300 |
| `lg` | `450ms` | 450 |

### Easing Families

- **custom** (87 uses) — `cubic-bezier(0.625, 0.05, 0, 1)`, `cubic-bezier(0.59, 0.23, 0.22, 0.96)`
- **ease-out** (18 uses) — `cubic-bezier(0.23, 1, 0.32, 1)`

### Keyframes In Use

| name | kind | properties | uses |
|---|---|---|---|
| `fadeLoop` | reveal | opacity, transform | 2 |
| `homeWhyBoxReveal` | slide | opacity, transform, animation-timing-function | 6 |
| `homeWhyIconBgSwap` | fade | opacity, animation-timing-function | 3 |
| `homeWhyIconReveal` | slide | opacity, transform, animation-timing-function | 3 |
| `homeWhyIconBorderPulse` | slide | opacity, transform, animation-timing-function | 3 |
| `pointReveal` | reveal | opacity, transform, animation-timing-function | 12 |
| `homeWhyDashMove` | custom | stroke-dashoffset | 16 |
| `homeWhySpin` | rotate | transform | 2 |
| `loadingActive` | reveal | opacity, transform | 1 |
| `checkActive` | reveal | opacity, transform | 1 |
| `homeWhyCard2Reveal` | slide | opacity, transform | 1 |
| `homeWhyCardDotLoading` | reveal | opacity, transform | 3 |
| `homeWhyCardDotsVisibility` | fade | opacity | 1 |

## Component Anatomy

### card — 6 instances

**Slots:** media

### button — 5 instances

**Slots:** label, icon

## Brand Voice

**Tone:** friendly · **Pronoun:** you-only · **Headings:** Title Case (verbose)

### Top CTA Verbs

- **acceptaccept** (1)
- **rejectreject** (1)
- **product** (1)
- **resources** (1)

### Button Copy Patterns

- "acceptaccept" (1×)
- "rejectreject" (1×)
- "product
product" (1×)
- "resources
resources" (1×)

### Sample Headings

> AN AI AGENT THAT WORKS INSIDE YOUR DESIGN TOOLS
> THE REPETITIVE PARTS OF MODELLING SHOULDN'T EAT YOUR DAY. HERON HANDLES THE FIDDLY, MANUAL WORK SO YOU CAN STAY FOCUSED ON THE DESIGN, NOT THE SOFTWARE.
> YOUR DESIGN TOOLS DO WHAT YOU TELL THEM, NOTHING MORE
> RUN AN AGENT NATIVELY IN YOUR MODEL
> BUILT TO WORK THE WAY YOU DO
> AN AI AGENT THAT WORKS INSIDE YOUR DESIGN TOOLS
> THE REPETITIVE PARTS OF MODELLING SHOULDN'T EAT YOUR DAY. HERON HANDLES THE FIDDLY, MANUAL WORK SO YOU CAN STAY FOCUSED ON THE DESIGN, NOT THE SOFTWARE.
> YOUR DESIGN TOOLS DO WHAT YOU TELL THEM, NOTHING MORE
> RUN AN AGENT NATIVELY IN YOUR MODEL
> BUILT TO WORK THE WAY YOU DO

## Page Intent

**Type:** `landing` (confidence 0.59)
**Description:** Heron sees your model, spots problems, and suggests fixes as you design. When you approve, it makes the edit itself, all without leaving the software you already use.

Alternates: legal (0.4), blog-post (0.35)

## Section Roles

Reading order (top→bottom): hero → logo-wall → content → content → content → feature-grid → content → content → pricing → nav → footer

| # | Role | Heading | Confidence |
|---|------|---------|------------|
| 0 | pricing | AN AI AGENT THAT WORKS INSIDE YOUR DESIGN TOOLS | 0.4 |
| 1 | nav | — | 0.4 |
| 2 | hero | AN AI AGENT THAT WORKS INSIDE YOUR DESIGN TOOLS | 0.85 |
| 3 | logo-wall | THE REPETITIVE PARTS OF MODELLING SHOULDN'T EAT YOUR DAY. HERON HANDLES THE FIDD | 0.85 |
| 4 | content | YOUR DESIGN TOOLS DO WHAT YOU TELL THEM, NOTHING MORE | 0.3 |
| 5 | content | RUN AN AGENT NATIVELY IN YOUR MODEL | 0.3 |
| 6 | content | — | 0.3 |
| 7 | feature-grid | BUILT TO WORK THE WAY YOU DO | 0.8 |
| 8 | content | MADE FOR
THE PEOPLE IN
THE MODEL | 0.3 |
| 9 | content | SEE WHAT HERON CAN DO IN YOUR MODEL | 0.3 |
| 10 | footer | — | 0.95 |

## Material Language

**Label:** `flat` (confidence 0)

| Metric | Value |
|--------|-------|
| Avg saturation | 0.262 |
| Shadow profile | soft |
| Avg shadow blur | 0px |
| Max radius | 99px |
| backdrop-filter in use | no |
| Gradients | 0 |

## Imagery Style

**Label:** `photography` (confidence 0.439)
**Counts:** total 19, svg 1, icon 0, screenshot-like 0, photo-like 13
**Dominant aspect:** landscape
**Radius profile on images:** square

## Quick Start

To recreate this design in a new project:

1. **Install fonts:** Add `BT Grotesk` from Google Fonts or your font provider
2. **Import CSS variables:** Copy `variables.css` into your project
3. **Tailwind users:** Use the generated `tailwind.config.js` to extend your theme
4. **Design tokens:** Import `design-tokens.json` for tooling integration
