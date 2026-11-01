# Design Language: Agence d'architecture à Paris : rénovation, réhabilitation — PDA

> Extracted from `https://pda.archi` on November 1, 2026
> 917 elements analyzed

This document describes the complete design language of the website. It is structured for AI/LLM consumption — use it to faithfully recreate the visual design in any framework.

## Color Palette

### Primary Colors

| Role | Hex | RGB | HSL | Usage Count |
|------|-----|-----|-----|-------------|
| Primary | `#e82428` | rgb(232, 36, 40) | hsl(359, 81%, 53%) | 2 |
| Secondary | `#d6d2c8` | rgb(214, 210, 200) | hsl(43, 15%, 81%) | 38 |
| Accent | `#e3e0d9` | rgb(227, 224, 217) | hsl(42, 15%, 87%) | 24 |

### Tonal Ramps

Generated in OKLCH from each role colour, so the steps are perceptually even. The site's own colour keeps its position in the ladder.

| Role | 50 | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | 950 |
|------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| primary | `#ffd1c4` | `#ffc1b3` | `#ffaa9c` | `#ff877a` | `#ff584f` | **`#e82428`** | `#cc0016` | `#aa0002` | `#900000` | `#780000` | `#490000` |
| secondary | `#f8f5ef` | `#eceae3` | **`#d6d2c8`** | `#c3c0b8` | `#a39f96` | `#858279` | `#6f6c63` | `#59564f` | `#494640` | `#3b3833` | `#201f1b` |
| accent | `#f7f5f1` | `#eceae5` | **`#e3e0d9`** | `#c2c0ba` | `#a29f99` | `#84827b` | `#6e6c66` | `#595651` | `#484642` | `#3a3935` | `#201f1c` |
| neutral | `#f9f5ec` | `#eeeadf` | `#ddd9cd` | **`#c2bcad`** | `#a59f91` | `#878274` | `#716c5f` | `#5b564b` | `#4a463c` | `#3c3830` | `#211f19` |

### Semantic Pairs

| Role | Background | Foreground | Contrast | Level |
|------|------------|------------|----------|-------|
| `surface.page` | `#eceae5` | `#000000` | 17.47:1 | AAA |
| `surface.raised` | `#161616` | `#eceae5` | 15.05:1 | AAA |
| `action.primary` | `#e82428` | `#000000` | 4.71:1 | AA |
| `action.secondary` | `#d6d2c8` | `#000000` | 13.91:1 | AAA |
| `action.accent` | `#e3e0d9` | `#000000` | 15.93:1 | AAA |

### Dominance

Share of painted background area — what the page looks like, as opposed to what it declares most often.

- `#eceae5` — 60%
- `#161616` — 31%
- `#000000` — 9%
- `#272726` — 0%
- `#e3e0d9` — 0%
- `#d6d2c8` — 0%

### Neutral Colors

| Hex | HSL | Usage Count |
|-----|-----|-------------|
| `#eceae5` | hsl(43, 16%, 91%) | 811 |
| `#161616` | hsl(0, 0%, 9%) | 797 |
| `#000000` | hsl(0, 0%, 0%) | 158 |
| `#c2bcad` | hsl(43, 15%, 72%) | 56 |
| `#272726` | hsl(60, 1%, 15%) | 8 |

### Background Colors

Used on large-area elements: `#eceae5`, `#161616`, `#020202`

### Text Colors

Text color palette: `#000000`, `#161616`, `#d8d4ca`, `#eceae5`, `#c2bcad`, `#e3e0d9`, `#d6d2c8`, `#e82428`

### Gradients

```css
background-image: linear-gradient(233.55deg, rgb(22, 22, 22) 17.71%, rgba(22, 22, 22, 0) 38.26%), linear-gradient(194.09deg, rgb(22, 22, 22) 26.86%, rgba(22, 22, 22, 0) 56.84%);
```

### Full Color Inventory

| Hex | Contexts | Count |
|-----|----------|-------|
| `#eceae5` | background, text, border | 811 |
| `#161616` | text, border, background | 797 |
| `#000000` | text, border, background | 158 |
| `#c2bcad` | text, border | 56 |
| `#d6d2c8` | text, border, background | 38 |
| `#e3e0d9` | background, text, border | 24 |
| `#272726` | background | 8 |
| `#e82428` | text, border | 2 |

## Typography

### Font Families

- **SequelSans** — used for all (197 elements)

### Type System

- **Scale ratio** — 1.2 (minor third), anchored at 17.7778px · 78% of sizes sit on the ladder
- **Measure** — ~108 characters per line (wide)
- **Fluid type** — 1 clamp/viewport font sizes

### Named Scale

| Role | Size | Weight | Line Height | Tracking |
|------|------|--------|-------------|----------|
| `h1` | 53.3333px / 3.3333rem | 600 | 53.3333px | normal |
| `h2` | 42.6667px / 2.6667rem | 600 | 42.6667px | normal |
| `title-1` | 32px / 2rem | 600 | 32px | normal |
| `h3` | 21.3333px / 1.3333rem | 600 | 21.3333px | normal |
| `title-2` | 17.7778px / 1.1111rem | 500 | 17.7778px | normal |
| `body` | 13.3333px / 0.8333rem | 500 | 14.6667px | normal |
| `body-sm` | 11.5556px / 0.7222rem | 500 | 11.5556px | normal |
| `micro` | 9.77778px / 0.6111rem | 500 | 9.77778px | normal |
| `sm-3` | 8.88889px / 0.5556rem | 400 | normal | normal |

### Fluid Declarations

```css
html { font-size: calc((100vw/var(--size))*10); }
```

### Type Scale

| Size (px) | Size (rem) | Weight | Line Height | Letter Spacing | Used On |
|-----------|------------|--------|-------------|----------------|---------|
| 53.3333px | 3.3333rem | 600 | 53.3333px | normal | div, video, svg, path |
| 42.6667px | 2.6667rem | 600 | 42.6667px | normal | div, a, p, h2 |
| 32px | 2rem | 600 | 32px | normal | h2, div, blockquote, a |
| 21.3333px | 1.3333rem | 600 | 21.3333px | normal | div, span, h3, ul |
| 17.7778px | 1.1111rem | 500 | 17.7778px | normal | h2, h3 |
| 13.3333px | 0.8333rem | 500 | 14.6667px | normal | body, div, svg, path |
| 11.5556px | 0.7222rem | 500 | 11.5556px | normal | div, span |
| 9.77778px | 0.6111rem | 500 | 9.77778px | normal | span, div, time, h2 |
| 8.88889px | 0.5556rem | 400 | normal | normal | html, head, meta, title |

### Heading Scale

```css
h1 { font-size: 53.3333px; font-weight: 600; line-height: 53.3333px; }
h2 { font-size: 42.6667px; font-weight: 600; line-height: 42.6667px; }
h2 { font-size: 32px; font-weight: 600; line-height: 32px; }
h3 { font-size: 21.3333px; font-weight: 600; line-height: 21.3333px; }
h2 { font-size: 17.7778px; font-weight: 500; line-height: 17.7778px; }
h3 { font-size: 13.3333px; font-weight: 500; line-height: 14.6667px; }
h2 { font-size: 9.77778px; font-weight: 500; line-height: 9.77778px; }
```

### Body Text

```css
body { font-size: 13.3333px; font-weight: 500; line-height: 14.6667px; }
```

### Font Weights in Use

`500` (663x), `600` (177x), `400` (77x)

## Spacing

**Base unit:** 2px

| Token | Value | Rem |
|-------|-------|-----|
| spacing-2 | 2px | 0.125rem |
| spacing-46 | 46px | 2.875rem |
| spacing-60 | 60px | 3.75rem |
| spacing-89 | 89px | 5.5625rem |
| spacing-133 | 133px | 8.3125rem |
| spacing-164 | 164px | 10.25rem |
| spacing-230 | 230px | 14.375rem |
| spacing-489 | 489px | 30.5625rem |

## Border Radii

| Label | Value | Count |
|-------|-------|-------|
| lg | 11px | 1 |
| xl | 18px | 1 |
| full | 100px | 19 |

## CSS Custom Properties

### Colors

```css
--cc-modal-border-radius: .5rem;
--cc-btn-border-radius: .4rem;
--cc-link-color: var(--cc-btn-primary-bg);
--cc-bg: #fff;
--cc-primary-color: #2c2f31;
--cc-secondary-color: #5e6266;
--cc-btn-primary-bg: #30363c;
--cc-btn-primary-color: #fff;
--cc-btn-primary-border-color: var(--cc-btn-primary-bg);
--cc-btn-primary-hover-bg: #000;
--cc-btn-primary-hover-color: #fff;
--cc-btn-primary-hover-border-color: var(--cc-btn-primary-hover-bg);
--cc-btn-secondary-bg: #eaeff2;
--cc-btn-secondary-color: var(--cc-primary-color);
--cc-btn-secondary-border-color: var(--cc-btn-secondary-bg);
--cc-btn-secondary-hover-bg: #d4dae0;
--cc-btn-secondary-hover-color: #000;
--cc-btn-secondary-hover-border-color: #d4dae0;
--cc-separator-border-color: #f0f4f7;
--cc-toggle-on-bg: var(--cc-btn-primary-bg);
--cc-toggle-off-bg: #667481;
--cc-toggle-on-knob-bg: #fff;
--cc-toggle-off-knob-bg: var(--cc-toggle-on-knob-bg);
--cc-toggle-enabled-icon-color: var(--cc-bg);
--cc-toggle-disabled-icon-color: var(--cc-bg);
--cc-toggle-readonly-bg: #d5dee2;
--cc-toggle-readonly-knob-bg: #fff;
--cc-toggle-readonly-knob-icon-color: var(--cc-toggle-readonly-bg);
--cc-section-category-border: var(--cc-cookie-category-block-bg);
--cc-cookie-category-block-bg: #f0f4f7;
--cc-cookie-category-block-border: #f0f4f7;
--cc-cookie-category-block-hover-bg: #e9eff4;
--cc-cookie-category-block-hover-border: #e9eff4;
--cc-cookie-category-expanded-block-bg: transparent;
--cc-cookie-category-expanded-block-hover-bg: #dee4e9;
--cc-overlay-bg: rgba(0,0,0,.65);
--cc-webkit-scrollbar-bg: var(--cc-section-category-border);
--cc-webkit-scrollbar-hover-bg: var(--cc-btn-primary-hover-bg);
--cc-footer-bg: var(--cc-btn-secondary-bg);
--cc-footer-color: var(--cc-secondary-color);
--cc-footer-border-color: #e4eaed;
--cc-pm-toggle-border-radius: 4em;
--tw-ring-shadow: 0 0 #0000;
--color-red-900: oklch(39.6% .141 25.723);
--tw-inset-ring-shadow: 0 0 #0000;
--color-orange: #ff8a4b;
--tw-ring-offset-color: #fff;
--color-white: #eceae5;
--tw-ring-offset-width: 0px;
--color-green: #00e61f;
--color-light-grey: #e3e0d9;
--color-sky: #91caf8;
--color-soft-grey: #d8d4ca;
--tw-ring-offset-shadow: 0 0 #0000;
--border-width-px: 1px;
--color-deep-grey: #8a857b;
--color-red-100: oklch(93.6% .032 17.717);
--tw-border-style: solid;
--color-error: #e82428;
--color-black: #161616;
--color-neutral-grey: #c2bcad;
--color-off-black: #272726;
```

### Spacing

```css
--cc-modal-margin: 1rem;
--size: 390;
--margin: 1.6rem;
--spacing-px: 1px;
--spacing-full: 100%;
--spacing-col-5: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*5 + .8rem*4);
--spacing-col-2: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*2 + .8rem);
--spacing-margin: 2rem;
--spacing-col-3-half: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*3.5 + .8rem*2.5);
--spacing-col-3: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*3 + .8rem*2);
--spacing-col: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12) + .8rem);
--spacing-column: calc(1280px/12 - 2rem*2/12 - .8rem*11/12);
--spacing: .1rem;
--spacing-col-5-half: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*5.5 + .8rem*4.5);
--spacing-gutter: .8rem;
--spacing-col-4: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*4 + .8rem*3);
--spacing-header: 7rem;
```

### Typography

```css
--cc-font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
--text-132: 13.2rem;
--text-20: 2rem;
--font-body: "SequelSans",sans-serif;
--text-17: 1.7rem;
--font-mono: ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
--font-sans: ui-sans-serif,system-ui,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
--font-weight-bold: 700;
--text-72: 7.2rem;
--default-font-family: ui-sans-serif,system-ui,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
--text-xs--line-height: 1.33333;
--text-36: 3.6rem;
--text-84: 8.4rem;
--font-weight-semibold: 600;
--text-sm: .875rem;
--text-60: 6rem;
--text-48: 4.8rem;
--text-sm--line-height: 1.42857;
--text-11: 1.1rem;
--text-24: 2.4rem;
--text-xs: .75rem;
--font-weight-medium: 500;
--text-13: 1.3rem;
--text-15: 1.5rem;
--default-mono-font-family: ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
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
--radius-18: 1.8rem;
--radius-20: 2rem;
--radius-100: 100px;
```

### Other

```css
--cc-modal-transition-duration: .25s;
--cc-z-index: 2147483647;
--gutter: .8rem;
--vw: 100vw;
--vh: calc(var(--vh-initial,1vh)*100);
--vh-dynamic: calc(var(--vh-initial-dynamic,1vh)*100);
--column: calc(var(--vw)/6 - var(--margin)*2/6 - var(--gutter)*5/6);
--height-dynamic-px: max(1px,.1rem);
--transition-duration-smooth: .7s;
--height-screen-mobile: calc(8px*100);
--z-index-modal-backdrop: 19;
--height-screen: 100vh;
--tw-scale-z: 1;
--grid-template-columns-mobile: repeat(6,minmax(0,1fr));
--height-header: 7rem;
--default-transition-duration: .15s;
--transition-duration-normal: .45s;
--vh-initial-dynamic: 8px;
--ease-in-out: cubic-bezier(.4,0,.2,1);
--z-index-transition: 25;
--default-transition-timing-function: cubic-bezier(.4,0,.2,1);
--vh-initial: 8px;
--z-index-modal: 20;
--tw-translate-z: 0;
--tw-scale-y: 1;
--blur-xs: 4px;
--tw-translate-y: 0;
--ease-out: cubic-bezier(.23,1,.32,1);
--ease-alpha: cubic-bezier(.25,.46,.45,.9);
--tw-translate-x: 0;
--z-index-header: 10;
--tw-scale-x: 1;
--z-index-modal-content: 21;
--z-index-loader: 30;
--transition-duration-fast: .35s;
--grid-template-columns-desktop: repeat(12,minmax(0,1fr));
--blur-sm: 8px;
```

### Dependencies

```css
0: --cc-btn-primary-bg;
0: --cc-btn-primary-bg;
0: --cc-btn-primary-hover-bg;
0: --cc-primary-color;
0: --cc-btn-secondary-bg;
0: --cc-btn-primary-bg;
0: --cc-toggle-on-knob-bg;
0: --cc-bg;
0: --cc-bg;
0: --cc-toggle-readonly-bg;
0: --cc-cookie-category-block-bg;
0: --cc-section-category-border;
0: --cc-btn-primary-hover-bg;
0: --cc-btn-secondary-bg;
0: --cc-secondary-color;
0: --vh-initial;
0: --vh-initial-dynamic;
0: --vw;
1: --margin;
2: --gutter;
```

### Semantic

```css
--color-green: #00e61f;
--color-red-900: oklch(39.6% .141 25.723);
--color-red-100: oklch(93.6% .032 17.717);
--color-error: #e82428;
```

## Breakpoints

| Name | Value | Type |
|------|-------|------|
| sm | 640px | max-width |
| md | 768px | min-width |
| lg | 1024px | min-width |
| xl | 1280px | min-width |

## Transitions & Animations

**Easing functions:** `cubic-bezier(0.4, 0, 0.2, 1)`, `cubic-bezier(0.23, 1, 0.32, 1)`, `cubic-bezier(0.25, 0.46, 0.45, 0.9)`

**Durations:** `0.3s`, `0.35s`, `0.45s`, `0.7s`, `1s`, `0.1s`

### Common Transitions

```css
transition: all;
transition: color 0.3s cubic-bezier(0.4, 0, 0.2, 1), background-color 0.3s cubic-bezier(0.4, 0, 0.2, 1), border-color 0.3s cubic-bezier(0.4, 0, 0.2, 1), outline-color 0.3s cubic-bezier(0.4, 0, 0.2, 1), text-decoration-color 0.3s cubic-bezier(0.4, 0, 0.2, 1), fill 0.3s cubic-bezier(0.4, 0, 0.2, 1), stroke 0.3s cubic-bezier(0.4, 0, 0.2, 1), --tw-gradient-from 0.3s cubic-bezier(0.4, 0, 0.2, 1), --tw-gradient-via 0.3s cubic-bezier(0.4, 0, 0.2, 1), --tw-gradient-to 0.3s cubic-bezier(0.4, 0, 0.2, 1);
transition: opacity 0.35s cubic-bezier(0.23, 1, 0.32, 1);
transition: 0.3s cubic-bezier(0.23, 1, 0.32, 1);
transition: transform 0.45s cubic-bezier(0.23, 1, 0.32, 1), translate 0.45s cubic-bezier(0.23, 1, 0.32, 1), scale 0.45s cubic-bezier(0.23, 1, 0.32, 1), rotate 0.45s cubic-bezier(0.23, 1, 0.32, 1);
transition: color 0.45s cubic-bezier(0.23, 1, 0.32, 1), background-color 0.45s cubic-bezier(0.23, 1, 0.32, 1), border-color 0.45s cubic-bezier(0.23, 1, 0.32, 1), outline-color 0.45s cubic-bezier(0.23, 1, 0.32, 1), text-decoration-color 0.45s cubic-bezier(0.23, 1, 0.32, 1), fill 0.45s cubic-bezier(0.23, 1, 0.32, 1), stroke 0.45s cubic-bezier(0.23, 1, 0.32, 1), --tw-gradient-from 0.45s cubic-bezier(0.23, 1, 0.32, 1), --tw-gradient-via 0.45s cubic-bezier(0.23, 1, 0.32, 1), --tw-gradient-to 0.45s cubic-bezier(0.23, 1, 0.32, 1);
transition: 0.45s cubic-bezier(0.4, 0, 0.2, 1);
transition: opacity 0.45s cubic-bezier(0.23, 1, 0.32, 1);
transition: opacity 0.35s cubic-bezier(0.25, 0.46, 0.45, 0.9);
transition: scale 0.7s cubic-bezier(0.23, 1, 0.32, 1), background-color 0.35s cubic-bezier(0.23, 1, 0.32, 1), border-width 0.7s cubic-bezier(0.23, 1, 0.32, 1);
```

## Component Patterns

Detected UI component patterns and their most common styles:

### Buttons (14 instances)

```css
.buttons {
  background-color: rgb(227, 224, 217);
  color: rgb(22, 22, 22);
  font-size: 13.3333px;
  font-weight: 500;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### Inputs (1 instances)

```css
.inputs {
  color: rgb(236, 234, 229);
  border-color: rgb(236, 234, 229);
  border-radius: 0px;
  font-size: 13.3333px;
  padding-top: 10.6667px;
  padding-right: 14.2222px;
}
```

### Links (69 instances)

```css
.links {
  color: rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
}
```

### Navigation (3 instances)

```css
.navigation {
  color: rgb(22, 22, 22);
  padding-top: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  padding-right: 0px;
  position: fixed;
}
```

### Footer (1 instances)

```css
.footer {
  background-color: rgb(22, 22, 22);
  color: rgb(236, 234, 229);
  padding-top: 0px;
  padding-bottom: 0px;
  font-size: 13.3333px;
}
```

### Modals (2 instances)

```css
.modals {
  border-radius: 0px;
  padding-top: 0px;
  padding-right: 17.7778px;
}
```

### Badges (26 instances)

```css
.badges {
  background-color: rgb(227, 224, 217);
  color: rgb(22, 22, 22);
  font-size: 9.77778px;
  font-weight: 500;
  padding-top: 0px;
  padding-right: 0px;
  border-radius: 0px;
}
```

### ProgressBars (1 instances)

```css
.progressBars {
  background-color: rgb(236, 234, 229);
  color: rgb(22, 22, 22);
  border-radius: 0px;
  font-size: 53.3333px;
}
```

## Component Clusters

Reusable component instances grouped by DOM structure and style similarity:

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgb(227, 224, 217);
  color: rgb(22, 22, 22);
  padding: 8.88889px 14.2222px 8.88889px 14.2222px;
  border-radius: 100px;
  border: 0px solid rgb(22, 22, 22);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 4 instances, 2 variants

**Variant 1** (1 instance)

```css
  background: rgb(227, 224, 217);
  color: rgb(22, 22, 22);
  padding: 0px 0px 0px 0px;
  border-radius: 100px;
  border: 0px solid rgb(22, 22, 22);
  font-size: 13.3333px;
  font-weight: 500;
```

**Variant 2** (3 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 0px 0px 0px 0px;
  border-radius: 100px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 5 instances, 2 variants

**Variant 1** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

**Variant 2** (3 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(22, 22, 22);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(22, 22, 22);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 5 instances, 1 variant

**Variant 1** (5 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 0px 0px 0px 0px;
  border-radius: 3.35544e+07px;
  border: 6px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 5 instances, 2 variants

**Variant 1** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

**Variant 2** (3 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(22, 22, 22);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(22, 22, 22);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: oklab(0.937198 0.000208884 0.00704432 / 0.16);
  color: rgb(236, 234, 229);
  padding: 0px 0px 0px 0px;
  border-radius: 10.6667px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 53.3333px;
  font-weight: 600;
```

### Button — 3 instances, 2 variants

**Variant 1** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(194, 188, 173);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(194, 188, 173);
  font-size: 13.3333px;
  font-weight: 500;
```

**Variant 2** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(22, 22, 22);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px solid rgb(22, 22, 22);
  font-size: 13.3333px;
  font-weight: 500;
```

### Input — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 10.6667px 14.2222px 10.6667px 14.2222px;
  border-radius: 0px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(236, 234, 229);
  padding: 0px 17.7778px 0px 17.7778px;
  border-radius: 0px;
  border: 0px solid rgb(236, 234, 229);
  font-size: 13.3333px;
  font-weight: 500;
```

## Layout System

**32 grid containers** and **157 flex containers** detected.

### The System

- **Column system** — 12 columns (canonical page grid)
- **Gap scale** — 3.55556px · 7.11111px · 8.88889px · 10.6667px · 12.4444px · 14.2222px · 17.7778px · 28.4444px
- **Fluid layout** — 1 clamp/viewport declarations

```css
#cc-main .cm--bar { width: 100vw; }
```

### Container Widths

| Max Width | Padding |
|-----------|---------|
| 100% | 0px |

### Grid Column Patterns

| Columns | Usage Count |
|---------|-------------|
| 12-column | 23x |
| 1-column | 4x |
| 6-column | 2x |
| 14-column | 1x |
| 9-column | 1x |
| 4-column | 1x |

### Grid Templates

```css
grid-template-columns: 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px;
gap: 8.88889px 7.11111px;
grid-template-columns: 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px;
gap: normal 7.11111px;
grid-template-columns: 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px;
gap: normal 7.11111px;
grid-template-columns: 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px;
gap: normal 7.11111px;
grid-template-columns: 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px 97.1875px;
gap: normal 7.11111px;
```

### Flex Patterns

| Direction/Wrap | Count |
|----------------|-------|
| row/nowrap | 109x |
| column/nowrap | 48x |

**Gap values:** `normal 7.11111px`, `normal 10.6667px`, `normal 3.55556px`, `normal 8.88889px`, `normal 28.4444px`, `normal 14.2222px`, `normal 12.4444px`, `3.55556px normal`, `3.55556px`, `7.11111px normal`, `8.88889px 7.11111px`, `10.6667px normal`, `14.2222px normal`, `17.7778px normal`, `28.4444px 7.11111px`, `28.4444px normal`, `42.6667px normal`, `46.2222px normal`

## Accessibility (WCAG 2.1)

**Overall Score: 100%** — 15 passing, 0 failing color pairs

### Passing Color Pairs

| Foreground | Background | Ratio | Level |
|------------|------------|-------|-------|
| `#161616` | `#e3e0d9` | 13.73:1 | AAA |

## Dark Mode

The site has a distinct dark mode color scheme:

- **Primary:** `#e82428`
- **Secondary:** `#d6d2c8`
- **Backgrounds:** `#eceae5`, `#161616`, `#020202`
- **Text:** `#000000`, `#161616`, `#d8d4ca`, `#eceae5`, `#c2bcad`

### Dark Mode CSS Variables

```css
--cc-modal-border-radius: .5rem;
--cc-btn-border-radius: .4rem;
--cc-link-color: var(--cc-btn-primary-bg);
--cc-bg: #fff;
--cc-primary-color: #2c2f31;
--cc-secondary-color: #5e6266;
--cc-btn-primary-bg: #30363c;
--cc-btn-primary-color: #fff;
--cc-btn-primary-border-color: var(--cc-btn-primary-bg);
--cc-btn-primary-hover-bg: #000;
--cc-btn-primary-hover-color: #fff;
--cc-btn-primary-hover-border-color: var(--cc-btn-primary-hover-bg);
--cc-btn-secondary-bg: #eaeff2;
--cc-btn-secondary-color: var(--cc-primary-color);
--cc-btn-secondary-border-color: var(--cc-btn-secondary-bg);
--cc-btn-secondary-hover-bg: #d4dae0;
--cc-btn-secondary-hover-color: #000;
--cc-btn-secondary-hover-border-color: #d4dae0;
--cc-separator-border-color: #f0f4f7;
--cc-toggle-on-bg: var(--cc-btn-primary-bg);
--cc-toggle-off-bg: #667481;
--cc-toggle-on-knob-bg: #fff;
--cc-toggle-off-knob-bg: var(--cc-toggle-on-knob-bg);
--cc-toggle-enabled-icon-color: var(--cc-bg);
--cc-toggle-disabled-icon-color: var(--cc-bg);
--cc-toggle-readonly-bg: #d5dee2;
--cc-toggle-readonly-knob-bg: #fff;
--cc-toggle-readonly-knob-icon-color: var(--cc-toggle-readonly-bg);
--cc-section-category-border: var(--cc-cookie-category-block-bg);
--cc-cookie-category-block-bg: #f0f4f7;
--cc-cookie-category-block-border: #f0f4f7;
--cc-cookie-category-block-hover-bg: #e9eff4;
--cc-cookie-category-block-hover-border: #e9eff4;
--cc-cookie-category-expanded-block-bg: transparent;
--cc-cookie-category-expanded-block-hover-bg: #dee4e9;
--cc-overlay-bg: rgba(0,0,0,.65);
--cc-webkit-scrollbar-bg: var(--cc-section-category-border);
--cc-webkit-scrollbar-hover-bg: var(--cc-btn-primary-hover-bg);
--cc-footer-bg: var(--cc-btn-secondary-bg);
--cc-footer-color: var(--cc-secondary-color);
--cc-footer-border-color: #e4eaed;
--cc-pm-toggle-border-radius: 4em;
--tw-ring-shadow: 0 0 #0000;
--color-red-900: oklch(39.6% .141 25.723);
--tw-inset-ring-shadow: 0 0 #0000;
--color-orange: #ff8a4b;
--tw-ring-offset-color: #fff;
--color-white: #eceae5;
--tw-ring-offset-width: 0px;
--color-green: #00e61f;
--color-light-grey: #e3e0d9;
--color-sky: #91caf8;
--color-soft-grey: #d8d4ca;
--tw-ring-offset-shadow: 0 0 #0000;
--border-width-px: 1px;
--color-deep-grey: #8a857b;
--color-red-100: oklch(93.6% .032 17.717);
--tw-border-style: solid;
--color-error: #e82428;
--color-black: #161616;
--color-neutral-grey: #c2bcad;
--color-off-black: #272726;
--cc-modal-margin: 1rem;
--size: 390;
--margin: 1.6rem;
--spacing-px: 1px;
--spacing-full: 100%;
--spacing-col-5: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*5 + .8rem*4);
--spacing-col-2: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*2 + .8rem);
--spacing-margin: 2rem;
--spacing-col-3-half: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*3.5 + .8rem*2.5);
--spacing-col-3: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*3 + .8rem*2);
--spacing-col: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12) + .8rem);
--spacing-column: calc(1280px/12 - 2rem*2/12 - .8rem*11/12);
--spacing: .1rem;
--spacing-col-5-half: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*5.5 + .8rem*4.5);
--spacing-gutter: .8rem;
--spacing-col-4: calc(calc(1280px/12 - 2rem*2/12 - .8rem*11/12)*4 + .8rem*3);
--spacing-header: 7rem;
--cc-font-family: -apple-system,BlinkMacSystemFont,"Segoe UI",Roboto,Helvetica,Arial,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol";
--text-132: 13.2rem;
--text-20: 2rem;
--font-body: "SequelSans",sans-serif;
--text-17: 1.7rem;
--font-mono: ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
--font-sans: ui-sans-serif,system-ui,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
--font-weight-bold: 700;
--text-72: 7.2rem;
--text-xs--line-height: 1.33333;
--default-font-family: ui-sans-serif,system-ui,sans-serif,"Apple Color Emoji","Segoe UI Emoji","Segoe UI Symbol","Noto Color Emoji";
--text-36: 3.6rem;
--text-84: 8.4rem;
--font-weight-semibold: 600;
--text-sm: .875rem;
--text-48: 4.8rem;
--text-60: 6rem;
--text-sm--line-height: 1.42857;
--text-11: 1.1rem;
--text-24: 2.4rem;
--text-xs: .75rem;
--font-weight-medium: 500;
--text-13: 1.3rem;
--text-15: 1.5rem;
--default-mono-font-family: ui-monospace,SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace;
--tw-inset-shadow-alpha: 100%;
--tw-drop-shadow-alpha: 100%;
--tw-inset-shadow: 0 0 #0000;
--tw-shadow-alpha: 100%;
--tw-shadow: 0 0 #0000;
--radius-18: 1.8rem;
--radius-20: 2rem;
--radius-100: 100px;
--cc-modal-transition-duration: .25s;
--cc-z-index: 2147483647;
--gutter: .8rem;
--vw: 100vw;
--vh: calc(var(--vh-initial,1vh)*100);
--vh-dynamic: calc(var(--vh-initial-dynamic,1vh)*100);
--column: calc(var(--vw)/6 - var(--margin)*2/6 - var(--gutter)*5/6);
--height-dynamic-px: max(1px,.1rem);
--transition-duration-smooth: .7s;
--height-screen-mobile: calc(8px*100);
--z-index-modal-backdrop: 19;
--height-screen: 100vh;
--tw-scale-z: 1;
--grid-template-columns-mobile: repeat(6,minmax(0,1fr));
--default-transition-duration: .15s;
--height-header: 7rem;
--transition-duration-normal: .45s;
--vh-initial-dynamic: 8px;
--ease-in-out: cubic-bezier(.4,0,.2,1);
--z-index-transition: 25;
--default-transition-timing-function: cubic-bezier(.4,0,.2,1);
--vh-initial: 8px;
--z-index-modal: 20;
--tw-translate-z: 0;
--tw-scale-y: 1;
--tw-translate-y: 0;
--blur-xs: 4px;
--ease-out: cubic-bezier(.23,1,.32,1);
--ease-alpha: cubic-bezier(.25,.46,.45,.9);
--tw-translate-x: 0;
--z-index-header: 10;
--tw-scale-x: 1;
--z-index-modal-content: 21;
--z-index-loader: 30;
--transition-duration-fast: .35s;
--grid-template-columns-desktop: repeat(12,minmax(0,1fr));
--blur-sm: 8px;
--cc-link-color: --cc-btn-primary-bg;
--cc-btn-primary-border-color: --cc-btn-primary-bg;
--cc-btn-primary-hover-border-color: --cc-btn-primary-hover-bg;
--cc-btn-secondary-color: --cc-primary-color;
--cc-btn-secondary-border-color: --cc-btn-secondary-bg;
--cc-toggle-on-bg: --cc-btn-primary-bg;
--cc-toggle-off-knob-bg: --cc-toggle-on-knob-bg;
--cc-toggle-enabled-icon-color: --cc-bg;
--cc-toggle-disabled-icon-color: --cc-bg;
--cc-toggle-readonly-knob-icon-color: --cc-toggle-readonly-bg;
--cc-section-category-border: --cc-cookie-category-block-bg;
--cc-webkit-scrollbar-bg: --cc-section-category-border;
--cc-webkit-scrollbar-hover-bg: --cc-btn-primary-hover-bg;
--cc-footer-bg: --cc-btn-secondary-bg;
--cc-footer-color: --cc-secondary-color;
--vh: --vh-initial;
--vh-dynamic: --vh-initial-dynamic;
--column: --vw,--margin,--gutter;
success: [object Object];
warning: [object Object];
error: [object Object];
info: [object Object];
```

## Design System Score

**Overall: 92/100 (Grade: A)**

| Category | Score |
|----------|-------|
| Color Discipline | 100/100 |
| Typography Consistency | 92/100 |
| Spacing System | 85/100 |
| Shadow Consistency | 100/100 |
| Border Radius Consistency | 100/100 |
| Accessibility | 100/100 |
| CSS Tokenization | 100/100 |

**Strengths:** Tight, disciplined color palette, Consistent typography system, Well-defined spacing scale, Clean elevation system, Consistent border radii, Strong accessibility compliance, Good CSS variable tokenization

**Issues:**
- 67 !important rules — prefer specificity over overrides
- 1425 duplicate CSS declarations

## Gradients

**2 unique gradients** detected.

| Type | Direction | Stops | Classification |
|------|-----------|-------|----------------|
| linear | 233.55deg | 2 | brand |
| linear | 194.09deg | 2 | brand |

```css
background: linear-gradient(233.55deg, rgb(22, 22, 22) 17.71%, rgba(22, 22, 22, 0) 38.26%);
background: linear-gradient(194.09deg, rgb(22, 22, 22) 26.86%, rgba(22, 22, 22, 0) 56.84%);
```

## Z-Index Map

**6 unique z-index values** across 2 layers.

| Layer | Range | Elements |
|-------|-------|----------|
| sticky | 10,20 | header.h.e.a.d.e.r. .f.i.x.e.d. .t.o.p.-.0. .l.e.f.t.-.0. .w.-.f.u.l.l. .h.-.s.c.r.e.e.n.-.m.o.b.i.l.e. .x.l.:.h.-.s.c.r.e.e.n. .z.-.h.e.a.d.e.r. .p.o.i.n.t.e.r.-.e.v.e.n.t.s.-.n.o.n.e, div.r.e.l.a.t.i.v.e. .t.o.p.-.0. .l.e.f.t.-.0. .w.-.f.u.l.l. .h.-.h.e.a.d.e.r. .g.r.i.d.-.w. .i.t.e.m.s.-.c.e.n.t.e.r. .t.e.x.t.-.b.l.a.c.k. .z.-.1.0, div.f.i.x.e.d. .t.o.p.-.0. .l.e.f.t.-.0. .w.-.f.u.l.l. .h.-.d.v.h. .x.l.:.h.-.s.c.r.e.e.n. .f.l.e.x.-.c.e.n.t.e.r. .p.x.-.m.a.r.g.i.n. .c.o.n.t.e.n.t.-.c.e.n.t.e.r. .t.o.u.c.h.:.l.a.n.d.s.c.a.p.e.:.p.x.-.0. .o.v.e.r.f.l.o.w.-.h.i.d.d.e.n. .p.o.i.n.t.e.r.-.e.v.e.n.t.s.-.n.o.n.e. .z.-.m.o.d.a.l |
| base | 1,4 | div.r.e.l.a.t.i.v.e. .z.-.1, div.a.b.s.o.l.u.t.e.-.f.u.l.l. .m.a.x.-.x.l.:.h.i.d.d.e.n. .b.g.-.w.h.i.t.e. .p.o.i.n.t.e.r.-.e.v.e.n.t.s.-.n.o.n.e. .o.p.a.c.i.t.y.-.0. .z.-.1, div.a.b.s.o.l.u.t.e. .l.e.f.t.-.0. .b.o.t.t.o.m.-.1.6. .g.r.i.d. .w.-.f.u.l.l. .z.-.1 |

**Issues:**
- 6 unique values in a narrow range (1-20)

## SVG Icons

**8 unique SVG icons** detected. Dominant style: **filled**.

| Size Class | Count |
|------------|-------|
| xs | 6 |
| md | 1 |
| xl | 1 |

**Icon colors:** `currentColor`

## Font Files

| Family | Source | Weights | Styles |
|--------|--------|---------|--------|
| SequelSans | self-hosted | 500, 600 | normal |

## Image Style Patterns

| Pattern | Count | Key Styles |
|---------|-------|------------|
| general | 13 | objectFit: cover, borderRadius: 0px, shape: square |
| thumbnail | 7 | objectFit: cover, borderRadius: 0px, shape: square |
| hero | 6 | objectFit: cover, borderRadius: 0px, shape: square |
| gallery | 2 | objectFit: cover, borderRadius: 0px, shape: square |

**Aspect ratios:** 1:1 (11x), 4:3 (6x), 3:4 (4x), 16:9 (4x), 3:2 (3x)

## Motion Language

**Feel:** responsive · **Scroll-linked:** yes

### Duration Tokens

| name | value | ms |
|---|---|---|
| `xs` | `100ms` | 100 |
| `md` | `300ms` | 300 |
| `lg` | `450ms` | 450 |
| `xl` | `1s` | 1000 |

### Easing Families

- **custom** (7 uses) — `cubic-bezier(0.4, 0, 0.2, 1)`
- **ease-out** (114 uses) — `cubic-bezier(0.23, 1, 0.32, 1)`, `cubic-bezier(0.25, 0.46, 0.45, 0.9)`

## Component Anatomy

### button — 27 instances

**Slots:** label
**Sizes:** xl · md · xs

## Brand Voice

**Tone:** neutral · **Pronoun:** third-person · **Headings:** Sentence case (balanced)

### Top CTA Verbs

- **d** (9)
- **tous** (2)
- **projets** (1)
- **nous** (1)
- **prec** (1)
- **suiv** (1)
- **s'inscrire** (1)
- **pda** (1)

### Button Copy Patterns

- "découvrir" (3×)
- "découvrir le studio" (2×)
- "tous les projets" (2×)
- "découvrez nos expertises" (2×)
- "découvrez tous nos articles" (2×)
- "projets
expertises
studio
équipe
digital lab
news" (1×)
- "nous contacter" (1×)
- "prec." (1×)
- "suiv." (1×)
- "s'inscrire" (1×)

### Sample Headings

> Volney
> Conception bioclimatique, sobriété carbone,
réemploi : découvrez les expertises que nous
mettons au service d'une réhabilitation durable.
> Réhabilitation
> Architecture
> Architecture d’intérieur & Design
> MOEX
> Foncières, gestionnaires d'actifs, investisseurs et utilisateurs nous confient la rénovation et la transformation de leurs immeubles tertiaires, hôteliers et résidentiels à Paris, avec une même exigence : la plus haute qualité, à chaque projet.
> Notre actualité
> PDA Run Club aux Foulées de l’Immobilier
> Elevator Race by Theop Group

## Page Intent

**Type:** `landing` (confidence 0.31)
**Description:** PDA, Partners & Dalous Architecture, transforme les immeubles de bureaux, d'hôtellerie et de logement à Paris : rénovation, réhabilitation, surélévation.

Alternates: blog-post (0.35)

## Section Roles

Reading order (top→bottom): content → logo-wall → hero → content → feature-grid → nav → feature-grid → content → nav → footer

| # | Role | Heading | Confidence |
|---|------|---------|------------|
| 0 | nav | — | 0.4 |
| 1 | content | — | 0.3 |
| 2 | logo-wall | — | 0.85 |
| 3 | hero | — | 0.85 |
| 4 | content | — | 0.3 |
| 5 | feature-grid | Conception bioclimatique, sobriété carbone,
réemploi : découvrez les expertises  | 0.8 |
| 6 | feature-grid | Foncières, gestionnaires d'actifs, investisseurs et utilisateurs nous confient l | 0.8 |
| 7 | content | Notre actualité | 0.3 |
| 8 | footer | CONTACT | 0.95 |
| 9 | nav | NAVIGATION | 0.9 |

## Material Language

**Label:** `flat` (confidence 0)

| Metric | Value |
|--------|-------|
| Avg saturation | 0.14 |
| Shadow profile | soft |
| Avg shadow blur | 0px |
| Max radius | 100px |
| backdrop-filter in use | no |
| Gradients | 2 |

## Imagery Style

**Label:** `photography` (confidence 0.196)
**Counts:** total 28, svg 0, icon 0, screenshot-like 0, photo-like 11
**Dominant aspect:** square-ish
**Radius profile on images:** square

## Component Library

**Detected:** `tailwindcss` (confidence 0.573)

Evidence:
- tailwind-like class density 58%

## Quick Start

To recreate this design in a new project:

1. **Install fonts:** Add `SequelSans` from Google Fonts or your font provider
2. **Import CSS variables:** Copy `variables.css` into your project
3. **Tailwind users:** Use the generated `tailwind.config.js` to extend your theme
4. **Design tokens:** Import `design-tokens.json` for tooling integration
