# Knowledge — Slidev Presentation Repository

A multi-deck [Slidev](https://sli.dev/) repository for building, managing, and deploying developer-friendly slide presentations. All decks share a single codebase and a unified company theme. Every presentation is available in **English** and **Hungarian**.

---

## Repository Structure

```
knowledge/
├── decks/                          # One subdirectory per presentation
│   ├── example/                    # Slidev starter/reference deck (EN)
│   ├── example-hu/                 # Same deck in Hungarian
│   ├── ai-foundations/             # What is AI, core concepts
│   ├── ai-foundations-hu/          # … Hungarian translation
│   ├── ai-tools-landscape/
│   ├── prompt-engineering/
│   ├── gemini-gems/
│   ├── custom-gpts/
│   ├── notebooklm/
│   ├── ai-writing/
│   ├── ai-data/
│   ├── ai-productivity/
│   ├── ai-creative/
│   ├── ai-marketing/
│   ├── n8n-workflows/
│   ├── n8n-workflows-hu/
│   ├── vibe-coding/
│   ├── ai-agents/
│   ├── mcp-servers/
│   ├── ai-ethics/
│   └── ai-strategy/
│       └── *-hu/                   # Each EN deck has a matching *-hu/ sibling
├── packages/
│   └── theme-company/              # Shared company theme (Roboto, #1c63b7, logo)
│       ├── styles/index.css        # Global styles + embedded logo
│       └── images/                 # Theme assets
├── scripts/
│   └── build-all.sh                # Builds all decks (EN + HU) into dist/
├── package.json
├── netlify.toml
└── vercel.json
```

**Naming:** English decks live in `decks/<name>/`. Hungarian versions use the same name with a `-hu` suffix: `decks/<name>-hu/`. Both contain a `slides.md` with identical slide structure; only user-facing text is translated.

---

## Getting Started

**Install dependencies** (only needed once):

```bash
pnpm install
```

**Run a deck in development mode:**

```bash
pnpm dev:<deck-name>        # English
pnpm dev:<deck-name>-hu     # Hungarian

# Examples
pnpm dev:ai-foundations
pnpm dev:ai-foundations-hu
pnpm dev:n8n-workflows-hu
```

The dev server starts at `http://localhost:3030` with hot reload.

---

## Hungarian Decks (Magyar)

Every English deck has a Hungarian counterpart. Use the `-hu` suffix in all commands:

| Action | English | Hungarian |
|--------|---------|-----------|
| Dev | `pnpm dev:ai-writing` | `pnpm dev:ai-writing-hu` |
| Build | `pnpm build:ai-writing` | `pnpm build:ai-writing-hu` |
| Export PDF | `pnpm export:ai-writing` | `pnpm export:ai-writing-hu` |
| Deployed URL | `/ai-writing/` | `/ai-writing-hu/` |

Hungarian decks use the same company theme and Slidev features (`v-click`, layouts, code blocks). Product names, URLs, and code samples stay in English where appropriate. Deck-specific assets (e.g. `decks/n8n-workflows-hu/images/`) live inside the `-hu` folder.

`pnpm build` builds **all** decks in `decks/`, including every `-hu` variant, into `dist/<deck-name>/`.

---

## Available Decks

### Foundations

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **AI Foundations** | `pnpm dev:ai-foundations` · `pnpm dev:ai-foundations-hu` | What AI is, data, algorithms, compute, the learning loop |
| **AI Tools Landscape** | `pnpm dev:ai-tools-landscape` · `pnpm dev:ai-tools-landscape-hu` | Map of major AI tools by category — assistants, writing, image, code, automation |

### Communication & Content

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **Prompt Engineering** | `pnpm dev:prompt-engineering` · `pnpm dev:prompt-engineering-hu` | Zero-shot, few-shot, CoT, role prompting, chaining |
| **AI for Writing & Content** | `pnpm dev:ai-writing` · `pnpm dev:ai-writing-hu` | Drafting emails, reports, social posts, and summaries with AI |

### Custom Assistants

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **Gemini Gems** | `pnpm dev:gemini-gems` · `pnpm dev:gemini-gems-hu` | Creating custom Gemini assistants with instructions and files |
| **Custom GPTs** | `pnpm dev:custom-gpts` · `pnpm dev:custom-gpts-hu` | Building custom ChatGPT assistants with the GPT Builder |
| **NotebookLM** | `pnpm dev:notebooklm` · `pnpm dev:notebooklm-hu` | Source-grounded AI research, audio overview, notebook guide |

### Productivity & Data

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **AI for Data & Spreadsheets** | `pnpm dev:ai-data` · `pnpm dev:ai-data-hu` | ChatGPT data analysis, Google Sheets AI, formula generation |
| **AI for Meetings & Productivity** | `pnpm dev:ai-productivity` · `pnpm dev:ai-productivity-hu` | Meeting transcription, email AI, calendar automation |

### Creative & Marketing

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **AI Image & Video Generation** | `pnpm dev:ai-creative` · `pnpm dev:ai-creative-hu` | Midjourney, DALL-E, Runway, HeyGen — visual content creation |
| **AI for Marketing & Sales** | `pnpm dev:ai-marketing` · `pnpm dev:ai-marketing-hu` | Campaign copy, SEO, lead generation, CRM automation |

### Automation & Development

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **n8n Workflows** | `pnpm dev:n8n-workflows` · `pnpm dev:n8n-workflows-hu` | Node-based automation, triggers, AI nodes, real-world examples |
| **Vibe Coding** | `pnpm dev:vibe-coding` · `pnpm dev:vibe-coding-hu` | Building tools and automations with AI — no coding experience required |
| **AI Agents** | `pnpm dev:ai-agents` · `pnpm dev:ai-agents-hu` | Agent loop, tools, skills, memory types, multi-agent systems |
| **MCP Servers** | `pnpm dev:mcp-servers` · `pnpm dev:mcp-servers-hu` | Model Context Protocol, architecture, building custom servers |

### Strategy & Responsibility

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **AI Ethics & Responsible Use** | `pnpm dev:ai-ethics` · `pnpm dev:ai-ethics-hu` | Hallucinations, data privacy, bias, copyright, when not to use AI |
| **AI Strategy for Business** | `pnpm dev:ai-strategy` · `pnpm dev:ai-strategy-hu` | Identifying opportunities, ROI, adoption, governance, 90-day plan |

### Workshop Quiz

| Deck | Command | Description |
|------|---------|-------------|
| **AI Workshop Quiz (HU)** | `pnpm dev:ai-quiz-hu` | Interactive Hungarian quiz — 8 topics × 10 questions; Space reveals the correct answer |

### Reference

| Deck | Command (EN / HU) | Description |
|------|-------------------|-------------|
| **Example** | `pnpm dev:example` · `pnpm dev:example-hu` | Slidev feature showcase and reference |

---

## Suggested Workshop Flow

Use the English or Hungarian deck at each step (`pnpm dev:<name>` or `pnpm dev:<name>-hu`):

```
1.  AI Foundations           ← what is AI
2.  AI Tools Landscape       ← what tools exist
3.  Prompt Engineering       ← how to communicate with AI
4.  AI for Writing           ← first practical skill
5.  AI for Data              ← second practical skill
6.  AI for Meetings          ← daily productivity
7.  Gemini Gems              ← custom assistants (Google)
8.  Custom GPTs              ← custom assistants (OpenAI)
9.  NotebookLM               ← research use case
10. AI Creative              ← image/video generation
11. AI for Marketing         ← business application
12. n8n Workflows            ← automation
13. AI Agents                ← advanced automation
14. Vibe Coding              ← build without coding
15. MCP Servers              ← technical extension
16. AI Ethics                ← responsible use
17. AI Strategy              ← business transformation
```

---

## Building for Production

**Build a single deck:**

```bash
pnpm build:<deck-name>          # English
pnpm build:<deck-name>-hu       # Hungarian

# Example
pnpm build:ai-foundations
# Output → dist/ai-foundations/
```

**Build all decks at once:**

```bash
pnpm build
```

Output goes to `dist/<deck-name>/`. Each deck is a self-contained static SPA.

**Export a deck to PDF:**

```bash
pnpm export:<deck-name>
pnpm export:<deck-name>-hu
```

---

## Adding a New Deck

1. Create the English deck directory and slides file:

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

3. Add scripts to `package.json` for the English deck:

```json
"dev:my-new-deck":    "slidev decks/my-new-deck/slides.md --open",
"build:my-new-deck":  "slidev build decks/my-new-deck/slides.md --base /my-new-deck/ --out dist/my-new-deck",
"export:my-new-deck": "slidev export decks/my-new-deck/slides.md"
```

4. Add redirect rules to both `netlify.toml` and `vercel.json`:

```toml
# netlify.toml
[[redirects]]
from = "/my-new-deck/*"
to   = "/my-new-deck/index.html"
status = 200
```

```json
// vercel.json
{ "source": "/my-new-deck/(.*)", "destination": "/my-new-deck/index.html" }
```

5. Run it: `pnpm dev:my-new-deck`

### Adding the Hungarian translation

1. Copy the structure into a sibling folder:

```bash
mkdir decks/my-new-deck-hu
cp decks/my-new-deck/slides.md decks/my-new-deck-hu/slides.md
```

2. Translate user-facing text (headings, bullets, tables). Keep the same slide count, `---` separators, theme path, code blocks, URLs, and Slidev directives. See `decks/n8n-workflows-hu/slides.md` as a reference.

3. If the English deck has extra assets (`images/`, `components/`, `pages/`), copy them into `my-new-deck-hu/` and translate only visible strings.

4. Add `dev:`, `build:`, and `export:` scripts for `my-new-deck-hu`, plus redirect rules for `/my-new-deck-hu/*` in `netlify.toml` and `vercel.json`.

5. Run it: `pnpm dev:my-new-deck-hu`

`scripts/build-all.sh` picks up any new folder under `decks/` automatically — no script changes needed.

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

The `dist/` folder is deployment-ready as a static site. Both `netlify.toml` and `vercel.json` are pre-configured with SPA rewrite rules for every English and Hungarian deck (e.g. `/ai-foundations/` and `/ai-foundations-hu/`).

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
