# Design Language: montarville | Une approche globale et intégrée dans la gestion de vos projets de construction

> Extracted from `https://montarville.ca` on November 1, 2026
> 759 elements analyzed

This document describes the complete design language of the website. It is structured for AI/LLM consumption — use it to faithfully recreate the visual design in any framework.

## Color Palette

### Primary Colors

| Role | Hex | RGB | HSL | Usage Count |
|------|-----|-----|-----|-------------|
| Primary | `#d0112b` | rgb(208, 17, 43) | hsl(352, 85%, 44%) | 43 |

### Tonal Ramps

Generated in OKLCH from each role colour, so the steps are perceptually even. The site's own colour keeps its position in the ladder.

| Role | 50 | 100 | 200 | 300 | 400 | 500 | 600 | 700 | 800 | 900 | 950 |
|------|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|-----|
| primary | `#ffd3cc` | `#ffc3bc` | `#ffaca6` | `#ff8a86` | `#ff5d5e` | `#e6333e` | **`#d0112b`** | `#a6001b` | `#8c0010` | `#750008` | `#470001` |
| neutral | `#f5f5f5` | `#eaeaea` | `#d9d9d9` | `#c0c0c0` | `#9f9f9f` | `#828282` | `#6c6c6c` | `#575757` | `#464646` | `#393939` | **`#252525`** |

### Semantic Pairs

| Role | Background | Foreground | Contrast | Level |
|------|------------|------------|----------|-------|
| `surface.page` | `#121212` | `#fafafa` | 17.95:1 | AAA |
| `surface.raised` | `#fafafa` | `#000000` | 20.12:1 | AAA |
| `action.primary` | `#d0112b` | `#fafafa` | 5.3:1 | AA |

### Dominance

Share of painted background area — what the page looks like, as opposed to what it declares most often.

- `#121212` — 65%
- `#252525` — 25%
- `#000000` — 6%
- `#fafafa` — 4%
- `#d0112b` — 0%

### Neutral Colors

| Hex | HSL | Usage Count |
|-----|-----|-------------|
| `#fafafa` | hsl(0, 0%, 98%) | 1243 |
| `#121212` | hsl(0, 0%, 7%) | 218 |
| `#252525` | hsl(0, 0%, 15%) | 21 |
| `#000000` | hsl(0, 0%, 0%) | 4 |

### Background Colors

Used on large-area elements: `#121212`, `#fafafa`, `#252525`, `#191919`, `#000000`

### Text Colors

Text color palette: `#fafafa`, `#0000ee`, `#121212`, `#d0112b`, `#000000`

### Gradients

```css
background-image: linear-gradient(rgb(18, 18, 18), rgb(18, 18, 18));
```

### Full Color Inventory

| Hex | Contexts | Count |
|-----|----------|-------|
| `#fafafa` | text, border, background | 1243 |
| `#121212` | background, text, border | 218 |
| `#0000ee` | text, border | 80 |
| `#d0112b` | background, text, border | 43 |
| `#252525` | background | 21 |
| `#000000` | background, text, border | 4 |

## Typography

### Font Families

- **General Sans** — used for all (88 elements)
- **Sono Proportional** — used for all (66 elements)
- **Fira Sans** — used for body (20 elements)

### Type System

- **Scale ratio** — irregular (10 distinct sizes, no modular ratio fits)
- **Measure** — ~55 characters per line (comfortable)
- **Fluid type** — none; sizes are fixed per breakpoint

### Named Scale

| Role | Size | Weight | Line Height | Tracking |
|------|------|--------|-------------|----------|
| `h2` | 92.4444px / 5.7778rem | 600 | 92.4444px | normal |
| `title-1` | 69.3333px / 4.3333rem | 600 | 70.72px | normal |
| `h3` | 52px / 3.25rem | 600 | 54.6px | normal |
| `h1` | 34.6667px / 2.1667rem | 600 | 38.1333px | normal |
| `title-2` | 23.1111px / 1.4444rem | 600 | 26.5778px | 0.231111px |
| `title-3` | 17.3333px / 1.0833rem | 600 | 20.8px | 0.173333px |
| `h4` | 16.9px / 1.0562rem | 400 | 16.9px | normal |
| `title-4` | 14px / 0.875rem | 450 | 19.88px | 0.28px |
| `title-5` | 13.3333px / 0.8333rem | 400 | normal | normal |
| `body` | 13px / 0.8125rem | 400 | normal | normal |

### Type Scale

| Size (px) | Size (rem) | Weight | Line Height | Letter Spacing | Used On |
|-----------|------------|--------|-------------|----------------|---------|
| 92.4444px | 5.7778rem | 600 | 92.4444px | normal | h2, span |
| 69.3333px | 4.3333rem | 600 | 70.72px | normal | h2 |
| 52px | 3.25rem | 600 | 54.6px | normal | h3, h2 |
| 34.6667px | 2.1667rem | 600 | 38.1333px | normal | a, button, h1, strong |
| 23.1111px | 1.4444rem | 600 | 26.5778px | 0.231111px | div, a |
| 17.3333px | 1.0833rem | 600 | 20.8px | 0.173333px | a, br |
| 16.9px | 1.0562rem | 400 | 16.9px | normal | h4 |
| 14px | 0.875rem | 450 | 19.88px | 0.28px | p, strong, span, div |
| 13.3333px | 0.8333rem | 400 | normal | normal | input |
| 13px | 0.8125rem | 400 | normal | normal | html, head, style, meta |

### Heading Scale

```css
h2 { font-size: 92.4444px; font-weight: 600; line-height: 92.4444px; }
h2 { font-size: 69.3333px; font-weight: 600; line-height: 70.72px; }
h3 { font-size: 52px; font-weight: 600; line-height: 54.6px; }
h1 { font-size: 34.6667px; font-weight: 600; line-height: 38.1333px; }
h4 { font-size: 16.9px; font-weight: 400; line-height: 16.9px; }
h3 { font-size: 14px; font-weight: 450; line-height: 19.88px; }
```

### Body Text

```css
body { font-size: 13px; font-weight: 400; line-height: normal; }
```

### Font Weights in Use

`400` (644x), `600` (56x), `450` (53x), `500` (5x), `700` (1x)

## Spacing

| Token | Value | Rem |
|-------|-------|-----|
| spacing-1 | 1px | 0.0625rem |
| spacing-23 | 23px | 1.4375rem |
| spacing-32 | 32px | 2rem |
| spacing-45 | 45px | 2.8125rem |
| spacing-58 | 58px | 3.625rem |
| spacing-67 | 67px | 4.1875rem |
| spacing-105 | 105px | 6.5625rem |
| spacing-116 | 116px | 7.25rem |
| spacing-128 | 128px | 8rem |
| spacing-157 | 157px | 9.8125rem |
| spacing-185 | 185px | 11.5625rem |
| spacing-208 | 208px | 13rem |
| spacing-231 | 231px | 14.4375rem |
| spacing-251 | 251px | 15.6875rem |
| spacing-314 | 314px | 19.625rem |
| spacing-400 | 400px | 25rem |
| spacing-419 | 419px | 26.1875rem |

## Border Radii

| Label | Value | Count |
|-------|-------|-------|
| xs | 2px | 119 |
| full | 50px | 6 |

## Elevation

2 levels from 2 raw shadows · neutral tint

**xs** — blur 32px, y 4px, used 12×
```css
box-shadow: rgba(16, 16, 16, 0.08) 0px 4px 32px 0px;
```

**sm** — blur 48px, y 0px, used 1× · 3 layers
```css
box-shadow: rgba(0, 0, 0, 0.16) 0px 1px 2px 0px, rgba(0, 0, 0, 0.16) 0px 0px 12px 0px, rgba(0, 0, 0, 0.48) 0px 0px 48px 0px;
```

## CSS Custom Properties

### Colors

```css
--ff_wp_tracking_border_color: rgb(0 0 0 / 50%);
--ff_wp_tracking_background_color: #fff;
--ff_wp_tracking_text_color: #000;
--border-radius: 2px;
--wp--preset--color--black: #000000;
--wp--preset--color--cyan-bluish-gray: #abb8c3;
--wp--preset--color--white: #ffffff;
--wp--preset--color--pale-pink: #f78da7;
--wp--preset--color--vivid-red: #cf2e2e;
--wp--preset--color--luminous-vivid-orange: #ff6900;
--wp--preset--color--luminous-vivid-amber: #fcb900;
--wp--preset--color--light-green-cyan: #7bdcb5;
--wp--preset--color--vivid-green-cyan: #00d084;
--wp--preset--color--pale-cyan-blue: #8ed1fc;
--wp--preset--color--vivid-cyan-blue: #0693e3;
--wp--preset--color--vivid-purple: #9b51e0;
--color-bg: rgb(250, 250, 250);
--color-focus: rgb(232, 197, 68);
--color-accent: rgb(208, 17, 43);
--color-text: rgb(18, 18, 18);
--color-link-hover: rgba(250, 250, 250, 0.56);
--color-link: rgb(250, 250, 250);
```

### Spacing

```css
--ff_wp_tracking_wrapper_padding: 1.5rem;
--font-size-h1: calc(128 / var(--base-px, 18) * 1rem);
--font-size-h2-xl: calc(96 / var(--base-px, 18) * 1rem);
--font-size-h2: calc(72 / var(--base-px, 18) * 1rem);
--font-size-h3: calc(48 / var(--base-px, 18) * 1rem);
--font-size-h4: calc(32 / var(--base-px, 18) * 1rem);
--font-size-body-lg: calc(24 / var(--base-px, 18) * 1rem);
--font-size-body: max(14px, calc(18 / var(--base-px, 18) * 1rem));
--font-size-body-sm: max(13px, calc(16 / var(--base-px, 18) * 1rem));
--font-size-tag: max(14px, calc(18 / var(--base-px, 18) * 1rem));
--font-size-caption: max(12px, calc(14 / var(--base-px, 18) * 1rem));
--grid-margin: 1.7777rem;
--root-font-size-prop: 1;
--v-padding-sm: calc(128 / var(--base-px, 18) * 1rem);
--v-padding-md: calc(192 / var(--base-px, 18) * 1rem);
--v-padding-lg: calc(256 / var(--base-px, 18) * 1rem);
--v-padding-xl: calc(320 / var(--base-px, 18) * 1rem);
--wp--preset--font-size--small: 13px;
--wp--preset--font-size--medium: 20px;
--wp--preset--font-size--large: 36px;
--wp--preset--font-size--x-large: 42px;
--wp--preset--spacing--20: 0.44rem;
--wp--preset--spacing--30: 0.67rem;
--wp--preset--spacing--40: 1rem;
--wp--preset--spacing--50: 1.5rem;
--wp--preset--spacing--60: 2.25rem;
--wp--preset--spacing--70: 3.38rem;
--wp--preset--spacing--80: 5.06rem;
```

### Typography

```css
--ff_wp_tracking_ease: cubic-bezier(0.25, 1, 0.5, 1);
--ff_wp_tracking_dynamic-viewport-height: 100vh;
--fa-font-regular: normal 400 1em/1 "Font Awesome 6 Free";
--fa-font-brands: normal 400 1em/1 "Font Awesome 6 Brands";
--fa-font-solid: normal 900 1em/1 "Font Awesome 6 Free";
```

### Shadows

```css
--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
--wp--preset--shadow--outlined: 6px 6px 0px -3px rgb(255, 255, 255), 6px 6px rgb(0, 0, 0);
--wp--preset--shadow--crisp: 6px 6px 0px rgb(0, 0, 0);
```

### Other

```css
--grid-col-width: calc((100vw - (var(--grid-margin) * 2) - (var(--grid-gutter) * (var(--grid-cols) - 1))) / var(--grid-cols));
--base-px: 18;
--grid-cols: 12;
--grid-gutter: 1.7777rem;
--vh: 1vh;
--dynamic-viewport-height: 100vh;
--measure-3xs: calc(4 / var(--base-px, 18) * 1rem);
--measure-2xs: calc(8 / var(--base-px, 18) * 1rem);
--measure-xs: calc(12 / var(--base-px, 18) * 1rem);
--measure-sm: calc(16 / var(--base-px, 18) * 1rem);
--measure-md: calc(24 / var(--base-px, 18) * 1rem);
--measure-lg: calc(32 / var(--base-px, 18) * 1rem);
--measure-xl: calc(48 / var(--base-px, 18) * 1rem);
--measure-2xl: calc(64 / var(--base-px, 18) * 1rem);
--measure-3xl: calc(80 / var(--base-px, 18) * 1rem);
--measure-4xl: calc(96 / var(--base-px, 18) * 1rem);
--measure-5xl: calc(128 / var(--base-px, 18) * 1rem);
--measure-6xl: calc(160 / var(--base-px, 18) * 1rem);
--measure-7xl: calc(192 / var(--base-px, 18) * 1rem);
--measure-8xl: calc(256 / var(--base-px, 18) * 1rem);
--measure-9xl: calc(320 / var(--base-px, 18) * 1rem);
--wp-admin-bar-height: 32px;
--_header-height: auto;
--wp--preset--aspect-ratio--square: 1;
--wp--preset--aspect-ratio--4-3: 4/3;
--wp--preset--aspect-ratio--3-4: 3/4;
--wp--preset--aspect-ratio--3-2: 3/2;
--wp--preset--aspect-ratio--2-3: 2/3;
--wp--preset--aspect-ratio--16-9: 16/9;
--wp--preset--aspect-ratio--9-16: 9/16;
--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgb(6,147,227) 0%,rgb(155,81,224) 100%);
--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgb(252,185,0) 0%,rgb(255,105,0) 100%);
--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgb(255,105,0) 0%,rgb(207,46,46) 100%);
--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);
--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);
--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);
--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);
--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);
--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);
--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);
--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);
--fa-style-family-classic: "Font Awesome 6 Free";
--fa-style-family-brands: "Font Awesome 6 Brands";
```

### Dependencies

```css
0: --grid-margin;
1: --grid-gutter;
2: --grid-cols;
3: --grid-cols;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
0: --base-px;
```

### Semantic

```css
--wp--preset--color--light-green-cyan: #7bdcb5;
--wp--preset--color--vivid-green-cyan: #00d084;
--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
--wp--preset--color--luminous-vivid-amber: #fcb900;
--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgb(252,185,0) 0%,rgb(255,105,0) 100%);
--wp--preset--color--vivid-red: #cf2e2e;
--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgb(255,105,0) 0%,rgb(207,46,46) 100%);
--wp--preset--color--pale-cyan-blue: #8ed1fc;
--wp--preset--color--vivid-cyan-blue: #0693e3;
--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgb(6,147,227) 0%,rgb(155,81,224) 100%);
```

## Breakpoints

| Name | Value | Type |
|------|-------|------|
| md | 749px | max-width |
| md | 750px | min-width |
| md | 782px | max-width |
| 849px | 849px | max-width |
| 1199px | 1199px | max-width |
| 1200px | 1200px | min-width |
| 1201px | 1201px | min-width |
| xl | 1300px | max-width |
| 1380px | 1380px | max-width |
| 2xl | 1599px | max-width |

## Transitions & Animations

**Easing functions:** `cubic-bezier(0.25, 1, 0.5, 1)`, `cubic-bezier(0.76, 0, 0.24, 1)`, `cubic-bezier(0.19, 1, 0.22, 1)`, `cubic-bezier(0.25, 0.46, 0.45, 0.94)`, `cubic-bezier(0.39, 0.575, 0.565, 1)`, `cubic-bezier(0.22, 1, 0.36, 1)`, `ease`

**Durations:** `0.3s`, `0.6s`, `0.45s`, `0.9s`, `0.5s`, `1s`, `1.3s`, `0.8s`, `0.4s`

### Common Transitions

```css
transition: all;
transition: opacity 0.3s cubic-bezier(0.25, 1, 0.5, 1), transform 0.3s cubic-bezier(0.25, 1, 0.5, 1);
transition: background-color 0.3s cubic-bezier(0.25, 1, 0.5, 1), color 0.3s cubic-bezier(0.25, 1, 0.5, 1);
transition: background-color 0.3s cubic-bezier(0.25, 1, 0.5, 1), border-color 0.3s cubic-bezier(0.25, 1, 0.5, 1), opacity 0.3s cubic-bezier(0.25, 1, 0.5, 1);
transition: opacity 0.6s cubic-bezier(0.25, 1, 0.5, 1), transform 0.6s cubic-bezier(0.25, 1, 0.5, 1);
transition: transform 0.3s cubic-bezier(0.25, 1, 0.5, 1);
transition: text-decoration-color 0.3s cubic-bezier(0.25, 1, 0.5, 1);
transition: padding-top 0.6s cubic-bezier(0.76, 0, 0.24, 1);
transition: background-size 0.45s cubic-bezier(0.76, 0, 0.24, 1);
transition: background-size 0.45s cubic-bezier(0.76, 0, 0.24, 1), margin-bottom 0.3s cubic-bezier(0.25, 1, 0.5, 1) 0.3s;
```

### Keyframe Animations

**fa-beat**
```css
@keyframes fa-beat {
  0%, 90% { transform: scale(1); }
  45% { transform: scale(var(--fa-beat-scale,1.25)); }
}
```

**fa-beat**
```css
@keyframes fa-beat {
  0%, 90% { transform: scale(1); }
  45% { transform: scale(var(--fa-beat-scale,1.25)); }
}
```

**fa-bounce**
```css
@keyframes fa-bounce {
  0% { transform: scale(1) translateY(0px); }
  10% { transform: scale(var(--fa-bounce-start-scale-x,1.1),var(--fa-bounce-start-scale-y,.9)) translateY(0); }
  30% { transform: scale(var(--fa-bounce-jump-scale-x,.9),var(--fa-bounce-jump-scale-y,1.1)) translateY(var(--fa-bounce-height,-.5em)); }
  50% { transform: scale(var(--fa-bounce-land-scale-x,1.05),var(--fa-bounce-land-scale-y,.95)) translateY(0); }
  57% { transform: scale(1) translateY(var(--fa-bounce-rebound,-.125em)); }
  64% { transform: scale(1) translateY(0px); }
  100% { transform: scale(1) translateY(0px); }
}
```

**fa-bounce**
```css
@keyframes fa-bounce {
  0% { transform: scale(1) translateY(0px); }
  10% { transform: scale(var(--fa-bounce-start-scale-x,1.1),var(--fa-bounce-start-scale-y,.9)) translateY(0); }
  30% { transform: scale(var(--fa-bounce-jump-scale-x,.9),var(--fa-bounce-jump-scale-y,1.1)) translateY(var(--fa-bounce-height,-.5em)); }
  50% { transform: scale(var(--fa-bounce-land-scale-x,1.05),var(--fa-bounce-land-scale-y,.95)) translateY(0); }
  57% { transform: scale(1) translateY(var(--fa-bounce-rebound,-.125em)); }
  64% { transform: scale(1) translateY(0px); }
  100% { transform: scale(1) translateY(0px); }
}
```

**fa-fade**
```css
@keyframes fa-fade {
  50% { opacity: var(--fa-fade-opacity,.4); }
}
```

**fa-fade**
```css
@keyframes fa-fade {
  50% { opacity: var(--fa-fade-opacity,.4); }
}
```

**fa-beat-fade**
```css
@keyframes fa-beat-fade {
  0%, 100% { opacity: var(--fa-beat-fade-opacity,.4); transform: scale(1); }
  50% { opacity: 1; transform: scale(var(--fa-beat-fade-scale,1.125)); }
}
```

**fa-beat-fade**
```css
@keyframes fa-beat-fade {
  0%, 100% { opacity: var(--fa-beat-fade-opacity,.4); transform: scale(1); }
  50% { opacity: 1; transform: scale(var(--fa-beat-fade-scale,1.125)); }
}
```

**fa-flip**
```css
@keyframes fa-flip {
  50% { transform: rotate3d(var(--fa-flip-x,0),var(--fa-flip-y,1),var(--fa-flip-z,0),var(--fa-flip-angle,-180deg)); }
}
```

**fa-flip**
```css
@keyframes fa-flip {
  50% { transform: rotate3d(var(--fa-flip-x,0),var(--fa-flip-y,1),var(--fa-flip-z,0),var(--fa-flip-angle,-180deg)); }
}
```

## Component Patterns

Detected UI component patterns and their most common styles:

### Buttons (19 instances)

```css
.buttons {
  background-color: rgba(250, 250, 250, 0.12);
  color: rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
  padding-top: 11.5556px;
  padding-right: 11.5556px;
  border-radius: 2px;
}
```

### Cards (165 instances)

```css
.cards {
  background-color: rgb(250, 250, 250);
  border-radius: 0px;
  box-shadow: rgba(16, 16, 16, 0.08) 0px 4px 32px 0px;
  padding-top: 0px;
  padding-right: 0px;
}
```

### Inputs (1 instances)

```css
.inputs {
  color: rgb(0, 0, 0);
  border-color: rgb(0, 0, 0);
  border-radius: 0px;
  font-size: 13.3333px;
  padding-top: 0px;
  padding-right: 0px;
}
```

### Links (73 instances)

```css
.links {
  color: rgb(18, 18, 18);
  font-size: 13px;
  font-weight: 400;
}
```

### Navigation (19 instances)

```css
.navigation {
  background-color: rgba(250, 250, 250, 0.12);
  color: rgb(250, 250, 250);
  padding-top: 0px;
  padding-bottom: 0px;
  padding-left: 0px;
  padding-right: 0px;
  position: relative;
}
```

### Footer (41 instances)

```css
.footer {
  background-color: rgb(250, 250, 250);
  color: rgb(250, 250, 250);
  padding-top: 0px;
  padding-bottom: 0px;
  font-size: 13px;
}
```

### Modals (20 instances)

```css
.modals {
  background-color: rgba(18, 18, 18, 0.64);
  border-radius: 0px;
  box-shadow: rgba(16, 16, 16, 0.08) 0px 4px 32px 0px;
  padding-top: 0px;
  padding-right: 0px;
  max-width: 100%;
}
```

### Dropdowns (110 instances)

```css
.dropdowns {
  background-color: rgb(250, 250, 250);
  border-radius: 0px;
  box-shadow: rgba(16, 16, 16, 0.08) 0px 4px 32px 0px;
  border-color: rgb(250, 250, 250);
  padding-top: 0px;
}
```

### Badges (3 instances)

```css
.badges {
  background-color: rgba(250, 250, 250, 0.12);
  color: rgb(0, 0, 238);
  font-size: 13px;
  font-weight: 400;
  padding-top: 11.5556px;
  padding-right: 11.5556px;
  border-radius: 2px;
}
```

## Component Clusters

Reusable component instances grouped by DOM structure and style similarity:

### Button — 9 instances, 3 variants

**Variant 1** (5 instances)

```css
  background: rgb(208, 17, 43);
  color: rgb(250, 250, 250);
  padding: 11.5556px 11.5556px 11.5556px 11.5556px;
  border-radius: 2px;
  border: 1px solid rgba(0, 0, 0, 0);
  font-size: 13px;
  font-weight: 600;
```

**Variant 2** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 2.88889px 5.77778px 2.88889px 5.77778px;
  border-radius: 2px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

**Variant 3** (2 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(18, 18, 18);
  padding: 0px 0px 0px 0px;
  border-radius: 2px;
  border: 0px none rgb(18, 18, 18);
  font-size: 34.6667px;
  font-weight: 600;
```

### Card — 3 instances, 1 variant

**Variant 1** (3 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 2px;
  border: 1px solid rgba(0, 0, 0, 0);
  font-size: 13px;
  font-weight: 400;
```

### Card — 20 instances, 1 variant

**Variant 1** (20 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 33 instances, 5 variants

**Variant 1** (13 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 2.31111px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 23.1111px;
  font-weight: 600;
```

**Variant 2** (4 instances)

```css
  background: rgba(18, 18, 18, 0.32);
  color: rgb(250, 250, 250);
  padding: 400px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

**Variant 3** (4 instances)

```css
  background: rgb(208, 17, 43);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 50%;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

**Variant 4** (8 instances)

```css
  background: rgb(250, 250, 250);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

**Variant 5** (4 instances)

```css
  background: rgba(18, 18, 18, 0.32);
  color: rgb(250, 250, 250);
  padding: 0px 0px 231.111px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 7 instances, 2 variants

**Variant 1** (3 instances)

```css
  background: rgb(18, 18, 18);
  color: rgb(250, 250, 250);
  padding: 17.3333px 17.3333px 17.3333px 17.3333px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

**Variant 2** (4 instances)

```css
  background: rgb(250, 250, 250);
  color: rgb(250, 250, 250);
  padding: 11.5556px 11.5556px 11.5556px 11.5556px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 11 instances, 2 variants

**Variant 1** (7 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(250, 250, 250, 0.56);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgba(250, 250, 250, 0.56);
  font-size: 14px;
  font-weight: 400;
```

**Variant 2** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(18, 18, 18);
  padding: 0px 0px 3.46667px 0px;
  border-radius: 0px;
  border: 0px none rgb(18, 18, 18);
  font-size: 34.6667px;
  font-weight: 600;
```

### Card — 11 instances, 2 variants

**Variant 1** (7 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

**Variant 2** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(18, 18, 18, 0.64);
  padding: 2.88889px 46.2222px 0px 0px;
  border-radius: 0px;
  border: 0px none rgba(18, 18, 18, 0.64);
  font-size: 13px;
  font-weight: 450;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgba(250, 250, 250, 0.36);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgba(250, 250, 250, 0.36);
  font-size: 14px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgb(37, 37, 37);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 2px;
  border: 1px solid rgba(250, 250, 250, 0.12);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 23.1111px 23.1111px 23.1111px 23.1111px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Link — 12 instances, 3 variants

**Variant 1** (8 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(0, 0, 238);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(0, 0, 238);
  font-size: 13px;
  font-weight: 400;
```

**Variant 2** (1 instance)

```css
  background: rgba(250, 250, 250, 0.12);
  color: rgb(18, 18, 18);
  padding: 11.5556px 11.5556px 11.5556px 11.5556px;
  border-radius: 2px;
  border: 1px solid rgba(250, 250, 250, 0.12);
  font-size: 14px;
  font-weight: 400;
```

**Variant 3** (3 instances)

```css
  background: rgba(250, 250, 250, 0.12);
  color: rgb(250, 250, 250);
  padding: 11.5556px 11.5556px 11.5556px 11.5556px;
  border-radius: 2px;
  border: 1px solid rgba(250, 250, 250, 0.12);
  font-size: 14px;
  font-weight: 400;
```

### Card — 10 instances, 1 variant

**Variant 1** (10 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 2px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(250, 250, 250);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgb(250, 250, 250);
  color: rgb(250, 250, 250);
  padding: 11.5556px 11.5556px 11.5556px 11.5556px;
  border-radius: 2px;
  border: 0px none rgb(250, 250, 250);
  font-size: 13px;
  font-weight: 400;
```

### Card — 4 instances, 1 variant

**Variant 1** (4 instances)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(18, 18, 18);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(18, 18, 18);
  font-size: 14px;
  font-weight: 400;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(18, 18, 18);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(18, 18, 18);
  font-size: 14px;
  font-weight: 500;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(18, 18, 18);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(18, 18, 18);
  font-size: 13px;
  font-weight: 400;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(18, 18, 18);
  padding: 0px 0px 3.5px 0px;
  border-radius: 0px;
  border: 0px none rgb(18, 18, 18);
  font-size: 14px;
  font-weight: 400;
```

### Button — 1 instance, 1 variant

**Variant 1** (1 instance)

```css
  background: rgba(0, 0, 0, 0);
  color: rgb(18, 18, 18);
  padding: 0px 0px 0px 0px;
  border-radius: 0px;
  border: 0px none rgb(18, 18, 18);
  font-size: 14px;
  font-weight: 400;
```

## Layout System

**14 grid containers** and **164 flex containers** detected.

### The System

- **Content column** — 1024px wide
- **Column system** — 3 columns
- **Section rhythm** — 23px vertical padding (ladder: 23px · 45px · 67px · 185px · 208px)
- **Gap scale** — 4.33333px · 7.22222px · 8.66667px · 11.5556px · 17.3333px · 23.1101px · 69.3333px · 127.851px

### Container Widths

| Max Width | Padding |
|-----------|---------|
| 100% | 0px |
| 1024.3px | 0px |

### Grid Column Patterns

| Columns | Usage Count |
|---------|-------------|
| 1-column | 13x |
| 3-column | 1x |

### Grid Templates

```css
grid-template-columns: 1280px;
grid-template-columns: 1280px;
grid-template-columns: 1280px;
grid-template-columns: 1280px;
grid-template-columns: 395.844px 395.859px 395.844px;
gap: 23.1101px;
```

### Flex Patterns

| Direction/Wrap | Count |
|----------------|-------|
| row/nowrap | 123x |
| column/nowrap | 40x |
| row/wrap | 1x |

**Gap values:** `4.33333px`, `7.22222px`, `8.66667px`, `11.5556px`, `17.3333px`, `23.1101px`, `23.1111px`, `69.3333px`, `127.851px`

## Accessibility (WCAG 2.1)

**Overall Score: 100%** — 13 passing, 0 failing color pairs

### Passing Color Pairs

| Foreground | Background | Ratio | Level |
|------------|------------|-------|-------|
| `#fafafa` | `#d0112b` | 5.3:1 | AA |
| `#fafafa` | `#252525` | 14.69:1 | AAA |

## Dark Mode

The site has a distinct dark mode color scheme:

- **Primary:** `#d0112b`
- **Backgrounds:** `#121212`, `#fafafa`, `#252525`, `#d0112b`, `#191919`, `#000000`
- **Text:** `#fafafa`, `#0000ee`, `#121212`, `#d0112b`, `#000000`

### Dark Mode CSS Variables

```css
--ff_wp_tracking_border_color: rgb(0 0 0 / 50%);
--ff_wp_tracking_background_color: #fff;
--ff_wp_tracking_text_color: #000;
--border-radius: 2px;
--wp--preset--color--black: #000000;
--wp--preset--color--cyan-bluish-gray: #abb8c3;
--wp--preset--color--white: #ffffff;
--wp--preset--color--pale-pink: #f78da7;
--wp--preset--color--vivid-red: #cf2e2e;
--wp--preset--color--luminous-vivid-orange: #ff6900;
--wp--preset--color--luminous-vivid-amber: #fcb900;
--wp--preset--color--light-green-cyan: #7bdcb5;
--wp--preset--color--vivid-green-cyan: #00d084;
--wp--preset--color--pale-cyan-blue: #8ed1fc;
--wp--preset--color--vivid-cyan-blue: #0693e3;
--wp--preset--color--vivid-purple: #9b51e0;
--color-bg: rgb(250, 250, 250);
--color-focus: rgb(232, 197, 68);
--color-accent: rgb(208, 17, 43);
--color-text: rgb(18, 18, 18);
--color-link-hover: rgba(250, 250, 250, 0.56);
--color-link: rgb(250, 250, 250);
--ff_wp_tracking_wrapper_padding: 1.5rem;
--font-size-h1: calc(128 / var(--base-px, 18) * 1rem);
--font-size-h2-xl: calc(96 / var(--base-px, 18) * 1rem);
--font-size-h2: calc(72 / var(--base-px, 18) * 1rem);
--font-size-h3: calc(48 / var(--base-px, 18) * 1rem);
--font-size-h4: calc(32 / var(--base-px, 18) * 1rem);
--font-size-body-lg: calc(24 / var(--base-px, 18) * 1rem);
--font-size-body: max(14px, calc(18 / var(--base-px, 18) * 1rem));
--font-size-body-sm: max(13px, calc(16 / var(--base-px, 18) * 1rem));
--font-size-tag: max(14px, calc(18 / var(--base-px, 18) * 1rem));
--font-size-caption: max(12px, calc(14 / var(--base-px, 18) * 1rem));
--grid-margin: 1.7777rem;
--root-font-size-prop: 1;
--v-padding-sm: calc(128 / var(--base-px, 18) * 1rem);
--v-padding-md: calc(192 / var(--base-px, 18) * 1rem);
--v-padding-lg: calc(256 / var(--base-px, 18) * 1rem);
--v-padding-xl: calc(320 / var(--base-px, 18) * 1rem);
--wp--preset--font-size--small: 13px;
--wp--preset--font-size--medium: 20px;
--wp--preset--font-size--large: 36px;
--wp--preset--font-size--x-large: 42px;
--wp--preset--spacing--20: 0.44rem;
--wp--preset--spacing--30: 0.67rem;
--wp--preset--spacing--40: 1rem;
--wp--preset--spacing--50: 1.5rem;
--wp--preset--spacing--60: 2.25rem;
--wp--preset--spacing--70: 3.38rem;
--wp--preset--spacing--80: 5.06rem;
--ff_wp_tracking_ease: cubic-bezier(0.25, 1, 0.5, 1);
--ff_wp_tracking_dynamic-viewport-height: 100vh;
--fa-font-regular: normal 400 1em/1 "Font Awesome 6 Free";
--fa-font-brands: normal 400 1em/1 "Font Awesome 6 Brands";
--fa-font-solid: normal 900 1em/1 "Font Awesome 6 Free";
--wp--preset--shadow--natural: 6px 6px 9px rgba(0, 0, 0, 0.2);
--wp--preset--shadow--deep: 12px 12px 50px rgba(0, 0, 0, 0.4);
--wp--preset--shadow--sharp: 6px 6px 0px rgba(0, 0, 0, 0.2);
--wp--preset--shadow--outlined: 6px 6px 0px -3px rgb(255, 255, 255), 6px 6px rgb(0, 0, 0);
--wp--preset--shadow--crisp: 6px 6px 0px rgb(0, 0, 0);
--grid-col-width: calc((100vw - (var(--grid-margin) * 2) - (var(--grid-gutter) * (var(--grid-cols) - 1))) / var(--grid-cols));
--base-px: 18;
--grid-cols: 12;
--grid-gutter: 1.7777rem;
--vh: 1vh;
--dynamic-viewport-height: 100vh;
--measure-3xs: calc(4 / var(--base-px, 18) * 1rem);
--measure-2xs: calc(8 / var(--base-px, 18) * 1rem);
--measure-xs: calc(12 / var(--base-px, 18) * 1rem);
--measure-sm: calc(16 / var(--base-px, 18) * 1rem);
--measure-md: calc(24 / var(--base-px, 18) * 1rem);
--measure-lg: calc(32 / var(--base-px, 18) * 1rem);
--measure-xl: calc(48 / var(--base-px, 18) * 1rem);
--measure-2xl: calc(64 / var(--base-px, 18) * 1rem);
--measure-3xl: calc(80 / var(--base-px, 18) * 1rem);
--measure-4xl: calc(96 / var(--base-px, 18) * 1rem);
--measure-5xl: calc(128 / var(--base-px, 18) * 1rem);
--measure-6xl: calc(160 / var(--base-px, 18) * 1rem);
--measure-7xl: calc(192 / var(--base-px, 18) * 1rem);
--measure-8xl: calc(256 / var(--base-px, 18) * 1rem);
--measure-9xl: calc(320 / var(--base-px, 18) * 1rem);
--wp-admin-bar-height: 32px;
--_header-height: auto;
--wp--preset--aspect-ratio--square: 1;
--wp--preset--aspect-ratio--4-3: 4/3;
--wp--preset--aspect-ratio--3-4: 3/4;
--wp--preset--aspect-ratio--3-2: 3/2;
--wp--preset--aspect-ratio--2-3: 2/3;
--wp--preset--aspect-ratio--16-9: 16/9;
--wp--preset--aspect-ratio--9-16: 9/16;
--wp--preset--gradient--vivid-cyan-blue-to-vivid-purple: linear-gradient(135deg,rgb(6,147,227) 0%,rgb(155,81,224) 100%);
--wp--preset--gradient--light-green-cyan-to-vivid-green-cyan: linear-gradient(135deg,rgb(122,220,180) 0%,rgb(0,208,130) 100%);
--wp--preset--gradient--luminous-vivid-amber-to-luminous-vivid-orange: linear-gradient(135deg,rgb(252,185,0) 0%,rgb(255,105,0) 100%);
--wp--preset--gradient--luminous-vivid-orange-to-vivid-red: linear-gradient(135deg,rgb(255,105,0) 0%,rgb(207,46,46) 100%);
--wp--preset--gradient--very-light-gray-to-cyan-bluish-gray: linear-gradient(135deg,rgb(238,238,238) 0%,rgb(169,184,195) 100%);
--wp--preset--gradient--cool-to-warm-spectrum: linear-gradient(135deg,rgb(74,234,220) 0%,rgb(151,120,209) 20%,rgb(207,42,186) 40%,rgb(238,44,130) 60%,rgb(251,105,98) 80%,rgb(254,248,76) 100%);
--wp--preset--gradient--blush-light-purple: linear-gradient(135deg,rgb(255,206,236) 0%,rgb(152,150,240) 100%);
--wp--preset--gradient--blush-bordeaux: linear-gradient(135deg,rgb(254,205,165) 0%,rgb(254,45,45) 50%,rgb(107,0,62) 100%);
--wp--preset--gradient--luminous-dusk: linear-gradient(135deg,rgb(255,203,112) 0%,rgb(199,81,192) 50%,rgb(65,88,208) 100%);
--wp--preset--gradient--pale-ocean: linear-gradient(135deg,rgb(255,245,203) 0%,rgb(182,227,212) 50%,rgb(51,167,181) 100%);
--wp--preset--gradient--electric-grass: linear-gradient(135deg,rgb(202,248,128) 0%,rgb(113,206,126) 100%);
--wp--preset--gradient--midnight: linear-gradient(135deg,rgb(2,3,129) 0%,rgb(40,116,252) 100%);
--fa-style-family-classic: "Font Awesome 6 Free";
--fa-style-family-brands: "Font Awesome 6 Brands";
--grid-col-width: --grid-margin,--grid-gutter,--grid-cols,--grid-cols;
--font-size-h1: --base-px;
--font-size-h2-xl: --base-px;
--font-size-h2: --base-px;
--font-size-h3: --base-px;
--font-size-h4: --base-px;
--font-size-body-lg: --base-px;
--font-size-body: --base-px;
--font-size-body-sm: --base-px;
--font-size-tag: --base-px;
--font-size-caption: --base-px;
--v-padding-sm: --base-px;
--v-padding-md: --base-px;
--v-padding-lg: --base-px;
--v-padding-xl: --base-px;
--measure-3xs: --base-px;
--measure-2xs: --base-px;
--measure-xs: --base-px;
--measure-sm: --base-px;
--measure-md: --base-px;
--measure-lg: --base-px;
--measure-xl: --base-px;
--measure-2xl: --base-px;
--measure-3xl: --base-px;
--measure-4xl: --base-px;
--measure-5xl: --base-px;
--measure-6xl: --base-px;
--measure-7xl: --base-px;
--measure-8xl: --base-px;
--measure-9xl: --base-px;
success: [object Object];
warning: [object Object];
error: [object Object];
info: [object Object];
```

## Design System Score

**Overall: 86/100 (Grade: B)**

| Category | Score |
|----------|-------|
| Color Discipline | 100/100 |
| Typography Consistency | 80/100 |
| Spacing System | 70/100 |
| Shadow Consistency | 100/100 |
| Border Radius Consistency | 100/100 |
| Accessibility | 100/100 |
| CSS Tokenization | 100/100 |

**Strengths:** Tight, disciplined color palette, Clean elevation system, Consistent border radii, Strong accessibility compliance, Good CSS variable tokenization

**Issues:**
- 190 !important rules — prefer specificity over overrides
- 81% of CSS is unused — consider purging
- 4263 duplicate CSS declarations

## Gradients

**1 unique gradients** detected.

| Type | Direction | Stops | Classification |
|------|-----------|-------|----------------|
| linear | — | 2 | brand |

```css
background: linear-gradient(rgb(18, 18, 18), rgb(18, 18, 18));
```

## Z-Index Map

**11 unique z-index values** across 4 layers.

| Layer | Range | Elements |
|-------|-------|----------|
| modal | 1010,1020 | div.f.f.-.w.p.-.t.r.a.c.k.i.n.g._._.o.v.e.r.l.a.y, div.f.f.-.w.p.-.t.r.a.c.k.i.n.g._._.c.t.n. .f.i.x.e.d, div.f.f.-.w.p.-.t.r.a.c.k.i.n.g. .f.f.-.w.p.-.t.r.a.c.k.i.n.g._._.m.o.d.a.l. .-.-.v.i.s.i.b.l.e |
| dropdown | 499,999 | h2.c.-.h.o.m.e.-.p.r.o.j.e.c.t.s._._.t.i.t.l.e, span.c.-.h.o.m.e.-.p.r.o.j.e.c.t.s._._.t.i.t.l.e. .-.-.l.e.f.t, span.c.-.h.o.m.e.-.p.r.o.j.e.c.t.s._._.t.i.t.l.e. .-.-.r.i.g.h.t |
| sticky | 99,99 | div.c.-.o.v.e.r.l.a.y._._.s.c.r.o.l.l.e.r, div.c.-.h.o.m.e.-.i.n.t.r.o._._.t.e.x.t, div.c.-.i.m.a.g.e. .-.-.h.a.s.-.r.a.t.i.o. .|. .c.-.h.o.m.e.-.a.b.o.u.t._._.l.e.f.t.-.i.m.a.g.e |
| base | -1,3 | div.c.-.o.v.e.r.l.a.y. .c.-.s.c.r.e.e.n.-.m.e.n.u, div.s.p.l.i.d.e._._.t.r.a.c.k. .s.p.l.i.d.e._._.t.r.a.c.k.-.-.s.l.i.d.e. .s.p.l.i.d.e._._.t.r.a.c.k.-.-.l.t.r, div.c.-.m.a.i.n.-.m.e.n.u._._.s.u.b.-.m.e.n.u.-.c.o.n.t.a.i.n.e.r |

## SVG Icons

**2 unique SVG icons** detected. Dominant style: **filled**.

| Size Class | Count |
|------------|-------|
| xl | 2 |

**Icon colors:** `#FAFAFA`, `#D0112B`, `black`, `white`

## Font Files

| Family | Source | Weights | Styles |
|--------|--------|---------|--------|
| Font Awesome 6 Brands | self-hosted | 400 | normal |
| Font Awesome 6 Free | self-hosted | 400, 900 | normal |
| Font Awesome 5 Brands | self-hosted | 400 | normal |
| Font Awesome 5 Free | self-hosted | 400, 900 | normal |
| FontAwesome | self-hosted | 400, normal | normal |
| icon-font | self-hosted | 400 | normal |
| General Sans | self-hosted | 400 700 | normal |
| Sono | self-hosted | 400, 500 | normal |
| Sono Proportional | self-hosted | 400, 500 | normal |
| Fira Sans | self-hosted | 700 | normal |

## Image Style Patterns

| Pattern | Count | Key Styles |
|---------|-------|------------|
| general | 8 | objectFit: cover, borderRadius: 2px, shape: rounded |
| hero | 5 | objectFit: cover, borderRadius: 2px, shape: rounded |

**Aspect ratios:** 3:2 (9x), 4:3 (3x), 9:16 (1x)

## Motion Language

**Feel:** responsive · **Scroll-linked:** yes

### Duration Tokens

| name | value | ms |
|---|---|---|
| `md` | `300ms` | 300 |
| `lg` | `450ms` | 450 |
| `xl` | `800ms` | 800 |
| `xxl` | `1.3s` | 1300 |

### Easing Families

- **ease-out** (137 uses) — `cubic-bezier(0.25, 1, 0.5, 1)`, `cubic-bezier(0.19, 1, 0.22, 1)`, `cubic-bezier(0.25, 0.46, 0.45, 0.94)`
- **custom** (10 uses) — `cubic-bezier(0.76, 0, 0.24, 1)`
- **ease-in-out** (1 uses) — `ease`

## Component Anatomy

### card — 142 instances

**Slots:** heading, media, footer

### button — 13 instances

**Slots:** label
**Variants:** link

| variant | count | sample label |
|---|---|---|
| default | 8 | ACCÉDER AU CONTENU PRINCIPAL |
| link | 5 | EXPERTISES |

### link — 12 instances

**Variants:** link

| variant | count | sample label |
|---|---|---|
| default | 8 |  |
| link | 4 | 01 |

## Brand Voice

**Tone:** neutral · **Pronoun:** third-person · **Headings:** Sentence case (balanced)

### Top CTA Verbs

- **expertises** (2)
- **r** (2)
- **personnaliser** (2)
- **acc** (1)
- **suivi** (1)
- **refuser** (1)
- **tout** (1)
- **d** (1)

### Button Copy Patterns

- "expertises" (2×)
- "réalisations" (2×)
- "accéder au contenu principal" (1×)
- "01" (1×)
- "02" (1×)
- "03" (1×)
- "04" (1×)
- "suivi des données" (1×)
- "personnaliser
+
refuser
tout accepter" (1×)
- "personnaliser
+" (1×)

### Sample Headings

> Un partenaire engagé. Une expertise reconnue. Une exécution maîtrisée.
> Partenaire de vos réussites
> Vous êtes...
> ARCHITECTE, DESIGNER, OU INGÉNIEUR?
> LOCATAIRE D’UN ESPACE À AMÉNAGER?
> Un partenaire engagé. Une expertise reconnue. Une exécution maîtrisée.
> Partenaire de vos réussites
> Vous êtes...
> ARCHITECTE, DESIGNER, OU INGÉNIEUR?
> LOCATAIRE D’UN ESPACE À AMÉNAGER?

## Page Intent

**Type:** `landing` (confidence 0.45)
**Description:** Un partenaire engagé. Une expertise reconnue. Une exécution maîtrisée. - Une approche globale et intégrée dans la gestion de vos projets de construction. Que vous soyez au stade de la planification, à

## Section Roles

Reading order (top→bottom): testimonial → content → testimonial → content → content → content → nav → nav → nav → nav → content → content → content → footer → nav

| # | Role | Heading | Confidence |
|---|------|---------|------------|
| 0 | nav | — | 0.4 |
| 1 | nav | — | 0.9 |
| 2 | nav | — | 0.9 |
| 3 | nav | — | 0.9 |
| 4 | testimonial | Un partenaire engagé. Une expertise reconnue. Une exécution maîtrisée. | 0.8 |
| 5 | content | Un partenaire engagé. Une expertise reconnue. Une exécution maîtrisée. | 0.3 |
| 6 | testimonial | Partenaire de vos réussites | 0.8 |
| 7 | content | Vous êtes... | 0.3 |
| 8 | content | Nos services se distinguent par leur grande diversité, s’étendant de l’analyse d | 0.3 |
| 9 | content | Nos récentes
réalisations | 0.3 |
| 10 | content | Vous en voulez plus? | 0.3 |
| 11 | content | Des relations humaines, simples et franches | 0.3 |
| 12 | content | Développement durable | 0.3 |
| 13 | footer | — | 0.95 |
| 14 | nav | — | 0.9 |

## Material Language

**Label:** `flat` (confidence 0)

| Metric | Value |
|--------|-------|
| Avg saturation | 0.32 |
| Shadow profile | soft |
| Avg shadow blur | 0px |
| Max radius | 50px |
| backdrop-filter in use | no |
| Gradients | 1 |

## Imagery Style

**Label:** `photography` (confidence 0.513)
**Counts:** total 13, svg 0, icon 0, screenshot-like 0, photo-like 11
**Dominant aspect:** landscape
**Radius profile on images:** square

## Quick Start

To recreate this design in a new project:

1. **Install fonts:** Add `General Sans` from Google Fonts or your font provider
2. **Import CSS variables:** Copy `variables.css` into your project
3. **Tailwind users:** Use the generated `tailwind.config.js` to extend your theme
4. **Design tokens:** Import `design-tokens.json` for tooling integration
