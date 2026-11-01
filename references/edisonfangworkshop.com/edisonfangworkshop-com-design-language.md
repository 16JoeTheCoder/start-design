# Design Language: Edison Fang Workshop

> Extracted from `https://edisonfangworkshop.com` on November 1, 2026
> 334 elements analyzed

This document describes the complete design language of the website. It is structured for AI/LLM consumption — use it to faithfully recreate the visual design in any framework.

## Color Palette

### Primary Colors

| Role | Hex | RGB | HSL | Usage Count |
|------|-----|-----|-----|-------------|
| Primary | `#b64d2b` | rgb(182, 77, 43) | hsl(15, 62%, 44%) | 16 |
| Secondary | `#f4f2eb` | rgb(244, 242, 235) | hsl(47, 29%, 94%) | 1 |

### Tonal Ramps

Generated in OKLCH from each role colour, so the steps are perceptually even. The site's own colour keeps its position in the ladder.

| Role | 50 | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | 950 |
|------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| primary | `#ffe2cc` | `#ffd4bc` | `#ffc0a5` | `#ffa385` | `#e87e5d` | `#c85e3c` | **`#b64d2b`** | `#8f3619` | `#78290e` | `#631f06` | `#3b0c00` |
| secondary | **`#f4f2eb`** | `#ebeae5` | `#dad9d4` | `#c2c0ba` | `#a1a099` | `#84827c` | `#6e6c66` | `#585751` | `#484742` | `#3a3935` | `#201f1c` |
| neutral | `#f7f5f1` | `#ebeae4` | **`#dfddd5`** | `#c2c0ba` | `#a1a098` | `#84827b` | `#6e6c65` | `#585751` | `#484741` | `#3a3934` | `#201f1c` |

### Semantic Pairs

| Role | Background | Foreground | Contrast | Level |
|------|------------|------------|----------|-------|
| `surface.page` | `#ffffff` | `#000000` | 21:1 | AAA |
| `action.primary` | `#b64d2b` | `#ffffff` | 5.14:1 | AA * |
| `action.secondary` | `#f4f2eb` | `#000000` | 18.75:1 | AAA |

\* No colour the site already uses for text reaches 4.5:1 on that surface — the foreground shown is black or white, substituted in.

### Dominance

Share of painted background area — what the page looks like, as opposed to what it declares most often.

- `#ffffff` — 100%
- `#b64d2b` — 0%
- `#090909` — 0%

### Neutral Colors

| Hex | HSL | Usage Count |
|-----|-----|-------------|
| `#090909` | hsl(0, 0%, 4%) | 474 |
| `#000000` | hsl(0, 0%, 0%) | 88 |
| `#dfddd5` | hsl(48, 14%, 85%) | 18 |
| `#252722` | hsl(84, 7%, 14%) | 15 |
| `#72736b` | hsl(67, 4%, 44%) | 10 |
| `#65665e` | hsl(68, 4%, 38%) | 7 |
| `#ffffff` | hsl(0, 0%, 100%) | 6 |

### Background Colors

Used on large-area elements: `#ffffff`

### Text Colors

Text color palette: `#000000`, `#dfddd5`, `#090909`, `#252722`, `#72736b`, `#65665e`

### Full Color Inventory

| Hex | Contexts | Count |
|-----|----------|-------|
| `#090909` | text, border, background | 474 |
| `#000000` | text, border | 88 |
| `#dfddd5` | text, border | 18 |
| `#b64d2b` | background | 16 |
| `#252722` | text, border | 15 |
| `#72736b` | text, border | 10 |
| `#65665e` | text, border | 7 |
| `#ffffff` | background | 6 |
| `#f4f2eb` | background | 1 |

## Typography

### Font Families

- **Arial** — used for all (36 elements)
- **Iowan Old Style** — used for body (10 elements)
- **Source Code Variable** — used for mono (44 elements)

### Type System

- **Scale ratio** — irregular (13 distinct sizes, no modular ratio fits)
- **Measure** — ~61 characters per line (comfortable)
- **Fluid type** — 90 clamp/viewport font sizes, 7px → 176px
  - ⚠ 1 clamp() value has no viewport unit in the preferred term — they never scale.

### Named Scale

| Role | Size | Weight | Line Height | Tracking |
|------|------|--------|-------------|----------|
| `h1` | 128px / 8rem | 300 | 138.24px | -7.04px |
| `title-1` | 83.6538px / 5.2284rem | 300 | 92.0192px | normal |
| `title-2` | 67.84px / 4.24rem | 400 | 75.9808px | -3.0528px |
| `h2` | 16px / 1rem | 400 | 24px | normal |
| `title-3` | 12.8px / 0.8rem | 400 | 19.2px | normal |
| `body` | 12px / 0.75rem | 400 | 14.4px | 0.6px |
| `body-sm` | 11.52px / 0.72rem | 400 | 17.28px | 1.152px |
| `micro` | 11.2px / 0.7rem | 400 | 16.8px | 1.152px |
| `sm-3` | 10.4px / 0.65rem | 300 | 15.08px | 1.04px |
| `sm-4` | 10px / 0.625rem | 400 | 12px | 1.3px |
| `sm-5` | 9.6px / 0.6rem | 300 | 13.44px | 0.336px |
| `sm-6` | 9px / 0.5625rem | 300 | 12.15px | 1.08px |
| `sm-7` | 8px / 0.5rem | 400 | 9.6px | 0.72px |

### Fluid Declarations

```css
.not-found-copy h1 { font-size: clamp(3.8rem, 10.1vw, 11rem); }
.home-formation .home-train-title h1 { font-size: clamp(3.5rem, 10vw, 10rem); }
.standard-hero-title h1 { font-size: clamp(4rem, 10vw, 10rem); }
.quiet-hero .identity-hero-copy h1 { font-size: clamp(4.5rem, 8.3vw, 9rem); }
.quiet-closing blockquote { font-size: clamp(4rem, 8vw, 9rem); }
.not-found-copy p { font-size: clamp(3.4rem, 8.2vw, 8.8rem); }
.standard-project--graphic .standard-hero-title h1 { font-size: clamp(4rem, 7.6vw, 8.6rem); }
.hero h1 { font-size: clamp(3.1rem, 8vw, 8.5rem); }
.contact-intro h1 { font-size: clamp(3.2rem, 7.4vw, 8.5rem); }
.identity-hero-copy h1 { font-size: clamp(4.2rem, 7.6vw, 8.4rem); }
```

### Type Scale

| Size (px) | Size (rem) | Weight | Line Height | Letter Spacing | Used On |
|-----------|------------|--------|-------------|----------------|---------|
| 128px | 8rem | 300 | 138.24px | -7.04px | h1, span |
| 83.6538px | 5.2284rem | 300 | 92.0192px | normal | nav, a, span |
| 67.84px | 4.24rem | 400 | 75.9808px | -3.0528px | span |
| 16px | 1rem | 400 | 24px | normal | html, head, meta, link |
| 12.8px | 0.8rem | 400 | 19.2px | normal | button, span, svg, path |
| 12px | 0.75rem | 400 | 14.4px | 0.6px | div, button, span, p |
| 11.52px | 0.72rem | 400 | 17.28px | 1.152px | footer, span, svg, path |
| 11.2px | 0.7rem | 400 | 16.8px | 1.152px | p, span, button |
| 10.4px | 0.65rem | 300 | 15.08px | 1.04px | span |
| 10px | 0.625rem | 400 | 12px | 1.3px | button, span, i, footer |
| 9.6px | 0.6rem | 300 | 13.44px | 0.336px | aside, span |
| 9px | 0.5625rem | 300 | 12.15px | 1.08px | span, p |
| 8px | 0.5rem | 400 | 9.6px | 0.72px | span |

### Heading Scale

```css
h1 { font-size: 128px; font-weight: 300; line-height: 138.24px; }
h2 { font-size: 16px; font-weight: 400; line-height: 24px; }
```

### Body Text

```css
body { font-size: 12px; font-weight: 400; line-height: 14.4px; }
```

### Font Weights in Use

`400` (241x), `300` (93x)

## Spacing

| Token | Value | Rem |
|-------|-------|-----|
| spacing-1 | 1px | 0.0625rem |
| spacing-10 | 10px | 0.625rem |
| spacing-24 | 24px | 1.5rem |
| spacing-27 | 27px | 1.6875rem |
| spacing-38 | 38px | 2.375rem |
| spacing-48 | 48px | 3rem |
| spacing-51 | 51px | 3.1875rem |
| spacing-56 | 56px | 3.5rem |
| spacing-63 | 63px | 3.9375rem |
| spacing-102 | 102px | 6.375rem |
| spacing-179 | 179px | 11.1875rem |

## Border Radii

| Label | Value | Count |
|-------|-------|-------|
| full | 50px | 3 |

## CSS Custom Properties

### Colors

```css
--muted: #8b8982;
--tw-ring-offset-shadow: 0 0 #0000;
--tw-ring-shadow: 0 0 #0000;
--tw-inset-ring-shadow: 0 0 #0000;
--browser-bg: #ffffff;
--tw-ring-offset-color: #fff;
--color-white: #fff;
--tw-border-style: solid;
--tw-ring-offset-width: 0px;
--color-black: #000;
--mood-bg: rgb(255, 255, 255);
```

### Spacing

```css
--spacing: .25rem;
--tw-space-x-reverse: 0;
```

### Typography

```css
--font-editorial: "Iowan Old Style", "Baskerville", "Times New Roman", "Noto Serif TC", serif;
--font-body: Arial, "Noto Sans TC", "PingFang TC", "Microsoft JhengHei", sans-serif;
--leading-relaxed: 1.625;
--leading-snug: 1.375;
--text-lg: 1.125rem;
--leading-normal: 1.5;
--text-base--line-height: calc(1.5 / 1);
--font-mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
--font-weight-semibold: 600;
--text-sm: .875rem;
--text-lg--line-height: calc(1.75 / 1.125);
--leading-tight: 1.25;
--font-sans: ui-sans-serif, system-ui, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
--text-sm--line-height: calc(1.25 / .875);
--text-xs--line-height: calc(1 / .75);
--tracking-widest: .1em;
--text-xs: .75rem;
--default-font-family: ui-sans-serif, system-ui, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
--font-weight-normal: 400;
--font-weight-medium: 500;
--text-base: 1rem;
--default-mono-font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
--tracking-tight: -.025em;
```

### Shadows

```css
--tw-inset-shadow-alpha: 100%;
--tw-drop-shadow-alpha: 100%;
--tw-inset-shadow: 0 0 #0000;
--tw-shadow-alpha: 100%;
--tw-shadow: 0 0 #0000;
```

### Radii

```css
--radius-sm: .25rem;
--radius-xs: .125rem;
--radius-xl: .75rem;
--radius-md: .375rem;
--radius-lg: .5rem;
```

### Other

```css
--ink: #080808;
--ink-soft: #101010;
--paper: #dfddd5;
--paper-bright: #f1efe8;
--line: #dfddd53d;
--red: #3b0d0d;
--page-pad: clamp(1.25rem, 4vw, 4.5rem);
--desktop-media-max: min(68rem, 126svh);
--ease-in-out: cubic-bezier(.4, 0, .2, 1);
--aspect-video: 16 / 9;
--mood-fg: rgb(9, 9, 9);
--mood-line: color-mix(in srgb,rgb(9, 9, 9) 30%,transparent);
--default-transition-timing-function: cubic-bezier(.4, 0, .2, 1);
--tw-outline-style: solid;
--tw-translate-z: 0;
--tw-scale-y: 1;
--tw-translate-y: 0;
--ease-out: cubic-bezier(0, 0, .2, 1);
--animate-spin: spin 1s linear infinite;
--tw-content: "";
--tw-scale-z: 1;
--tw-translate-x: 0;
--container-sm: 24rem;
--tw-scroll-snap-strictness: proximity;
--tw-scale-x: 1;
--container-lg: 32rem;
--default-transition-duration: .15s;
--animate-pulse: pulse 2s cubic-bezier(.4, 0, .6, 1) infinite;
--container-xs: 20rem;
```

### Semantic

```css
--red: #3b0d0d;
```

## Transitions & Animations

**Easing functions:** `cubic-bezier(0.22, 1, 0.36, 1)`, `cubic-bezier(0.4, 0, 0.2, 1)`

**Durations:** `0.24s`, `0.48s`, `0.42s`, `0.28s`, `0.22s`, `0.18s`, `0.25s`, `0.32s`, `0.2s`

### Common Transitions

```css
transition: --mood-bg 0.24s, --mood-fg 0.24s;
transition: all;
transition: translate 0.48s cubic-bezier(0.22, 1, 0.36, 1);
transition: transform 0.42s cubic-bezier(0.22, 1, 0.36, 1);
transition: border-color 0.24s;
transition: transform 0.28s cubic-bezier(0.4, 0, 0.2, 1);
transition: opacity 0.24s, transform 0.28s cubic-bezier(0.22, 1, 0.36, 1);
transition: color 0.22s;
transition: opacity 0.18s, visibility 0.18s, transform 0.25s cubic-bezier(0.22, 1, 0.36, 1);
transition: transform 0.32s cubic-bezier(0.22, 1, 0.36, 1);
```

### Keyframe Animations

**local-case-light**
```css
@keyframes local-case-light {
  0% { opacity: 0; }
  100% { opacity: 1; }
}
```

**exchange-tray-close**
```css
@keyframes exchange-tray-close {
  0%, 75% { opacity: 1; }
  100% { opacity: 0; visibility: hidden; }
}
```

**exchange-tray-open**
```css
@keyframes exchange-tray-open {
  0% { opacity: 0; }
  25%, 100% { opacity: 1; }
}
```

**exchange-paper-out**
```css
@keyframes exchange-paper-out {
  0% { opacity: 1; transform: translate(0px) scale(1); }
  80% { opacity: 1; }
  100% { transform: translate(var(--exchange-paper-x,calc(var(--exchange-size)*-.5)),0) scale(var(--exchange-paper-scale,.18)) rotateY(12deg); opacity: 0; }
}
```

**exchange-paper-in**
```css
@keyframes exchange-paper-in {
  0% { transform: translate(var(--exchange-paper-x,calc(var(--exchange-size)*-.5)),0) scale(var(--exchange-paper-scale,.18)) rotateY(-12deg); opacity: 0; }
  18% { opacity: 1; }
  100% { opacity: 1; transform: translate(0px) scale(1); }
}
```

**exchange-case-out**
```css
@keyframes exchange-case-out {
  0%, 67.742% { opacity: 1; transform: translateY(-50%) scale(1); }
  100% { opacity: 0; transform: translate(calc(-50% - var(--exchange-direction)*100%),-43%) scale(.86); }
}
```

**exchange-case-in**
```css
@keyframes exchange-case-in {
  0% { opacity: 0; transform: translate(calc(-50% + var(--exchange-direction)*100%),-43%) scale(.86); }
  100% { opacity: 1; transform: translateY(-50%) scale(1); }
}
```

**exchange-lid-close**
```css
@keyframes exchange-lid-close {
  0% { transform: translateZ(var(--case-half)) rotateY(-180deg); }
  100% { transform: translateZ(var(--case-half)) rotateY(0deg); }
}
```

**exchange-lid-open**
```css
@keyframes exchange-lid-open {
  0% { transform: translateZ(var(--case-half)) rotateY(0deg); }
  100% { transform: translateZ(var(--case-half)) rotateY(-180deg); }
}
```

**exchange-dismiss**
```css
@keyframes exchange-dismiss {
  100% { opacity: 0; }
}
```

## Component Patterns

Detected UI component patterns and their most common styles:

### Buttons (7 instances)

```css
.buttons {
  color: rgb(9, 9, 9);
  font-size: 10px;
  font-weight: 400;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### Links (8 instances)

```css
.links {
  color: rgb(9, 9, 9);
  font-size: 83.6538px;
  font-weight: 300;
}
```

### Navigation (2 instances)

```css
.navigation {
  background-color: rgb(255, 255, 255);
  color: rgb(9, 9, 9);
  padding-top: 24px;
  padding-bottom: 24px;
  padding-left: 63.25px;
  padding-right: 63.25px;
  position: sticky;
}
```

### Footer (8 instances)

```css
.footer {
  background-color: rgb(255, 255, 255);
  color: rgb(9, 9, 9);
  padding-top: 0px;
  padding-bottom: 0px;
  font-size: 12px;
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

### Dropdowns (54 instances)

```css
.dropdowns {
  background-color: rgb(244, 242, 235);
  border-radius: 0px;
  border-color: rgb(9, 9, 9);
  padding-top: 0px;
}
```

## Component Clusters

Reusable component instances grouped by DOM structure and style similarity:

### Button — 2 instances, 1 variant

**Variant 1** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(9, 9, 9);
  padding: 0px 4px 0px 4px;
  border-radius: 0px;
  border: 0px none rgb(9, 9, 9);
  font-size: 10px;
  font-weight: 400;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(9, 9, 9);
  padding: 0px 0px 0px 0px;
  border-radius: 50%;
  border: 0px none rgb(9, 9, 9);
  font-size: 16px;
  font-weight: 400;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(9, 9, 9);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(9, 9, 9);
  font-size: 12.8px;
  font-weight: 400;
```

## Layout System

**10 grid containers** and **32 flex containers** detected.

### The System

- **Column system** — 2 columns
- **Gap scale** — 2px · 4px · 10px · 12px · 16px · 17.6px · 20px · 24px
- **Fluid layout** — 12 clamp/viewport declarations

```css
html body .collection-menu-caption { padding-inline: clamp(40px, 8vw, 128px); }
html body dialog.collection-menu-dialog nav.collection-menu-navigation > a { padding: 0px clamp(40px, 8vw, 128px); }
.edition-work .project-heading { padding: clamp(42px, 7vw, 110px) 5% 38px; }
.exchange-fold-leaf > .exchange-page-viewport { width: var(--exchange-viewport-width,100vw); }
.home-form-poster { padding: clamp(1rem,3vw,3rem) var(--home-pad) clamp(2rem,4vw,4rem); }
.home-poster .home-practice { padding: clamp(2rem,4vw,4rem) var(--home-pad) clamp(5rem,8vw,8rem); }
```

### Container Widths

| Max Width | Padding |
|-----------|---------|
| 100% | 0px |

### Grid Column Patterns

| Columns | Usage Count |
|---------|-------------|
| 1-column | 5x |
| 2-column | 2x |
| 3-column | 1x |

### Grid Templates

```css
grid-template-columns: 21.5938px 1115.44px;
gap: normal 25.6px;
grid-template-columns: 503.719px 503.734px 107.172px;
gap: 32px 24px;
grid-template-columns: 1026.09px 88.4062px;
gap: 24px;
grid-template-columns: none;
grid-template-columns: 40.4062px;
```

### Flex Patterns

| Direction/Wrap | Count |
|----------------|-------|
| row/nowrap | 23x |
| column/nowrap | 9x |

**Gap values:** `normal 25.6px`, `2px`, `4px normal`, `10px`, `10.4px`, `12px`, `16px`, `17.6px`, `18px`, `20px`, `24px`, `32px 24px`

## Accessibility (WCAG 2.1)

**Overall Score: 100%** — 0 passing, 0 failing color pairs

## Dark Mode

The site has a distinct dark mode color scheme:

- **Primary:** `#b64d2b`
- **Secondary:** `#f4f2eb`
- **Backgrounds:** `#ffffff`, `#050505`
- **Text:** `#000000`, `#dfddd5`, `#090909`, `#252722`, `#72736b`

### Dark Mode CSS Variables

```css
--muted: #8b8982;
--tw-ring-offset-shadow: 0 0 #0000;
--tw-ring-shadow: 0 0 #0000;
--tw-inset-ring-shadow: 0 0 #0000;
--browser-bg: #ffffff;
--tw-ring-offset-color: #fff;
--color-white: #fff;
--tw-border-style: solid;
--tw-ring-offset-width: 0px;
--color-black: #000;
--mood-bg: rgb(255, 255, 255);
--spacing: .25rem;
--tw-space-x-reverse: 0;
--font-editorial: "Iowan Old Style", "Baskerville", "Times New Roman", "Noto Serif TC", serif;
--font-body: Arial, "Noto Sans TC", "PingFang TC", "Microsoft JhengHei", sans-serif;
--leading-relaxed: 1.625;
--leading-snug: 1.375;
--text-lg: 1.125rem;
--leading-normal: 1.5;
--text-base--line-height: calc(1.5 / 1);
--font-mono: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
--font-weight-semibold: 600;
--text-sm: .875rem;
--text-lg--line-height: calc(1.75 / 1.125);
--leading-tight: 1.25;
--font-sans: ui-sans-serif, system-ui, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
--text-sm--line-height: calc(1.25 / .875);
--text-xs: .75rem;
--default-font-family: ui-sans-serif, system-ui, sans-serif, "Apple Color Emoji", "Segoe UI Emoji", "Segoe UI Symbol", "Noto Color Emoji";
--tracking-widest: .1em;
--text-xs--line-height: calc(1 / .75);
--font-weight-normal: 400;
--font-weight-medium: 500;
--text-base: 1rem;
--default-mono-font-family: ui-monospace, SFMono-Regular, Menlo, Monaco, Consolas, "Liberation Mono", "Courier New", monospace;
--tracking-tight: -.025em;
--tw-inset-shadow-alpha: 100%;
--tw-drop-shadow-alpha: 100%;
--tw-inset-shadow: 0 0 #0000;
--tw-shadow-alpha: 100%;
--tw-shadow: 0 0 #0000;
--radius-sm: .25rem;
--radius-xs: .125rem;
--radius-xl: .75rem;
--radius-md: .375rem;
--radius-lg: .5rem;
--ink: #080808;
--ink-soft: #101010;
--paper: #dfddd5;
--paper-bright: #f1efe8;
--line: #dfddd53d;
--red: #3b0d0d;
--page-pad: clamp(1.25rem, 4vw, 4.5rem);
--desktop-media-max: min(68rem, 126svh);
--ease-in-out: cubic-bezier(.4, 0, .2, 1);
--aspect-video: 16 / 9;
--mood-fg: rgb(9, 9, 9);
--mood-line: color-mix(in srgb,rgb(9, 9, 9) 30%,transparent);
--default-transition-timing-function: cubic-bezier(.4, 0, .2, 1);
--tw-outline-style: solid;
--tw-translate-z: 0;
--tw-scale-y: 1;
--tw-translate-y: 0;
--ease-out: cubic-bezier(0, 0, .2, 1);
--animate-spin: spin 1s linear infinite;
--tw-content: "";
--tw-scale-z: 1;
--tw-translate-x: 0;
--container-sm: 24rem;
--tw-scroll-snap-strictness: proximity;
--tw-scale-x: 1;
--container-lg: 32rem;
--default-transition-duration: .15s;
--animate-pulse: pulse 2s cubic-bezier(.4, 0, .6, 1) infinite;
--container-xs: 20rem;
success: [object Object];
warning: [object Object];
error: [object Object];
info: [object Object];
```

## Design System Score

**Overall: 84/100 (Grade: B)**

| Category | Score |
|----------|-------|
| Color Discipline | 100/100 |
| Typography Consistency | 80/100 |
| Spacing System | 70/100 |
| Shadow Consistency | 85/100 |
| Border Radius Consistency | 100/100 |
| Accessibility | 100/100 |
| CSS Tokenization | 100/100 |

**Strengths:** Tight, disciplined color palette, Clean elevation system, Consistent border radii, Strong accessibility compliance, Good CSS variable tokenization

**Issues:**
- 152 !important rules — prefer specificity over overrides
- 92% of CSS is unused — consider purging
- 5902 duplicate CSS declarations

## Z-Index Map

**7 unique z-index values** across 2 layers.

| Layer | Range | Elements |
|-------|-------|----------|
| sticky | 20,80 | header.p.o.r.t.f.o.l.i.o.-.h.e.a.d.e.r. .s.m.a.r.t.-.h.e.a.d.e.r, button.s.i.t.e.-.r.e.t.u.r.n.-.t.o.p. .r.e.a.d.i.n.g.-.r.e.t.u.r.n |
| base | 0,5 | div.h.o.m.e.-.f.o.r.m.-.p.l.a.n.e, div.h.o.m.e.-.f.o.r.m.-.p.l.a.n.e, div.h.o.m.e.-.f.o.r.m.-.p.l.a.n.e |

## SVG Icons

**5 unique SVG icons** detected. Dominant style: **filled**.

| Size Class | Count |
|------------|-------|
| xs | 1 |
| sm | 2 |
| md | 1 |
| xl | 1 |

**Icon colors:** `currentColor`, `rgb(0, 0, 0)`, `rgb(9, 9, 9)`

## Font Files

| Family | Source | Weights | Styles |
|--------|--------|---------|--------|
| Source Code Variable | self-hosted | 200 900 | normal |

## Motion Language

**Feel:** responsive · **Scroll-linked:** yes

### Duration Tokens

| name | value | ms |
|---|---|---|
| `sm` | `180ms` | 180 |
| `md` | `280ms` | 280 |
| `lg` | `420ms` | 420 |

### Easing Families

- **ease-out** (11 uses) — `cubic-bezier(0.22, 1, 0.36, 1)`
- **custom** (4 uses) — `cubic-bezier(0.4, 0, 0.2, 1)`

### Keyframes In Use

| name | kind | properties | uses |
|---|---|---|---|
| `portfolio-contact-stop-escape` | slide | opacity, transform, animation-timing-function | 1 |
| `brand-draw` | custom | stroke-dashoffset | 3 |

## Component Anatomy

### button — 4 instances

**Slots:** label

## Brand Voice

**Tone:** neutral · **Pronoun:** third-person · **Headings:** Sentence case (tight)

### Top CTA Verbs

- **menu** (1)
- **replay** (1)

### Button Copy Patterns

- "menu
close" (1×)
- "replay overture" (1×)
- "© 2026" (1×)

### Sample Headings

> Let’s
give it
form.
> Spatial & graphic design
> Let’s
give it
form.
> Spatial & graphic design

## Page Intent

**Type:** `landing` (confidence 0.45)
**Description:** Edison Fang Workshop is a spatial design practice in Taichung, Taiwan, working across interiors, exhibitions, visual identity and spatial studies.

## Section Roles

Reading order (top→bottom): content → nav → nav → nav → footer → content → sidebar → content → content → footer

| # | Role | Heading | Confidence |
|---|------|---------|------------|
| 0 | content | Let’s
give it
form. | 0.3 |
| 1 | nav | — | 0.4 |
| 2 | nav | — | 0.4 |
| 3 | nav | — | 0.9 |
| 4 | footer | — | 0.95 |
| 5 | content | Let’s
give it
form. | 0.3 |
| 6 | sidebar | — | 0.4 |
| 7 | content | Spatial & graphic design | 0.3 |
| 8 | content | — | 0.3 |
| 9 | footer | — | 0.95 |

## Material Language

**Label:** `flat` (confidence 0)

| Metric | Value |
|--------|-------|
| Avg saturation | 0.125 |
| Shadow profile | none |
| Avg shadow blur | 0px |
| Max radius | 50px |
| backdrop-filter in use | no |
| Gradients | 0 |

## Quick Start

To recreate this design in a new project:

1. **Install fonts:** Add `Arial` from Google Fonts or your font provider
2. **Import CSS variables:** Copy `variables.css` into your project
3. **Tailwind users:** Use the generated `tailwind.config.js` to extend your theme
4. **Design tokens:** Import `design-tokens.json` for tooling integration
