# Cloud environment

Paste these into claude.ai/code, environment selector, your environment, **Edit**.

## Network access

Select **Custom**, check **Also include default list of common package managers**, and enter exactly:

```text
cdn.playwright.dev
playwright.download.prss.microsoft.com
ui.shadcn.com
reactbits.dev
```

No wildcards, not **Full**. Why each host:
- `cdn.playwright.dev`: Chromium for playwright-cli. Its zips redirect to `storage.googleapis.com`, already in the defaults.
- `playwright.download.prss.microsoft.com`: Playwright's fallback mirror (ffmpeg and others).
- `ui.shadcn.com`: the shadcn CLI's registry and schema.
- `reactbits.dev`: ReactBits registry JSON for `npx shadcn@latest add https://reactbits.dev/r/...`.

Not needed, deliberately left out: `impeccable.style`. Its engine is installed from npm below. Leaving it out disables only Impeccable's "roll" API and update checks.

## Setup script

Runs as root before Claude starts. Every step reports what failed and the script always exits 0.
Measured at 29 s on a session VM that already had the apt packages and Chromium's system libraries, including the ~310 MB browser download. A bare VM adds those two apt installs, typically 1 to 2 minutes, which keeps it under the 5-minute cache limit. The bare-VM time was not measured.

```bash
#!/bin/bash
export DEBIAN_FRONTEND=noninteractive
export IMPECCABLE_NO_TELEMETRY=1
PW_CLI=0.1.22        # keep equal to .claude/skills/VENDORED.md
IMPECCABLE_ENGINE=0.1.18

{ apt-get update -qq && apt-get install -y -qq --no-install-recommends \
    imagemagick librsvg2-bin webp optipng fonts-noto-color-emoji; } \
  || echo "FAILED: apt install imagemagick librsvg2-bin webp optipng fonts-noto-color-emoji" &
npm install -g --silent "@playwright/cli@$PW_CLI" \
  || echo "FAILED: npm install -g @playwright/cli@$PW_CLI" &
{ t=$(mktemp -d) && cd "$t" && npm pack --silent "@impeccable/cli-linux-x64@$IMPECCABLE_ENGINE" >/dev/null \
    && tar xzf ./*.tgz && install -D -m 755 package/bin/impeccable "$HOME/.impeccable/bin/$IMPECCABLE_ENGINE/impeccable"; } \
  || echo "FAILED: Impeccable engine $IMPECCABLE_ENGINE from npm" &
wait

playwright-cli install-browser chromium --with-deps \
  || echo "FAILED: playwright-cli install-browser chromium --with-deps"

mkdir -p "$HOME/.claude" && cat > "$HOME/.claude/CLAUDE.md" <<'EOF' || echo "FAILED: write ~/.claude/CLAUDE.md"
Brand tokens outrank any skill: ink #0D0E10, paper #F3F2EE, fire #FF5B1F as accent only (never text on paper). Minimal, sleek, composed. Other skills may critique or add motion, never change palette or layout.
UI loop: build, serve over http, screenshot at 390px and 1440px with playwright-cli, critique against DESIGN.md, fix, max 2 rounds, then ship and list remaining issues.
Fonts via @fontsource, never CDNs. One animation library per project.
Never stop to ask before installing npm/pip packages or running builds. If a host is blocked, note it, use a fallback, continue, and list every blocked host in the final report.
EOF

(cd /tmp && playwright-cli install --skills --global) \
  || echo "FAILED: playwright-cli install --skills --global"

exit 0
```

### Changes from the seed, and why
- **Browser install uses `playwright-cli install-browser`, not `npx -y playwright install`.** On this image `npx playwright` resolves the preinstalled Playwright 1.63 (Chromium r1243), but playwright-cli 0.1.22 drives Playwright 1.64 (Chromium r1247). The seed command would install the wrong build.
- **`@playwright/cli` is pinned** to the version of the vendored skill, so the CLI and its skill docs always match.
- **Impeccable engine added.** Impeccable's launcher otherwise downloads its engine from GitHub releases on first use. The npm package `@impeccable/cli-linux-x64` carries the same binary (sha256 matches the checksum the skill pins), and the launcher re-verifies it.
- **`playwright-cli install --skills --global`** writes straight to `~/.claude/skills/playwright-cli`, so there is no copy step.
- **apt runs `update` first** and uses `--no-install-recommends` (a fresh VM may have empty package lists, and recommends roughly double the install time).

The repo's SessionStart hook (`.claude/hooks/session-start.sh`) repeats the CLI, browser and engine checks at every cloud session start and installs anything missing in the background. A repo used without this setup script still works.
