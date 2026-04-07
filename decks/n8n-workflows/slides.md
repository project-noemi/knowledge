---
theme: ../../packages/theme-company
title: n8n Workflows
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# n8n Workflows

Open-source workflow automation for technical teams

---
transition: slide-up
---

# What is n8n?

**n8n** (pronounced "n-eight-n") is a workflow automation platform.

<v-clicks>

- Connect apps, APIs, and services with a **visual node-based editor**
- Open-source — self-host it, or use n8n Cloud
- Code when you need it, no-code when you don't
- Over **400+ integrations** out of the box

</v-clicks>

<v-click>

> Think Zapier, but with full control — you own your data and your logic.

</v-click>

---
transition: slide-up
---

# Core Concepts

<v-clicks>

- **Workflow** — a sequence of automated steps
- **Node** — a single step in a workflow (an app, logic, or action)
- **Trigger** — the event that starts a workflow
- **Connection** — the data flow between nodes
- **Execution** — one run of a workflow

</v-clicks>

---
transition: slide-up
---

# Anatomy of a Workflow

```
[Trigger] → [Node 1] → [Node 2] → [Node 3]
```

<v-clicks>

- **Trigger node** — "When X happens…" (webhook, schedule, email, form)
- **Action nodes** — "Do Y…" (create row, send Slack message, call API)
- **Logic nodes** — "If Z…" (IF, Switch, Merge, Loop, Wait)
- **Data nodes** — "Transform data…" (Set, Edit Fields, Code)

</v-clicks>

<v-click>

Data flows between nodes as **JSON objects** — every node passes its output to the next.

</v-click>

---
transition: slide-up
---

# Types of Triggers

| Trigger | When it fires |
|---------|--------------|
| **Webhook** | On HTTP request from an external service |
| **Schedule** | At a set time or interval (cron) |
| **Email** | When an email arrives (IMAP) |
| **Form** | When a user submits an n8n form |
| **App event** | When something happens in Gmail, Slack, etc. |
| **Manual** | You click "Run" — useful for testing |

---
transition: slide-up
---

# The Code Node

When built-in nodes aren't enough, write JavaScript or Python directly.

```javascript
// Transform incoming data
const items = $input.all();

return items.map(item => ({
  json: {
    fullName: `${item.json.firstName} ${item.json.lastName}`,
    email: item.json.email.toLowerCase(),
    createdAt: new Date().toISOString()
  }
}));
```

<v-click>

Access any input data with `$input`, `$json`, `$node`, or `$vars`.

</v-click>

---
transition: slide-up
---

# AI Nodes in n8n

n8n has first-class support for **AI-powered workflows**:

<v-clicks>

- **AI Agent node** — autonomous agent with tools and memory
- **Chat model nodes** — OpenAI, Anthropic, Google Gemini, Ollama
- **Embeddings nodes** — convert text to vectors
- **Vector store nodes** — Pinecone, Qdrant, Supabase
- **Memory nodes** — window buffer, summary memory

</v-clicks>

<v-click>

Build RAG pipelines, AI assistants, and autonomous agents — all visually.

</v-click>

---
transition: slide-up
---

# Real-World Workflow Examples

<v-clicks>

- **Lead enrichment** — new CRM contact → enrich with Clearbit → notify Slack
- **Support triage** — incoming email → classify with AI → route to correct team
- **Content pipeline** — RSS feed → summarise with LLM → post to Notion
- **Invoice processing** — PDF upload → extract data with AI → update spreadsheet
- **Daily briefing** — scheduled → fetch calendar + emails → summarise → send digest

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Why n8n?

<div class="grid grid-cols-3 gap-6 mt-8">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🔓</div>
  <div class="font-bold mb-1">Open Source</div>
  <div class="text-sm opacity-70">Self-host, own your data, no vendor lock-in</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🧩</div>
  <div class="font-bold mb-1">400+ Integrations</div>
  <div class="text-sm opacity-70">Connects to almost everything</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🤖</div>
  <div class="font-bold mb-1">AI-native</div>
  <div class="text-sm opacity-70">Agents, LLMs, and RAG built right in</div>
</div>

</div>
