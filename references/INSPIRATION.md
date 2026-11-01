# Inspiration: what each site does that the others don't

Seven sites, studied one by one. Nothing here is averaged. Each entry names the single thing that makes the
site worth studying, then the mechanism behind it, then how to build it inside DESIGN.md.

**Authority.** DESIGN.md and PRODUCT.md outrank everything below. These are mechanisms and compositions to
learn from. Never copy imagery, copy, logos or exact palettes (see `README.md`). Every "Build it here" line is a
proposal that has to pass the DESIGN.md palette, type, radius and motion rules.

**Evidence tags.** `[observed]` seen in a rendered screenshot or runtime probe. `[markup]` read from the page's
HTML, CSS variables or designlang output, but not seen rendered. `[stated]` the user's description, not verified.
`[inferred]` my reading, unverified. Treat `[inferred]` as a hypothesis.

Raw designlang output sits beside this file in `references/<host>/`. Snapshots are in `references/<host>/shots/`.

---

## Index: pick by the job

| Job on the page | Study | One-line mechanism |
|---|---|---|
| Hero that people play with | Heron | Instrument-panel hero: crosshair, rulers, live X/Y, drag to reveal flagged callouts |
| Make a stranger remember a name | Montarville | One wordmark, repeated three times at three scales, with one accent glyph (the full stop) |
| Tell people where they are on a long page | Mecha | Numbered section index with a progress bar (`[markup]` only, see caveats) |
| Browse many projects without a card grid | PDA | List rows with a full-bleed hover tint and a reveal slot on the right |
| Show a body of work as one place | dbydt | Whole portfolio as one WebGL point-cloud world, one canvas |
| Cinematic gallery | Jesper Landberg | Curved panels in a dark void, horizontal scroll pans the camera |
| Scroll-driven typographic drama | Edison Fang | Type echoes and rotates as you scroll, which is also a warning about wayfinding |
| Francesco Michelini | none | Not captured. Host blocked. See "Gaps" |

### The finding that applies to every entry
The accent is almost invisible by area, and it is still the thing you remember.
designlang's painted-area share: Heron `#fa3600` 2%, Montarville `#d0112b` under 1%, PDA `#e82428` under 1%.
That is DESIGN.md's One Flame Rule, confirmed by three independent sites. The memorability comes from placement
(a full stop, a bullet, a button, a marker), not from quantity.

---

## 1. Heron AI (heronaiapp.com): the hero is an instrument, not a banner

**Special:** the hero is an interactive technical drawing. The page's one idea is that the product *inspects*
things, and the hero demonstrates inspecting before it says anything.

**Observed mechanism** `[markup]` (the page is blank in our sandbox, see Gaps; everything here is from the raw HTML,
class names and visible text):
- **Boot sequence loader.** A `0%` counter plus a ten-line log, `001 INITIALIZE CORE SYSTEM` through
  `010 START EXECUTION`. The loader is a piece of copy that sets the "software that checks things" premise.
- **Instrument hero.** Classes `home-hero-ruler` (top, bottom, left, right items), `home-hero-img-plus`
  (a horizontal and a vertical line, i.e. a crosshair), `home-hero-img-coordi` (live `X: 1131 PX / Y: 1131 PX`
  readout), `home-hero-interact-txt`: "Click and drag your mouse to see violations", and a custom cursor
  (`cursor`, `cursor-inner`, `cursor-main`).
- **Callouts are specific, not decorative.** Each flagged spot has a code reference, a title and one sentence,
  e.g. `IBC 1015.3 / Guardrail required for fall protection`, `IBC 1011.11 / Handrails required`. Lower on the page
  the same pattern repeats with longer text (`IBC 1017.2 Exit Access Travel Distance` + explanation).
- **Spec-sheet intro** in mono: `TYPE: / FOUNDED: / FOCUS: / LOCATION:`.
- Bracketed indices `[01]` to `[04]` on a problems list, and an SVG self-draw keyframe `homeProblemDraw`.
- **Tokens (designlang):** white ground 80% of painted area, `#282828` text, `#b3b3af` hairlines and disabled,
  `#fa3600` brand at 2%. Only radii are pills (50 to 99px); everything else is square. One hard shadow with no blur
  (`0 5.9px 0 -1.5px`), i.e. a solid offset line, not a soft shadow.
- **"Embroidered" background** is real: CSS variables `--bg-img` and `--bg-grid` point at SVG textures
  (`bg.svg`, `bg-deco.svg`). It is a faint SVG grid, not a photo. `[markup]`
- **Type:** BT Grotesk + Geist Mono (the same mono family as DESIGN.md). Type scale ratio 1.2. The whole page scales
  with a viewport-proportional root font size (`html { font-size: 2.54vw }` per breakpoint).
- **Stack:** GSAP + ScrollTrigger + SplitText + TextPlugin, Lenis, Barba (page transitions), Swiper.

**Why it works:** the interaction is the explanation. Mono labels and coordinates make it feel measured. The accent
marks only the flagged problems, so red means "look here" and nothing else.

**Build it here (hardware builds):**
- 2D plan or schematic of the build on a paper ground, hairline `rule` grid texture as SVG.
- Fire square markers at real components. Selecting one opens a callout: **part ID in mono, title in label weight,
  one sentence**. Same three-slot schema as Heron's code citations.
- Keep a persistent mono coordinate readout and edge rulers. They cost almost nothing and make it look engineered.
- **One Flame problem:** many fire markers at once breaks "one flame per viewport". Resolve it deliberately:
  markers are ink squares at rest with a fire outline-or-fill only on the *selected* one, or only the next
  unvisited marker pulses. Do not ship ten simultaneous fire squares.
- Geist Mono for coordinates and part IDs already matches the system. Do not borrow BT Grotesk.
- Skip: the blur-free hard shadow (DESIGN.md allows only the soft floating-layer shadow; get depth from a 1px rule).

**Check before building:** it needs a keyboard path (arrow keys between markers, Enter to open) and a touch path
at 390px (tap, not drag). Heron's prompt says drag, which does not exist on touch. `[inferred]`

---

## 2. Montarville (montarville.ca): one name, repeated until it sticks

**Special:** it is the most remembered of the seven and it does it with a single device, a wordmark that ends in an
accent-coloured full stop (`montarville.`), repeated at three scales.

**Observed mechanism** `[observed]`:
- Hero: the wordmark fills the width at display scale, white on near-black `#121212`, red full stop. Under it a
  two-line statement where only key words are bold. Two buttons: solid red, and a dark ghost.
- Nav shows the wordmark small. The footer shows it again at giant scale, **cropped by the viewport bottom**, with
  a blur on the cropped edge and the red full stop sitting in the corner. Hero, nav and footer say the same word
  three times at three sizes.
- **Eyebrows:** a small red square bullet plus a tiny uppercase label (`● CE QUI NOUS DISTINGUE`).
- **Offset stack:** services appear as dark cards that step diagonally down and right, with `01 / 04` counters,
  faint line-art circles behind, and a small red arrow tile bottom right.
- **Photobooth showcase:** full-bleed photo, a numbered rail `01 02 03 04` on the left with the active one filled,
  and a white caption card (category, bold title, one line, arrow button) that changes with the photo.
- **Footer card pair:** one white card (nav list, large), one dark card (contact in small mono), side by side, with
  the wordmark rising behind them.
- **Tokens:** `#121212` 65%, `#252525` 25%, `#000` 6%, `#fafafa` 4%, red `#d0112b` under 1%. Fonts: General Sans
  (display), Sono Proportional (tiny labels), Fira Sans (body). Easings include `cubic-bezier(0.76,0,0.24,1)`
  (in-out) and `cubic-bezier(0.25,1,0.5,1)`. **Stack:** GSAP 3.13 + ScrollTrigger + Lenis (`[observed]` at runtime).

**Why it works:** repetition beats cleverness. The viewer meets the name before they read anything, and meets it
again at the end cropped and enlarged, which feels like a signature.

**Build it here (Josef Yang, memorable to an admissions reader):**
- Plain text name set in Geist 600 at Display scale, `-0.04em`. **No monogram, no drawn logo** (PRODUCT.md).
- The accent-glyph idea fits DESIGN.md if the glyph is **a fire full stop after the name, on an ink section**
  (fire text is allowed on ink, banned on paper). On a paper hero use a fire-filled square dot, not a fire letter.
  This is a proposal, the user's call.
- Footer: the same name, giant, cropped at the viewport bottom, paper on ink. Easy to build and the strongest
  memory device in this folder. It spends the footer's one flame on the full stop.
- Photobooth rail: numbered rail + one caption card per project is a clean way to present a short list of
  projects. Rail numbers in Geist Mono.
- Skip: the blur on the cropped wordmark edge (DESIGN.md: no glow, no gradients). Use a hard crop.
- Skip: red as button fill plus bullets plus arrow tile on one screen. That is three flames.

---

## 3. Mecha Capital (mecha-xyz.webflow.io): always know where you are

**Special (user's note):** a section index and progress bar so a long home page never loses the reader.

**Evidence is weak here.** Mecha's stylesheet, scripts and fonts live on `cdn.prod.website-files.com`, which this
sandbox blocks, so the page rendered unstyled and designlang's output for it is invalid (it reported Times New
Roman and one colour). I deleted that extraction and kept only the motion tokens, which come from page-level code.
`[markup]` from the HTML text and script list only:
- Numbered sections in the markup: `00` then `01 Tomorrow Recycling`, `02 AeSCAPE`, `03 Tomorrow Landscaping` etc.
  A numbered index is certainly there. The *rail and progress bar* the user describes `[stated]` were not seen
  rendered.
- Each numbered entry carries a **row of big stats** (`25% increase in material recovery`, `52% headcount
  reduction`, `76% automated sortation`; `25,000+ massages`, `$16k monthly revenue`, `92% satisfaction`).
- **Stack:** GSAP 3.15 with ScrollTrigger, CustomEase, ScrollToPlugin, SplitText, DrawSVG; Lenis; three.js 0.160 with
  GLTFLoader (a 3D model somewhere). Easings in the page code: `cubic-bezier(0.7,0,0.3,1)` and `(0.9,0,0.1,1)`
  (long in-out, deliberate and mechanical).

**Build it here:**
- A fixed left or top index: current section number in mono (`02 / 05`), section name, a 1px `rule` track with an
  ink fill that grows with scroll, built from one ScrollTrigger per section. The active item takes DESIGN.md's
  2px fire underline, which is the viewport's flame. That is the existing Navigation rule, no new token.
- Each index entry is a link (anchor with `ScrollToPlugin` or native `scroll-behavior`), so the rail is also
  navigation, not decoration.
- At 390px collapse the rail to a thin top progress hairline plus a `02 / 05` counter.
- To get real visuals, re-run designlang and the screenshots on a machine that can reach the Webflow CDN, or allow
  that host (see Gaps).

---

## 4. PDA (pda.archi): the project list as a typographic table

**Special:** it presents work as a quiet table. No cards, no shadows, no rounded thumbnails.

**Observed** `[observed]`:
- **Projects page** (`/en/projects`): a `Grid` / `List` toggle, with a bullet marking the active view and the
  inactive one in a faded tone. A floating dark `Filters` pill pinned bottom-centre.
- **List view:** each row is a 3-column grid, `name | one-line descriptor | tag pill` (`49 Champs-Élysées |
  Refurbishment of a prime office building. Paris CBD | OFFICES`). **Hovered row gets a full-bleed tint**, edge to
  edge of the viewport, not just the content width. The right ~60% of the row is empty on purpose, the slot where
  the project image appears on hover `[stated]`; I could not see it because images come from `cdn.sanity.io`
  (blocked).
- **Home hero:** warm grey ground, the name split into three words pushed to the left edge, centre and right edge
  (`Partners` ... `&` ... `Dalous` ... `Architecture`), a statement at lower right (`Refurbish rather than
  demolish.`). Later, a sentence is spread across the full width one word at a time as you scroll
  (`vertical` ... `of`), and a `1 - 03` counter with `Prev / Next` drives testimonials, with a short ink line that
  fills as a progress hairline.
- **Controls:** the primary action is a full-radius ink pill (`Contact us`), the menu is a round tinted button. Text
  buttons are underlined links with a small ring bullet (`o Discover our expertise`).
- **Tokens:** paper `#eceae5` 60%, `#161616` 31%, red `#e82428` under 1%. SequelSans, scale ratio 1.2, 12-column
  grid, viewport-proportional root size. **Stack:** Lenis, CMS images (Sanity), two looping `video` elements.

**Why it works:** French restraint. Hierarchy is only type size and whitespace. The hover is a *tint of the whole
row plus a reveal*, which is more elegant than a card lift.

**Build it here (a projects list that avoids cards):**
- Row grid `name | descriptor | tag`, 1px `rule` between rows, hover = row goes from paper to a tonal step
  (full-bleed) and a preview slot in the right 40 to 60% fades in at 240ms. This uses only DESIGN.md tokens.
- Keep a visible, quiet `Grid` / `List` toggle with the bullet convention, which also fixes touch: on 390px show the
  image inline under the title since there is no hover.
- Word-spread hero line (left, centre, right edges) is a strong, cheap typographic move.
- Skip: the dark Filters pill competing with the CTA. At 6 or fewer projects a filter is overhead.

---

## 5. dbydt.space (Deebak Tamilmani): a portfolio that is one place

**Special (user's note):** every project lives in one 3D world and scroll *moves you to the next one*.

**What I could verify.** The page renders one `canvas` and text. Screenshots timed out in the software-GL sandbox,
so I never saw the scene. `[markup]` facts:
- **The concept is stated in the copy:** the work is "drawn in real time as a point cloud, arranged not by scale,
  chronology, or how complete they are, but by the impressions they left behind." That sentence is the design
  brief for the whole site. It converts a CV list into a reason for the 3D to exist.
- **Point cloud, not meshes.** Dots are cheap, and they hide missing detail, so unfinished projects feel intentional.
- Eight projects each get one sentence of prose (`Hues of Al'Ula is a farm dwelling in the Cultural Oasis of
  Al'Ula...`), then Research and Experience sections as ordinary text. This matches the user's note: a
  featured world first, then a normal page below `[stated]`.
- **Palette** is a near match to ours: ground `#eeebe4` 74%, `#000` 14%, `#2b2b2b` 12%. Fonts: Lay Grotesk (body),
  **Geist Pixel** (labels). Keyframes: `pg-annot-plus-in`, `pg-annot-grow`, `pg-annot-rise` (annotation plus-marks that
  appear and grow), `film-grain-flicker`. Lenis for scroll, no GSAP global. Easing `cubic-bezier(0.16,1,0.3,1)`,
  the same as DESIGN.md's.

**Build it here, and my honest assessment:** this is the highest-risk idea in the set for an admissions reader.
A real-time point cloud needs WebGL (three or ogl). CLAUDE.md says to reject a WebGL dependency the page does not
justify, and a reviewer on a school laptop or phone is the audience that cannot afford a heavy first paint. The
transferable parts are cheap and do not need WebGL:
- **The organising idea.** Pick one honest sentence that explains why the work is arranged the way it is.
- **"Featured world, then a normal page."** Make the featured section a pinned GSAP ScrollTrigger sequence (one
  project per viewport, up and down reversible via `scrub`), and let the page resume at normal flow underneath.
- **Annotation plus-marks** that grow in beside a project are the same family as Heron's markers. They carry the
  one-flame accent without a 3D scene.
- If 3D is ever worth it, build the featured section as an *enhancement* behind `prefers-reduced-motion` and
  a static fallback.

---

## 6. Jesper Landberg (jesperlandberg.com): a gallery you travel through

**Special:** scrolling does not move a page, it moves a camera past curved panels hanging in a black room.

**Observed** `[observed]` (7 frames, `shots/scroll-sequence.jpg`):
- Pure black void with a perspective **floor grid** in dark grey lines. Project panels are **bent into a gentle
  arc**, the near edge larger than the far, so the row reads as a curved wall seen from inside.
- Scrolling pans sideways (content slides left, new content enters right, as the user described). Neighbouring
  panels sit dim and out of focus until they reach centre. The centre panel is lit.
- Chrome is minimal and tiny: name top left, `Profile` top right, `Featured / Full` toggle bottom left,
  `Newsletter` bottom right, and a small project title under each panel. A thin third state shows an about
  paragraph in yellow-olive text on a panel.
- **Tokens:** `#000` ground 100%, white text, one grey-scale sans. Type is tiny (about 8 to 9px base) and relies
  on a viewport-proportional root. Motion: only `cubic-bezier(0,0,0.2,1)` at 300 to 500ms in CSS, the scene itself
  is WebGL. Video streams from Mux, content from DatoCMS. Scroll feel `[observed]`: eased pan, no snap.

**Why it works:** consistency of one metaphor. Every part of the interface (grid floor, curved wall, toggled views)
belongs to the same room. Tiny type works because everything else is large imagery.

**Build it here:** it directly conflicts with DESIGN.md's flat, paper-ground grammar (black void, no hairline
rules, a different spatial model). Do not import the look. The transferable lesson is the **`Featured / Full`
toggle**: a curated short path first, the complete list one click away. That fits a portfolio for someone who needs
both a 30-second pass and a deeper dive.

---

## 7. Edison Fang Workshop (edisonfangworkshop.com): a deliberate negative example

The user said this one felt minimal and confusing. The screenshots explain the confusion `[observed]`:
- The headline `Let's give it form.` is set in mono, and as you scroll the lines **shear, flip and echo into stacked
  ghost copies**, rotating through vertical and upside-down states, then `Make space. Make sense.` runs sideways.
- **Registration marks:** thin horizontal rules with small red end-dots, plus grey blocks with red corner dots
  (crop marks), which read as image placeholders. Real photos did not appear, and I could not tell whether that was
  by design or lazy-loading `[inferred]`.
- Vertical micro-labels run down the left edge (`SPACE & GRAPHIC DESIGN`).
- **Tokens:** white, near-black text, one rust accent `#b64d2b`, mono (Source Code) for headings, a serif (Iowan Old
  Style) for body. Easing `cubic-bezier(0.22,1,0.36,1)`. Keyframes named like a physical metaphor (`exchange-lid-
  close`, `exchange-tray-open`, `exchange-paper-in/out`).

**What is worth taking:**
- **The ghost-trail echo** is a beautiful, cheap effect for one headline: duplicated text offset by scroll velocity at
  decreasing opacity. It reads as speed.
- **Crop marks and registration dots** as a graphic language fit a hardware or build portfolio, and fit the fire dot.

**What caused the confusion (avoid):** the headline rotates while nothing else holds still, so there is no anchor
and no sense of progress. This is the exact opposite of Mecha's index. If you use scroll-driven type, keep a
fixed element (a rail, counter or nav) on screen the whole time.

---

## Combinations: what to take and what to refuse

The risk in this list is using everything. Each site works because it makes **one** bold move and keeps the rest
silent. DESIGN.md's first principle is "Restraint is the signature." A page with a Heron hero, a Montarville
footer, a Mecha rail, a PDA list, a Jesper room and a dbydt cloud is a median-of-everything.

Recommended allocation for a Josef Yang page:

1. **Signature moment (one):** the Heron-style instrument hero, applied to a hardware build.
2. **Wayfinding (one, always on):** the Mecha-style numbered index and progress line.
3. **Memory device (one):** the Montarville cropped giant name in the footer, with a fire full stop on ink.
4. **List grammar:** the PDA row table for the projects index.
5. **Optional, only if time allows:** Edison's ghost-trail on a single headline.

Do not build: Jesper's 3D room or dbydt's point cloud for the main path. They cost the most, fit DESIGN.md least,
and they hurt the audience that matters (fast, possibly on a phone).

## Cross-cutting facts worth knowing

- **Viewport-proportional rem** appears on Heron, Jesper and PDA (and Mecha's `calc(var(--base)*1rem +
  var(--coefficient)*1vw)`). It keeps the composition identical at any width, which is why those sites feel
  "composed". Cost: it can break user zoom and font-size preferences. DESIGN.md currently uses `clamp()`; adopting
  vw-rem would be a deliberate token change made in DESIGN.md first.
- **Libraries:** GSAP + Lenis is the common pairing (Heron, Montarville, Mecha). CLAUDE.md says one animation
  library; GSAP is it. Lenis is a smooth-scroll layer, not an animation library, but it changes native scroll feel
  and can fight `ScrollTrigger` pinning on touch. Needs a decision before use.
- **Easings the good sites share:** `cubic-bezier(0.16,1,0.3,1)` (dbydt, matches DESIGN.md), `0.23,1,0.32,1`
  (Heron, PDA), `0.22,1,0.36,1` (Edison, Montarville). All strong ease-out, no bounce.
- **Mono as a second voice:** Heron (Geist Mono), Montarville (Sono), Edison (Source Code), dbydt (Geist Pixel).
  Small mono labels for numbers, coordinates and indices appear on four of seven.

## Gaps and blocked hosts

- **francescomichelini.com / www.francescomichelini.com:** `403 Forbidden` from the sandbox proxy (CONNECT blocked),
  so there is no extraction and no snapshot. Nothing about this site is in the repo. To capture it: add the host
  to the environment allowlist, or run the README command on a local machine.
- **cdn.prod.website-files.com** (Webflow assets): blocked, and it affects Heron and Mecha. Heron's loader never
  finished, so no rendered snapshot exists and its fonts and images are missing. Mecha rendered unstyled and its
  extraction was discarded (motion tokens kept).
- **cdn.jsdelivr.net, unpkg.com:** blocked. I served the npm-registry copies of GSAP, Lenis, Swiper and Barba to the
  page through request interception for the probes. That is why GSAP and Lenis detection on Montarville and others is
  `[observed]`. It did not unblock Heron (still waiting on the Webflow CDN).
- **cdn.sanity.io** (PDA images), **www.datocms-assets.com, stream.mux.com, image.mux.com** (Jesper), **cdnjs.cloudflare.com**
  (a Montarville icon font), `heronai-bp.netlify.app` (Heron's own `main.js`, which holds the hero logic), analytics
  hosts (googletagmanager, clarity, mixpanel): blocked, and not needed.
- **dbydt.space:** the scene never screenshotted under software GL, so nothing about the visuals is observed.
- **designlang flags:** `--screenshots`, `--responsive` and `--interactions` hung past 300s on Heron in this sandbox (I did not isolate which of the three). The runs used `--motion-runtime` only, with `--no-prompts`. Pinned `designlang@13.3.2`; no
  `apply`/`sync`/`clone`/`--emit-agent-rules`/`--smart` were used. Agent-rule, theme and config outputs were deleted.
