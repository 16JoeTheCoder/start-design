---
name: builtbyjosef
description: Maker system for every builtbyjosef project. Ink on paper, one flame of fire.
colors:
  ink: "#0D0E10"
  paper: "#F3F2EE"
  fire: "#FF5B1F"
  ink-muted: "#5C5E63"
  rule: "#D9D7D0"
  paper-muted: "#9A9A95"
  rule-inverse: "#2A2B2F"
typography:
  display:
    fontFamily: "Geist Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "clamp(2.75rem, 6vw + 1rem, 5.5rem)"
    fontWeight: 600
    lineHeight: 1
    letterSpacing: "-0.04em"
  headline:
    fontFamily: "Geist Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "clamp(1.75rem, 2.5vw + 1rem, 2.75rem)"
    fontWeight: 600
    lineHeight: 1.1
    letterSpacing: "-0.03em"
  title:
    fontFamily: "Geist Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "1.25rem"
    fontWeight: 560
    lineHeight: 1.3
    letterSpacing: "-0.01em"
  body:
    fontFamily: "Geist Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "1.0625rem"
    fontWeight: 400
    lineHeight: 1.6
  label:
    fontFamily: "Geist Variable, ui-sans-serif, system-ui, sans-serif"
    fontSize: "0.8125rem"
    fontWeight: 500
    lineHeight: 1.3
    letterSpacing: "0.01em"
  mono:
    fontFamily: "Geist Mono Variable, ui-monospace, monospace"
    fontSize: "0.875rem"
    fontWeight: 400
    lineHeight: 1.5
    fontFeature: "\"tnum\" 1"
rounded:
  none: "0px"
  sm: "4px"
  md: "8px"
  full: "999px"
spacing:
  "1": "4px"
  "2": "8px"
  "3": "12px"
  "4": "16px"
  "6": "24px"
  "8": "32px"
  "12": "48px"
  "16": "64px"
  "24": "96px"
components:
  button-primary:
    backgroundColor: "{colors.ink}"
    textColor: "{colors.paper}"
    rounded: "{rounded.sm}"
    padding: "12px 20px"
    height: "44px"
  button-accent:
    backgroundColor: "{colors.fire}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
    padding: "12px 20px"
    height: "44px"
  button-ghost:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
    padding: "12px 20px"
    height: "44px"
  input:
    backgroundColor: "{colors.paper}"
    textColor: "{colors.ink}"
    rounded: "{rounded.sm}"
    padding: "10px 12px"
    height: "44px"
---

<!-- Brand authority. Brand tokens (ink, paper, fire) are fixed by the maker brand and outrank every skill.
     ink-muted, rule, paper-muted, rule-inverse are derived neutrals, contrast-checked against the brand pair.
     Typography (Geist + Geist Mono) is a template default chosen for this file; replace it here, once, if the brand changes. -->

# Design System: builtbyjosef

## Overview

**Creative North Star: "The Composed Workshop"**

Work from a maker who builds with precision and says little. Pages are ink on warm paper: generous whitespace, firm hierarchy, nothing that does not earn its place. Fire orange is the single spark in the room. It marks the one thing that matters on a screen, and its rarity is what gives it force.

Density is calm, not sparse: tight groups, wide separation. Depth comes from tone and hairlines, never from glow. Motion is quiet and quick, used once per moment.

**Key Characteristics:**
- Ink on paper by default; an inverse ink ground is allowed for a whole section or a dark use scene.
- One fire accent per viewport, never as body text on paper.
- One family (Geist) with weight and size doing the hierarchy; Geist Mono only for code, data and measurements.
- Small radii, hairline rules, no decorative shadow.

## Colors

A two-tone neutral system with one hot accent.

### Primary
- **Fire** (#FF5B1F): the single call to action, active state, focus of attention, or a hairline mark. Contrast is 2.77:1 on paper and 6.22:1 on ink, so on paper fire is a fill or a mark, never text.

### Neutral
- **Ink** (#0D0E10): text, primary buttons, the inverse ground. 17.2:1 on paper.
- **Paper** (#F3F2EE): the default ground and text on ink.
- **Ink Muted** (#5C5E63): secondary text on paper (5.8:1).
- **Rule** (#D9D7D0): hairline dividers and input borders on paper.
- **Paper Muted** (#9A9A95): secondary text on ink (6.8:1).
- **Rule Inverse** (#2A2B2F): hairlines on ink.

### Named Rules
**The One Flame Rule.** At most one fire element is visible per viewport. Fire never fills a section, a card or a gradient.

**The No Fire Text Rule.** Fire text appears only on ink. On paper, fire carries ink text (button-accent) or no text at all.

**The No New Hue Rule.** No other hue enters the UI. State colors (error, success) come from ink weight, icons and copy first; if a project truly needs a status hue, add it here first and nowhere else.

## Typography

**Display Font:** Geist Variable (with ui-sans-serif, system-ui)
**Body Font:** Geist Variable
**Label/Mono Font:** Geist Mono Variable, for code, data and measurement only

**Character:** One precise grotesque at several weights. Composure comes from scale steps and tight tracking at size, not from mixing families.

Self-host with `@fontsource-variable/geist` and `@fontsource-variable/geist-mono`. No font CDN.

### Hierarchy
- **Display** (600, clamp to 5.5rem max, 1.0): one per page, the opening statement.
- **Headline** (600, up to 2.75rem, 1.1): section openers.
- **Title** (560, 1.25rem, 1.3): card and group titles.
- **Body** (400, 1.0625rem, 1.6): running text, measure 60 to 72ch.
- **Label** (500, 0.8125rem, +0.01em): controls, metadata, captions. Sentence case.

### Named Rules
**The Weight Not Color Rule.** Emphasis comes from weight and size. Never gradient text, never fire for emphasis on paper.

## Layout

Mobile first, verified at 390px and 1440px. Content column max 72rem with a 16px gutter at 390px and 32px from 768px. Spacing runs on the 4px scale in the frontmatter; space above a heading is at least twice the space below it. Asymmetric compositions over centered stacks; left-aligned text by default.

## Elevation & Depth

Flat by default. Depth comes from tonal shift (paper to ink) and 1px rules. A shadow is allowed only for floating layers (menus, dialogs) and must be soft and offset: `0 8px 24px -8px rgba(13, 14, 16, 0.18)`. No glow, no colored halo, no glass.

## Shapes

Small, consistent radii: 4px on controls, 8px on containers, full only for pills and avatars. Hairline 1px borders in Rule. Never mix radii inside one component.

## Components

### Buttons
- **Shape:** gently squared (4px), 44px tall minimum.
- **Primary:** ink fill, paper label.
- **Accent:** fire fill, ink label. Counts as the viewport's one flame.
- **Ghost:** paper fill, ink label, 1px ink border.
- **Hover / Focus:** hover darkens or lifts tone, 150ms ease-out. Focus is a 2px ink outline offset 2px on paper, paper outline on ink. A fire focus ring fails 3:1 on paper; do not use it there.

### Inputs / Fields
- **Style:** paper fill, 1px Rule border, 4px radius, ink text, Ink Muted placeholder.
- **Focus:** border becomes ink plus the standard focus outline.
- **Error:** ink text message with an icon; border goes ink at 2px. No red.

### Navigation
- Label type, ink on paper. Active item gets a 2px fire underline (the flame for that viewport when nothing else claims it).

### Motion
- Durations 150ms (state), 240ms (enter), 400ms (one hero moment). Easing `cubic-bezier(0.16, 1, 0.3, 1)`; exits use ease-in at 150ms.
- No bounce, elastic, back or overshoot eases, whatever a library's examples show.
- Respect `prefers-reduced-motion`: cut to opacity or nothing.

## Do's and Don'ts

### Do:
- **Do** keep text ink (#0D0E10) or Ink Muted (#5C5E63) on paper.
- **Do** spend the one flame on the action you most want taken.
- **Do** theme selection, caret, scrollbars and focus rings from these tokens.
- **Do** use the plain text name "builtbyjosef" until the official JY monogram SVG is committed.

### Don't:
- **Don't** set fire (#FF5B1F) text or fire focus rings on paper.
- **Don't** introduce new hues, gradients, glassmorphism or glow.
- **Don't** draw, trace or approximate a JY monogram or any logo.
- **Don't** load fonts or icons from a CDN.
