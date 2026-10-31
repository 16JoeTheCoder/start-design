# References

designlang extracts a site's design language for study. It needs to open arbitrary websites, which
the cloud allowlist blocks, so **run it on your own machine only** (Ubuntu or WSL terminal). Commit the
results here; cloud sessions read them as files.

## Run (Ubuntu / WSL)

```bash
npm install -g designlang@13.3.2
```

```bash
designlang install-browser --with-deps
```

```bash
cd ~/code/<your-project> && designlang https://example.com --out references/example.com --screenshots --responsive
```

Then commit:

```bash
git add references/example.com && git commit -m "references: add example.com extraction"
```

Commit the `*-design-language.md`, `*-preview.html` and any screenshots it wrote. Drop the theme/config files
(Tailwind, shadcn, Figma, CSS variables) if you want the folder lean; they are never imported.

## Rules for using a reference
- References are evidence for critique and direction, never a token source. DESIGN.md stays the only
  authority; a value worth keeping gets added there deliberately, re-checked for contrast.
- Never copy a reference's logo, imagery or copy.

## What the designlang skill does beyond running the CLI (read before use)
Its skill file (`skills/extract-design/SKILL.md` in the npm package, v13.3.2) only runs `designlang <url>`
and reads the output. It is not vendored into this repo. The package itself can do more, and these
commands are off-limits here:
- `apply`, `sync`, `clone`: write extracted tokens or a Next.js starter into your project, which would create a
  parallel token system.
- `--emit-agent-rules`: writes CLAUDE.md / agents.md / Cursor rule files that would compete with this repo's.
- `--smart`: sends page-derived data to Anthropic, OpenAI or Atlas Cloud when an API key is set in your shell.
- `mcp` and the Claude Code plugin/marketplace: not needed, and plugins don't load in cloud sessions anyway.
- The skill suggests an unpinned `npm install -g designlang` / `npx designlang`. Use the pinned version above.
