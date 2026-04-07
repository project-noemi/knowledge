---
theme: ../../packages/theme-company
title: Gemini Gems
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# Gemini Gems

Build your own custom AI assistants — no code required

---
transition: slide-up
---

# What are Gems?

**Gems** are personalised versions of Gemini that you configure for a specific purpose.

<v-clicks>

- Think of them as AI assistants with a **custom personality and expertise**
- You define their role, tone, and knowledge focus
- Available in **Google Gemini Advanced** (Gemini 1.5 Pro)
- Persist across conversations — no need to re-explain every time

</v-clicks>

---
transition: slide-up
---

# Why Use Gems?

<v-clicks>

- Stop repeating yourself — set context **once**
- Create specialists: a coding reviewer, a writing coach, a data analyst
- Share Gems with your team for consistent AI-assisted workflows
- Faster, more focused responses than starting from scratch each time

</v-clicks>

<v-click>

> Gems = reusable system prompts with a persistent identity.

</v-click>

---
transition: slide-up
---

# How to Create a Gem — Step by Step

<v-clicks>

1. Open **gemini.google.com** and sign in
2. Click **"Gem manager"** in the left sidebar
3. Click **"New Gem"**
4. Give your Gem a **name** and **description**
5. Write the **instructions** (the system prompt)
6. Optionally add **knowledge files** (PDFs, docs)
7. Click **"Save"** — your Gem is ready

</v-clicks>

---
transition: slide-up
---

# Writing Gem Instructions

The instructions field is a system prompt. Be explicit.

```
You are a senior Python code reviewer. When I share code:
- Check for bugs, edge cases, and security issues
- Suggest performance improvements
- Point out style violations (PEP 8)
- Be concise — use bullet points
- Never rewrite the entire code unless asked
```

<v-click>

Treat it like onboarding a new employee — tell it **who it is**, **what it does**, and **how it behaves**.

</v-click>

---
transition: slide-up
---

# Adding Knowledge Files

You can upload files to give your Gem specific knowledge.

<v-clicks>

- **PDFs** — product docs, research papers, manuals
- **Text files** — style guides, brand guidelines, FAQs
- **Spreadsheets** — pricing tables, reference data

</v-clicks>

<v-click>

The Gem can answer questions **grounded in your files**, reducing hallucinations on domain-specific topics.

</v-click>

---
transition: slide-up
---

# Gem Ideas by Role

| Role | Gem Name | What It Does |
|------|----------|--------------|
| Developer | Code Reviewer | Reviews PRs, spots bugs |
| Writer | Editor | Tightens prose, fixes tone |
| Manager | Meeting Notes | Formats action items from transcripts |
| Analyst | Data Explainer | Explains charts and numbers in plain language |
| Support | FAQ Bot | Answers questions from uploaded docs |

---
transition: slide-up
---

# Tips for Better Gems

<v-clicks>

- **Start narrow** — one job, done well, beats a generic assistant
- **Use examples** in your instructions to show expected output format
- **Test edge cases** — what happens when input is vague or off-topic?
- **Iterate** — refine instructions based on where the Gem fails
- **Version your instructions** — keep a copy outside Gemini

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Gems at a Glance

<div class="grid grid-cols-3 gap-6 mt-8">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🧠</div>
  <div class="font-bold mb-1">Custom Instructions</div>
  <div class="text-sm opacity-70">Define role, tone, and behaviour once</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">📎</div>
  <div class="font-bold mb-1">Knowledge Files</div>
  <div class="text-sm opacity-70">Ground the Gem in your own documents</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">♻️</div>
  <div class="font-bold mb-1">Reusable</div>
  <div class="text-sm opacity-70">Persistent across every conversation</div>
</div>

</div>
