---
theme: ../../packages/theme-company
title: AI Agents
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# AI Agents

Tools, skills, memory, and autonomous action

---
transition: slide-up
---

# What is an AI Agent?

An **AI agent** is an LLM that can take actions — not just respond.

<v-clicks>

- A standard LLM: you ask → it answers → done
- An agent: you ask → it **plans** → it **uses tools** → it **acts** → it reports back
- Agents can loop, retry, and chain actions until the goal is achieved

</v-clicks>

<v-click>

> The difference between a chatbot and an agent is **agency** — the ability to do things in the world.

</v-click>

---
transition: slide-up
---

# The Agent Loop

```
User goal → [Plan] → [Choose tool] → [Execute] → [Observe result] → [Plan again?] → Answer
```

<v-clicks>

1. **Perceive** — receive the user's goal and any context
2. **Plan** — decide which steps and tools are needed
3. **Act** — call a tool or take an action
4. **Observe** — see the result of the action
5. **Repeat** — until the goal is met or the agent gives up

</v-clicks>

---
transition: slide-up
---

# Tools

**Tools** are functions the agent can call to interact with the world.

<v-clicks>

- **Search** — look something up on the web or in a database
- **Code executor** — write and run code
- **File system** — read, write, or list files
- **API calls** — interact with external services (Slack, email, CRM)
- **Browser** — navigate and interact with web pages
- **Calculator** — perform reliable arithmetic

</v-clicks>

<v-click>

Tools extend what the LLM can do beyond generating text.

</v-click>

---
transition: slide-up
---

# Skills

**Skills** are higher-level, reusable capabilities composed of tools and logic.

<v-clicks>

- A skill might combine: search + summarise + format → "Research a topic"
- Skills can be **pre-built** (provided by a platform) or **custom** (you define them)
- In Claude Code: `/commit`, `/review-pr` are skills
- In n8n: a sub-workflow used by an agent node is effectively a skill

</v-clicks>

<v-click>

Tools are primitives. Skills are workflows built on top of tools.

</v-click>

---
transition: slide-up
---

# Memory Types

Agents need memory to function across time and context.

| Type | Description | Example |
|------|-------------|---------|
| **In-context** | Text in the current prompt window | Conversation history |
| **External** | Database outside the model | Vector store, SQL |
| **Episodic** | Logs of past actions/outcomes | "Last time I tried X, it failed" |
| **Semantic** | Stored facts and knowledge | User preferences, domain facts |

---
transition: slide-up
---

# Planning Strategies

How agents decide what to do next:

<v-clicks>

- **ReAct** — Reason + Act: think, act, observe, repeat
- **Plan-and-Execute** — make a full plan upfront, then execute each step
- **Tree of Thought** — explore multiple reasoning paths in parallel
- **Reflection** — agent critiques its own output and tries again

</v-clicks>

<v-click>

Most production agents use **ReAct** — it's simple, transparent, and debuggable.

</v-click>

---
transition: slide-up
---

# Multi-Agent Systems

Complex tasks can be split across **multiple specialised agents**:

<v-clicks>

- **Orchestrator** — receives the goal, delegates to sub-agents
- **Sub-agents** — specialists: researcher, coder, writer, reviewer
- **Critic agent** — reviews other agents' outputs for quality
- Agents communicate by passing structured messages

</v-clicks>

<v-click>

> Like a team of humans — each expert in their lane, coordinated by a manager.

</v-click>

---
transition: slide-up
---

# What Makes a Good Agent?

<v-clicks>

- **Clear goal** — vague instructions produce wandering behaviour
- **Right tools** — agents are only as capable as their toolset
- **Good memory** — context that persists across steps
- **Error handling** — what to do when a tool fails
- **Stop conditions** — when to stop trying and report back

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Agent Architecture Summary

<div class="grid grid-cols-2 gap-6 mt-8 text-left">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🧠</div>
  <div class="font-bold mb-1">LLM (the brain)</div>
  <div class="text-sm opacity-70">Reasons, plans, and decides what to do</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🔧</div>
  <div class="font-bold mb-1">Tools</div>
  <div class="text-sm opacity-70">Functions the agent calls to act in the world</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">💾</div>
  <div class="font-bold mb-1">Memory</div>
  <div class="text-sm opacity-70">Context, history, and stored knowledge</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🔁</div>
  <div class="font-bold mb-1">The Loop</div>
  <div class="text-sm opacity-70">Plan → Act → Observe → Repeat until done</div>
</div>

</div>
