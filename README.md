# Knowledge — Slidev Presentation Repository

A multi-deck [Slidev](https://sli.dev/) repository for building, managing, and deploying developer-friendly slide presentations. All decks share a single codebase and a unified company theme.

---

## Repository Structure

```
knowledge/
├── decks/                        # One subdirectory per presentation
│   ├── example/                  # Slidev starter/reference deck
│   ├── ai-foundations/           # What is AI, core concepts
│   ├── prompt-engineering/       # Prompt techniques and best practices
│   ├── gemini-gems/              # How to build custom Gemini assistants
│   ├── notebooklm/               # NotebookLM features and use cases
│   ├── n8n-workflows/            # n8n automation and AI workflows
│   ├── ai-agents/                # Agents, tools, skills, and memory
│   └── mcp-servers/              # Model Context Protocol explained
├── packages/
│   └── theme-company/            # Shared company theme (Roboto, #1c63b7, logo)
│       ├── styles/index.css      # Global styles + embedded logo
│       └── images/               # Theme assets
├── scripts/
│   └── build-all.sh              # Builds all decks into dist/
├── package.json
├── netlify.toml
└── vercel.json
```

---

## Getting Started

**Install dependencies** (only needed once):

```bash
pnpm install
```

**Run a deck in development mode:**

```bash
pnpm dev:<deck-name>

# Examples
pnpm dev:ai-foundations
pnpm dev:prompt-engineering
pnpm dev:mcp-servers
```

The dev server starts at `http://localhost:3030` with hot reload.

---

## Available Decks

| Deck | Command | Description |
|------|---------|-------------|
| **AI Foundations** | `pnpm dev:ai-foundations` | What AI is, data, algorithms, compute, the learning loop |
| **Prompt Engineering** | `pnpm dev:prompt-engineering` | Zero-shot, few-shot, CoT, role prompting, chaining |
| **Gemini Gems** | `pnpm dev:gemini-gems` | Creating custom Gemini assistants with instructions and files |
| **NotebookLM** | `pnpm dev:notebooklm` | Source-grounded AI research, audio overview, notebook guide |
| **n8n Workflows** | `pnpm dev:n8n-workflows` | Node-based automation, triggers, AI nodes, real-world examples |
| **AI Agents** | `pnpm dev:ai-agents` | Agent loop, tools, skills, memory types, multi-agent systems |
| **MCP Servers** | `pnpm dev:mcp-servers` | Model Context Protocol, architecture, building custom servers |
| **Example** | `pnpm dev:example` | Slidev feature showcase and reference |

---

## Building for Production

**Build a single deck:**

```bash
pnpm build:<deck-name>

# Example
pnpm build:ai-foundations
# Output → dist/ai-foundations/
```

**Build all decks at once:**

```bash
pnpm build
```

This runs `scripts/build-all.sh` and outputs every deck to `dist/<deck-name>/`.

```
dist/
├── ai-foundations/
├── prompt-engineering/
├── gemini-gems/
├── notebooklm/
├── n8n-workflows/
├── ai-agents/
├── mcp-servers/
└── example/
```

Each deck is a self-contained static SPA, deployable independently or together under one domain.

**Export a deck to PDF:**

```bash
pnpm export:<deck-name>
```

---

## Adding a New Deck

1. Create the deck directory and slides file:

```bash
mkdir decks/my-new-deck
touch decks/my-new-deck/slides.md
```

2. Add the theme reference at the top of `slides.md`:

```yaml
---
theme: ../../packages/theme-company
title: My New Deck
---

# First Slide
```

3. Add scripts to `package.json`:

```json
"dev:my-new-deck":    "slidev decks/my-new-deck/slides.md --open",
"build:my-new-deck":  "slidev build decks/my-new-deck/slides.md --base /my-new-deck/ --out dist/my-new-deck",
"export:my-new-deck": "slidev export decks/my-new-deck/slides.md"
```

4. Add a redirect rule to both `netlify.toml` and `vercel.json`:

```toml
# netlify.toml
[[redirects]]
from = "/my-new-deck/*"
to   = "/my-new-deck/index.html"
status = 200
```

```json
// vercel.json — add before the closing bracket
{ "source": "/my-new-deck/(.*)", "destination": "/my-new-deck/index.html" }
```

5. Run it: `pnpm dev:my-new-deck`

---

## Company Theme

All decks use the shared theme at `packages/theme-company/`.

| Property | Value |
|----------|-------|
| Font | Roboto (400, 500, 700) |
| Primary colour | `#1c63b7` |
| Background | `#ffffff` |
| Logo | Top-right corner on every slide |

To reference the theme in a deck's frontmatter:

```yaml
theme: ../../packages/theme-company
```

To modify the theme (colours, fonts, logo), edit:

```
packages/theme-company/styles/index.css
```

---

## Deployment

The `dist/` folder is deployment-ready as a static site. Both `netlify.toml` and `vercel.json` are pre-configured with SPA rewrite rules for each deck.

| Platform | Steps |
|----------|-------|
| **Netlify** | Connect repo → build command `npm run build` → publish dir `dist` |
| **Vercel** | Connect repo → framework "Other" → build command `npm run build` → output dir `dist` |

---

## Tech Stack

- [Slidev](https://sli.dev/) — markdown-based slide framework
- [Vue 3](https://vuejs.org/) — component support within slides
- [Shiki](https://shiki.matsu.io/) — syntax highlighting
- [pnpm](https://pnpm.io/) — package manager
