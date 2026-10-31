# Vendored skills

| Skill dir | Upstream | Pin | Source used | License |
|---|---|---|---|---|
| `impeccable/` + `../agents/impeccable-*.md` | github.com/pbakaus/impeccable (`.claude/skills/impeccable`, `.claude/agents`) | v4.8.0, commit `2f97a85a4a87a80066a693bd3546b092bd300772`, engine 0.1.18 | raw.githubusercontent.com, file by file. The `impeccable` npm package ships only an installer that downloads from impeccable.style, which is blocked. | Apache-2.0 (`LICENSE`, `NOTICE.md`) |
| `gsap-core`, `gsap-timeline`, `gsap-scrolltrigger`, `gsap-plugins`, `gsap-utils`, `gsap-react`, `gsap-performance`, `gsap-frameworks` | github.com/greensock/gsap-skills (`skills/`) | commit `aed9cfd3277740755f6bfc1155c7aa645403b760` | raw.githubusercontent.com, file by file (not on npm). `skills/llms.txt` index omitted. | MIT (`LICENSE` in each dir) |
| `playwright-cli/` | npm `@playwright/cli` (`skills/playwright-cli`) | 0.1.22 (same as `playwright-cli install --skills` output) | npm tarball | Apache-2.0 (`LICENSE`; upstream ships no NOTICE) |

Files are byte-identical to upstream (verified against a git checkout at the pinned commits). The one
exception is `impeccable/scripts/impeccable`, whose exec bit was restored because raw downloads drop it.
No files were edited.

## Flags: remote fetch or execution
- **impeccable**: `scripts/impeccable` runs a native engine binary. It downloads it from GitHub releases on
  first use, but only after sha256-checking against `scripts/engine-checksums.txt`. Here it comes from npm
  `@impeccable/cli-linux-x64` instead (same hash; see ENVIRONMENT.md and `.claude/hooks/session-start.sh`).
  The engine calls `impeccable.style/api/roll` (anonymous telemetry on by default; disabled via
  `IMPECCABLE_NO_TELEMETRY=1` in `.claude/settings.json`) and checks for updates. `generate-image` calls
  `api.openai.com` when `OPENAI_API_KEY` is set. `live` mode injects `scripts/live-browser.js` into your dev
  page. Its new-work flow may suggest Google Fonts, which CLAUDE.md overrides with @fontsource.
  Impeccable's own detector hooks (`/impeccable hooks on`) are not installed; CLAUDE.md runs `detect` once per loop instead.
- **gsap-***: documentation only, nothing fetched or executed. It recommends GSAP by default and shows
  `back`/`elastic` eases, which DESIGN.md forbids. CLAUDE.md decides the library.
- **playwright-cli**: `eval` and `run-code` execute arbitrary JS in the page. `allowed-tools` pre-approves
  `npx playwright` while the skill runs. The skill suggests an unpinned `npm install -g @playwright/cli@latest`;
  the setup script pins the version instead. `show --annotate` opens an interactive dashboard.

## Not vendored
taste-skill and UI/UX Pro Max are excluded on purpose.
Both are direction skills, and so is Impeccable.
Two direction authorities give contradictory instructions; Impeccable plus DESIGN.md is the single one.

## Update / rebuild dist zips
Re-fetch at a new pin, re-diff, then from the repo root:
`rm -f dist/*.zip && cd .claude/skills && for d in */; do zip -qrX "../../dist/${d%/}.zip" "${d%/}"; done`
