# Knowledge — Slidev Presentation Repository

A multi-deck [Slidev](https://sli.dev/) repository for building, managing, and deploying developer-friendly slide presentations. All decks share a single codebase and a unified company theme.

---

## Repository Structure

```
knowledge/
├── decks/                          # One subdirectory per presentation
│   ├── example/                    # Slidev starter/reference deck
│   ├── ai-foundations/             # What is AI, core concepts
│   ├── ai-tools-landscape/         # Map of major AI tools by category
│   ├── prompt-engineering/         # Prompt techniques and best practices
│   ├── gemini-gems/                # How to build custom Gemini assistants
│   ├── custom-gpts/                # How to build Custom GPTs (OpenAI)
│   ├── notebooklm/                 # NotebookLM features and use cases
│   ├── ai-writing/                 # AI for writing and content creation
│   ├── ai-data/                    # AI for data analysis and spreadsheets
│   ├── ai-productivity/            # AI for meetings and productivity
│   ├── ai-creative/                # AI image and video generation
│   ├── ai-marketing/               # AI for marketing and sales
│   ├── n8n-workflows/              # n8n automation and AI workflows
│   ├── vibe-coding/                # Building with AI without coding
│   ├── ai-agents/                  # Agents, tools, skills, and memory
│   ├── mcp-servers/                # Model Context Protocol explained
│   ├── ai-ethics/                  # Responsible AI use for business
│   └── ai-strategy/                # AI strategy and business transformation
├── packages/
│   └── theme-company/              # Shared company theme (Roboto, #1c63b7, logo)
│       ├── styles/index.css        # Global styles + embedded logo
│       └── images/                 # Theme assets
├── scripts/
│   └── build-all.sh                # Builds all decks into dist/
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
pnpm dev:ai-writing
pnpm dev:vibe-coding
```

The dev server starts at `http://localhost:3030` with hot reload.

---

## Available Decks

### Foundations

| Deck | Command | Description |
|------|---------|-------------|
| **AI Foundations** | `pnpm dev:ai-foundations` | What AI is, data, algorithms, compute, the learning loop |
| **AI Tools Landscape** | `pnpm dev:ai-tools-landscape` | Map of major AI tools by category — assistants, writing, image, code, automation |

### Communication & Content

| Deck | Command | Description |
|------|---------|-------------|
| **Prompt Engineering** | `pnpm dev:prompt-engineering` | Zero-shot, few-shot, CoT, role prompting, chaining |
| **AI for Writing & Content** | `pnpm dev:ai-writing` | Drafting emails, reports, social posts, and summaries with AI |

### Custom Assistants

| Deck | Command | Description |
|------|---------|-------------|
| **Gemini Gems** | `pnpm dev:gemini-gems` | Creating custom Gemini assistants with instructions and files |
| **Custom GPTs** | `pnpm dev:custom-gpts` | Building custom ChatGPT assistants with the GPT Builder |
| **NotebookLM** | `pnpm dev:notebooklm` | Source-grounded AI research, audio overview, notebook guide |

### Productivity & Data

| Deck | Command | Description |
|------|---------|-------------|
| **AI for Data & Spreadsheets** | `pnpm dev:ai-data` | ChatGPT data analysis, Google Sheets AI, formula generation |
| **AI for Meetings & Productivity** | `pnpm dev:ai-productivity` | Meeting transcription, email AI, calendar automation |

### Creative & Marketing

| Deck | Command | Description |
|------|---------|-------------|
| **AI Image & Video Generation** | `pnpm dev:ai-creative` | Midjourney, DALL-E, Runway, HeyGen — visual content creation |
| **AI for Marketing & Sales** | `pnpm dev:ai-marketing` | Campaign copy, SEO, lead generation, CRM automation |

### Automation & Development

| Deck | Command | Description |
|------|---------|-------------|
| **n8n Workflows** | `pnpm dev:n8n-workflows` | Node-based automation, triggers, AI nodes, real-world examples |
| **Vibe Coding** | `pnpm dev:vibe-coding` | Building tools and automations with AI — no coding experience required |
| **AI Agents** | `pnpm dev:ai-agents` | Agent loop, tools, skills, memory types, multi-agent systems |
| **MCP Servers** | `pnpm dev:mcp-servers` | Model Context Protocol, architecture, building custom servers |

### Strategy & Responsibility

| Deck | Command | Description |
|------|---------|-------------|
| **AI Ethics & Responsible Use** | `pnpm dev:ai-ethics` | Hallucinations, data privacy, bias, copyright, when not to use AI |
| **AI Strategy for Business** | `pnpm dev:ai-strategy` | Identifying opportunities, ROI, adoption, governance, 90-day plan |

### Reference

| Deck | Command | Description |
|------|---------|-------------|
| **Example** | `pnpm dev:example` | Slidev feature showcase and reference |

---

## Suggested Workshop Flow

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
pnpm build:<deck-name>

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
// vercel.json
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
