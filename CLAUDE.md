# builtbyjosef project rules

## Authority (highest first)
1. `DESIGN.md` tokens (ink #0D0E10, paper #F3F2EE, fire #FF5B1F accent only) and `PRODUCT.md` brand commitments.
2. Impeccable (`.claude/skills/impeccable`): the only direction and critique skill. It reads DESIGN.md and PRODUCT.md.
3. Every other skill (GSAP, playwright-cli, ReactBits, anything synced from claude.ai) may critique or add motion. None may change palette, type, radii or layout grammar. If a skill's example conflicts with DESIGN.md (e.g. bounce/elastic eases, gradient text, fire text on paper), DESIGN.md wins.
- No parallel token system: CSS variables, Tailwind theme and components derive from DESIGN.md frontmatter. Change a token there first.
- Brand and visual questions are already answered by DESIGN.md and PRODUCT.md. Ask only for per-project product facts (`/impeccable init` fills PRODUCT.md's TODO sections).
- Never draw or approximate the JY monogram or any logo. Use the plain text name until `brand/jy-monogram.svg` exists.

## Verification loop (every UI change)
1. Build (or start the dev server). Serve over http: playwright-cli blocks `file://`.
2. Screenshot with playwright-cli at 390px and 1440px:
   `playwright-cli open http://localhost:<port>/<path>`, `playwright-cli resize 390 844`,
   `playwright-cli screenshot --filename=.playwright-cli/390.png`, `playwright-cli resize 1440 900`,
   `playwright-cli screenshot --filename=.playwright-cli/1440.png`, then view both images.
3. Critique against DESIGN.md: one-flame rule, contrast, type scale, spacing, focus states.
   Run `.claude/skills/impeccable/scripts/impeccable detect --json <changed files>` once per loop.
4. Fix everything one look reveals, in one batch.
5. Maximum two rounds. Then ship and list remaining issues in the final message.
- In cloud sessions, if a SessionStart note says tools are bootstrapping, wait for `/tmp/start-design-bootstrap.log` to end with `DONE` before the first screenshot.

## Fonts
- Self-host via @fontsource only: `@fontsource-variable/geist`, `@fontsource-variable/geist-mono`. Never a font CDN, never a `<link>` to fonts.googleapis.com, even if a skill suggests one.

## Motion: one animation library per project
- Default: CSS transitions for state changes. Add a library only for sequencing, scroll-linked or interruptible motion.
- GSAP (`gsap`, `@gsap/react`; all plugins are free in the public package) when the project needs timelines, ScrollTrigger, SplitText or Flip. Use the gsap-* skills for API correctness, DESIGN.md for feel.
- Once a library is chosen, never add a second one (no `motion`/`framer-motion` beside `gsap`, or the reverse).
- Always honor `prefers-reduced-motion` (`gsap.matchMedia()` or a CSS media query).

## ReactBits vs GSAP
- ReactBits (React projects with shadcn set up): for a single ready-made effect (text reveal, background, micro-interaction) that would take more than ~50 lines to hand-write.
  Install: `npx shadcn@latest add https://reactbits.dev/r/<Component>-TS-TW` (TS + Tailwind variant).
- Before adding, check its dependencies: `curl -s https://reactbits.dev/r/<Component>-TS-TW.json | jq .dependencies`.
  Reject it if it would bring a second animation library (about 28 components need `motion`, 18 need `gsap`) or a WebGL dependency (three, ogl) the page does not justify.
- After adding, restyle it to DESIGN.md tokens; delete its default colors and gradients.
- Hand-write GSAP when the motion is choreography across your own components, scroll-driven, or the hero moment.

## Autonomy
- Never stop to ask before installing packages or running builds, tests or dev servers.
- If a host is blocked (403, "Host not in allowlist"), note it, use a fallback (npm registry instead of a CDN or GitHub release, a local copy, or skip the optional step) and continue.
- The final report lists every blocked host, with the fallback used.
