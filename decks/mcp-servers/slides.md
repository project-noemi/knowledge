---
theme: ../../packages/theme-company
title: MCP Servers
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# MCP Servers

The Model Context Protocol — a standard for connecting AI to the world

---
transition: slide-up
---

# The Problem MCP Solves

Every AI tool needed **custom integrations** for every external service.

<v-clicks>

- Claude wants to read your files → custom file tool
- Claude wants to query your database → custom DB tool
- Claude wants to call your API → custom API tool
- Multiply by every AI app × every service = integration explosion

</v-clicks>

<v-click>

**MCP** standardises this: one protocol, any tool, any AI client.

</v-click>

---
transition: slide-up
---

# What is MCP?

**Model Context Protocol** is an open standard by Anthropic (2024).

<v-clicks>

- A **client-server protocol** for AI models to interact with external tools
- Like USB-C — one standard connector for many devices
- The AI client sends requests; the MCP server handles them
- Language-agnostic — servers can be written in any language

</v-clicks>

<v-click>

> MCP separates *what the AI wants to do* from *how it gets done*.

</v-click>

---
transition: slide-up
---

# MCP Architecture

```
┌─────────────────┐         MCP Protocol        ┌──────────────────┐
│   AI Client     │ ◄──────────────────────────► │   MCP Server     │
│ (Claude, etc.)  │                               │ (your tools)     │
└─────────────────┘                               └──────────────────┘
                                                         │
                                              ┌──────────┴──────────┐
                                              │  Files / DB / API   │
                                              └─────────────────────┘
```

<v-clicks>

- **Client** — the AI app (Claude Desktop, Claude Code, Cursor, etc.)
- **Server** — exposes tools, resources, and prompts over MCP
- **Transport** — stdio (local) or HTTP with SSE (remote)

</v-clicks>

---
transition: slide-up
---

# What MCP Servers Expose

An MCP server can expose three types of capabilities:

<v-clicks>

- **Tools** — functions the AI can call (run query, send email, create file)
- **Resources** — data the AI can read (file contents, DB records, API responses)
- **Prompts** — pre-written prompt templates the AI can invoke

</v-clicks>

<v-click>

The AI client discovers available tools automatically — no hard-coding needed.

</v-click>

---
transition: slide-up
---

# Example — A File System MCP Server

```json
// Tool definition exposed by the server
{
  "name": "read_file",
  "description": "Read the contents of a file at a given path",
  "inputSchema": {
    "type": "object",
    "properties": {
      "path": { "type": "string" }
    },
    "required": ["path"]
  }
}
```

<v-click>

The AI sees this tool, decides to call it, sends `{ "path": "/docs/report.pdf" }`, and gets the file contents back.

</v-click>

---
transition: slide-up
---

# Popular MCP Servers

<v-clicks>

- **Filesystem** — read, write, list files on your machine
- **GitHub** — search repos, read code, manage issues and PRs
- **Postgres / SQLite** — query databases with natural language
- **Brave Search** — real-time web search
- **Slack** — send messages, read channels
- **Puppeteer / Playwright** — control a browser
- **Memory** — persistent key-value store across conversations

</v-clicks>

---
transition: slide-up
---

# Building Your Own MCP Server

MCP servers are straightforward to build with official SDKs:

```typescript
import { Server } from "@modelcontextprotocol/sdk/server/index.js";

const server = new Server({ name: "my-server", version: "1.0.0" });

server.setRequestHandler(ListToolsRequestSchema, async () => ({
  tools: [{
    name: "get_weather",
    description: "Get current weather for a city",
    inputSchema: { type: "object", properties: { city: { type: "string" } } }
  }]
}));

server.setRequestHandler(CallToolRequestSchema, async (req) => {
  const { city } = req.params.arguments;
  const weather = await fetchWeather(city);
  return { content: [{ type: "text", text: weather }] };
});
```

---
transition: slide-up
---

# Configuring MCP in Claude Desktop

Add servers to `claude_desktop_config.json`:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/Users/you/Documents"]
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": { "GITHUB_PERSONAL_ACCESS_TOKEN": "your-token" }
    }
  }
}
```

---
transition: fade
layout: center
class: text-center
---

# MCP at a Glance

<div class="grid grid-cols-3 gap-6 mt-8">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🔌</div>
  <div class="font-bold mb-1">Standard Protocol</div>
  <div class="text-sm opacity-70">One spec, works with any MCP-compatible AI</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🛠️</div>
  <div class="font-bold mb-1">Tools + Resources</div>
  <div class="text-sm opacity-70">Actions and data exposed to the model</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🏗️</div>
  <div class="font-bold mb-1">Build Your Own</div>
  <div class="text-sm opacity-70">Official SDKs in TypeScript and Python</div>
</div>

</div>
