# AGENTS.md — Project NoéMI Knowledge

A multi-deck [Slidev](https://sli.dev/) repository with the slides and documentation for Project NoéMI. Every deck under `decks/` (AI foundations, prompt engineering, agents, MCP servers, AI strategy, and others) shares one codebase and the company theme in `packages/theme-company/`, and the built decks deploy as a static site (`netlify.toml`, `vercel.json`). See [README.md](README.md).

## 🪪 Machine identity (mandatory)

Every agent (Codex, Claude Code, Gemini, Cursor, or any other) opens pull requests only as the `noemi-agent` machine identity:

- Open PRs with `bash scripts/agent-gh.sh pr create ...`, or `node scripts/agent-pr.js` where `gh` is unavailable, with `AGENT_GH_EXPECTED_LOGIN=noemi-agent` set so the wrapper refuses any other account. Those scripts live in the [project-noemi/agents](https://github.com/project-noemi/agents) framework repository, not in this one.
- Never open an agent PR with a human's `gh` login or token, including the reviewing human's own. GitHub blocks a PR's author from approving it, so a human-authored agent PR cannot get human review.
- Commit as `noemi-agent <311935378+noemi-agent@users.noreply.github.com>`. Commit metadata does not set PR authorship; the token that opens the PR does.
- If no `noemi-agent` token resolves, stop and say so. Do not fall back to human credentials.
- Approving and merging stay human-only; the machine identity does neither.

Details: [docs/MACHINE_IDENTITY.md](https://github.com/project-noemi/agents/blob/develop/docs/MACHINE_IDENTITY.md) and [`mcp-protocols/github.md`](https://github.com/project-noemi/agents/blob/develop/mcp-protocols/github.md) §6 (PR Authorship) in project-noemi/agents.

## Conventions

- Read [docs/DEV_AGENT_PROMPT.md](docs/DEV_AGENT_PROMPT.md) before changing decks or the theme.
- Package manager is pnpm. Run one deck with `pnpm dev:<deck-name>` (for example `pnpm dev:ai-foundations`); build every deck into `dist/` with `pnpm build` (`scripts/build-all.sh`). Per-deck `build:<deck>` and `export:<deck>` scripts are in `package.json`.
- Each deck is `decks/<name>/slides.md`; a new deck also needs its `dev:`, `build:`, and `export:` scripts in `package.json`. Shared styling belongs in `packages/theme-company/`, not in individual decks.
- Commits are signed off (`git commit -s`).
- Branch from `develop` (the default branch) and open PRs against `develop`; only `develop` may be merged into `main` (`.github/workflows/require-develop-source.yml`).
