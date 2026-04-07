---
theme: ../../packages/theme-company
title: Vibe Coding
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# Vibe Coding

Build tools and automate tasks with AI — no coding experience required

---
transition: slide-up
---

# What is Vibe Coding?

<v-clicks>

- A term coined by Andrej Karpathy (ex-OpenAI, Tesla AI)
- You describe **what you want** in plain language
- AI writes the code
- You test, give feedback, iterate
- You never (or rarely) write code yourself

</v-clicks>

<v-click>

> "The hottest new programming language is English." — Andrej Karpathy

</v-click>

---
transition: slide-up
---

# Why This Is a Big Deal

<v-clicks>

- Historically, automating your work required a developer
- Developers are expensive, slow, and have competing priorities
- With AI: **you** can build the tool you need, today
- Small automations that no developer would prioritise are now possible
- The barrier to entry has dropped from years of study to **hours**

</v-clicks>

---
transition: slide-up
---

# What You Can Build Without Coding

<v-clicks>

- **Excel/Google Sheets macros** — automate repetitive spreadsheet work
- **Simple web scrapers** — pull data from websites automatically
- **Data processing scripts** — clean, transform, and merge files
- **Email automation** — scripts that send personalised bulk emails
- **PDF tools** — extract, merge, rename files automatically
- **Simple web apps** — forms, dashboards, internal tools
- **API integrations** — connect two tools that don't have a Zapier integration

</v-clicks>

---
transition: slide-up
---

# The Vibe Coding Loop

<v-clicks>

1. **Describe** what you want in plain English
2. **Get code** from AI (ChatGPT, Claude, Cursor)
3. **Run it** — copy into the right place and execute
4. **Describe the error or what's missing** back to AI
5. **Iterate** until it works
6. **Use your tool** — it's yours now

</v-clicks>

<v-click>

You don't need to understand the code. You need to understand **what you want**.

</v-click>

---
transition: slide-up
---

# Example: Excel Macro

**Prompt:**
```
Write an Excel VBA macro that:
1. Loops through all rows in Sheet1
2. If column C is empty, highlights that row in yellow
3. Adds a summary at the bottom showing how many rows were highlighted
```

<v-click>

AI writes the macro. You open Excel → Developer → Macros → paste → run.

Done in 5 minutes. No VBA knowledge needed.

</v-click>

---
transition: slide-up
---

# Example: Rename Files Automatically

**Prompt:**
```
Write a Python script that:
- Looks in a folder called "invoices" on my Desktop
- Renames every PDF file to follow this pattern: YYYY-MM-DD_CompanyName.pdf
- The current file names look like: "Invoice_Acme_20240315.pdf"
```

<v-click>

Claude or ChatGPT writes it. You run it once. Hundreds of files renamed instantly.

</v-click>

---
transition: slide-up
---

# Example: Simple Web App

Tools like **Replit**, **v0**, and **Lovable** let you build apps entirely from prompts:

<v-clicks>

- "Build a form where my team can submit weekly status updates, stored in a spreadsheet"
- "Create a simple dashboard showing our KPIs from this Google Sheet"
- "Build an internal tool to generate client proposals from a template"

</v-clicks>

<v-click>

These would have required a developer and weeks of work 3 years ago.

</v-click>

---
transition: slide-up
---

# The Right Tools

| Tool | What it's for |
|------|---------------|
| **ChatGPT / Claude** | Write scripts, macros, explain errors |
| **Cursor** | AI code editor — best for iterating on larger projects |
| **Replit** | Browser-based coding + AI assistant, run immediately |
| **v0 by Vercel** | Generate UI and web apps from text prompts |
| **Lovable** | Full app builder from natural language |
| **GitHub Copilot** | AI autocomplete inside VS Code |

---
transition: slide-up
---

# How to Describe What You Want

Good descriptions share:

<v-clicks>

- **Input** — what data or files you start with
- **Output** — what you want to end up with
- **Format** — file type, column names, folder structure
- **Edge cases** — "if the file already exists, skip it"
- **Environment** — Windows/Mac, Excel version, Python version

</v-clicks>

<v-click>

```
I have a folder of CSV files. Each has columns: Date, Name, Amount.
Write a Python script that merges them all into one Excel file,
adds a column showing which file each row came from,
and sorts by Date ascending. Run on Mac, Python 3.
```

</v-click>

---
transition: slide-up
---

# When Things Go Wrong

<v-clicks>

- **Copy the exact error message** and paste it back to AI
- Say: "I ran this and got this error: [paste error]"
- AI will diagnose and fix it — often in one response
- If stuck, describe what you expected vs what happened
- Don't give up after one error — iteration is normal

</v-clicks>

<v-click>

> Error messages are just instructions for AI to fix the code.

</v-click>

---
transition: fade
layout: center
class: text-center
---

# Summary

<v-clicks>

Vibe coding = **describing what you want** and letting AI write the code

You don't need to learn programming — you need to **think clearly about the problem**

Start small: a macro, a script, a form — then build confidence

AI can **fix its own errors** — just paste the error message back

</v-clicks>

<v-click>

*The best automation is the one you build yourself — today.*

</v-click>
