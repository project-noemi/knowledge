# DEV_AGENT_PROMPT — project-noemi/knowledge

> **Multi-deck Slidev monorepo** for the NoéMI AI Fluency training program. 18 topic decks (AI foundations, prompt engineering, ethics, marketing, productivity, etc.) built with **Slidev + pnpm**. Deployed to **Netlify** and **Vercel** with per-deck base paths.

---

## 1. Orientation — Read the Docs

Before touching any file, read and internalise:

| Document | Why |
|----------|-----|
| `README.md` | Project overview and deck inventory |
| `package.json` | Per-deck scripts pattern: `dev:{deck}`, `build:{deck}`, `export:{deck}` |
| `scripts/build-all.sh` | Batch build script — builds all decks to `dist/{deck}/` |
| `netlify.toml` | Netlify deploy configuration |
| `vercel.json` | Vercel deploy configuration |
| `.npmrc` | pnpm registry configuration |

### Tech Stack

- **Slidev** presentation framework
- **pnpm** package manager (workspace-aware)
- **Vue 3** components (per-deck `components/` directories)
- Deployed to **Netlify** and **Vercel** simultaneously
- Per-deck **base paths** for multi-deck hosting (`/ai-foundations/`, `/prompt-engineering/`, etc.)

### Deck Inventory (18 decks)

`ai-agents`, `ai-creative`, `ai-data`, `ai-ethics`, `ai-foundations`, `ai-marketing`, `ai-productivity`, `ai-strategy`, `ai-tools-landscape`, `ai-writing`, `custom-gpts`, `example`, `gemini-gems`, `mcp-servers`, `n8n-workflows`, `notebooklm`, `prompt-engineering`, `vibe-coding`

### Key Patterns

- **Per-deck structure**: `decks/{name}/slides.md` — each deck is self-contained
- **Per-deck scripts**: `npm run dev:{name}`, `npm run build:{name}`, `npm run export:{name}`
- **Build output**: `dist/{name}/` — one directory per deck with correct base path
- **Build-all**: `scripts/build-all.sh` iterates all `decks/*/` directories
- **Packages**: `packages/` may contain shared Slidev addons or themes
- **Base path pattern**: `--base /{name}/` ensures correct asset paths in multi-deck deploy

---

## 2. Plan — Write a Plan

Before writing code, create a plan in `docs/IMPLEMENTATION_PLAN.md`:

1. **What** — new deck, content update, or infrastructure change
2. **Deck scope** — which deck(s) affected
3. **Cross-deck impact** — shared components, themes, or packages affected?
4. **Script updates** — does `package.json` need new dev/build/export entries?
5. **Deploy verification** — preview URLs for affected decks on Netlify/Vercel

---

## 3. Documentation — Write User Docs First

- `README.md` — update deck inventory when adding/removing decks
- Each deck's `slides.md` should have speaker notes (`<!-- notes -->` blocks)
- If adding shared components to `packages/`, document their API and usage
- Update `scripts/build-all.sh` if changing build patterns

---

## 4. Tests — Write Tests First

No formal test framework, so focus on:

- **Build test**: `npm run build:{deck}` must succeed for every affected deck
- **Export test**: `npm run export:{deck}` must produce valid PDF
- **Full build**: `npm run build` (runs `scripts/build-all.sh`) — all 18 decks must build
- **Link check**: Verify all image/asset paths resolve correctly
- **Base path check**: Built assets must use correct `/{name}/` base path

---

## 5. Code — Write the Code

### Adding a New Deck

1. Create `decks/{name}/slides.md` with Slidev frontmatter
2. Add three scripts to `package.json`:
   - `"dev:{name}": "slidev decks/{name}/slides.md --open"`
   - `"build:{name}": "slidev build decks/{name}/slides.md --base /{name}/ --out dist/{name}"`
   - `"export:{name}": "slidev export decks/{name}/slides.md"`
3. Add images to `decks/{name}/images/` (if needed)
4. Update `README.md` deck inventory

### Slide Content Rules

- One slide per `---` separator block
- YAML frontmatter per slide for layout/theme overrides
- Speaker notes in `<!-- notes -->` blocks
- Images with relative paths: `./images/filename.png`
- Keep slides concise — training context, not documentation

### Shared Resources

- Shared themes/components go in `packages/`
- Build script (`scripts/build-all.sh`) must remain generic — it auto-discovers `decks/*/`
- `.npmrc` settings apply to all decks

---

## 6. Test the Code — Verify Everything

```bash
pnpm install                       # Install dependencies
pnpm run dev:{deck}                # Visual check for specific deck
pnpm run build:{deck}              # Build specific deck
pnpm run build                     # Build ALL decks
pnpm run export:{deck}             # PDF export for specific deck
```

- Verify all 18 decks build without errors
- Check Netlify and Vercel preview deploys
- Verify base paths are correct in built output

---

## Branch Workflow

```
feature/* ──► develop ──► main
```

- All work on `feature/*` branches off `develop`
- PR to `develop` for review
- `develop` → `main` via PR only (enforced by CI)
- Netlify/Vercel deploy from `main`
