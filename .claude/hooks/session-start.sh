#!/usr/bin/env bash
# Cloud sessions only. Cheap check for playwright-cli, its Chromium, and Impeccable's engine;
# anything missing installs in the background so the session never waits. The setup script in
# ENVIRONMENT.md normally makes this a no-op.
[ "${CLAUDE_CODE_REMOTE:-}" = "true" ] || exit 0

dir="$(cd "$(dirname "$0")/.." && pwd)"
browsers="${PLAYWRIGHT_BROWSERS_PATH:-$HOME/.cache/ms-playwright}"
engine_version="$(tr -d '[:space:]' < "$dir/skills/impeccable/scripts/VERSION" 2>/dev/null)"
case "$(uname -m)" in aarch64|arm64) arch=arm64 ;; *) arch=x64 ;; esac
engine="$HOME/.impeccable/bin/$engine_version/impeccable"

need_cli=0; need_browser=0; need_engine=0
command -v playwright-cli >/dev/null 2>&1 || need_cli=1
compgen -G "$browsers/chromium*" >/dev/null || need_browser=1
[ -z "$engine_version" ] || [ -x "$engine" ] || need_engine=1
[ $((need_cli + need_browser + need_engine)) -eq 0 ] && exit 0

log=/tmp/start-design-bootstrap.log
nohup bash -c '
  if [ "$1" = 1 ]; then npm install -g @playwright/cli@0.1.22 || echo "FAILED: npm install -g @playwright/cli"; fi
  if [ "$1" = 1 ] || [ "$2" = 1 ]; then
    playwright-cli install-browser chromium --with-deps || playwright-cli install-browser chromium \
      || echo "FAILED: playwright-cli install-browser chromium"
  fi
  if [ "$3" = 1 ]; then
    t="$(mktemp -d)" && cd "$t" && npm pack "@impeccable/cli-linux-$4@$5" --silent >/dev/null \
      && tar xzf ./*.tgz && mkdir -p "$(dirname "$6")" && install -m 755 package/bin/impeccable "$6" \
      || echo "FAILED: impeccable engine $5 from npm"
    rm -rf "$t"
  fi
  echo "DONE"
' _ "$need_cli" "$need_browser" "$need_engine" "$arch" "$engine_version" "$engine" >"$log" 2>&1 &

echo "Bootstrapping missing tools in the background (cli=$need_cli browser=$need_browser impeccable-engine=$need_engine). Before the first screenshot, check $log ends with DONE."
exit 0
