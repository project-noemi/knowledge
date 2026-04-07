---
theme: ../../packages/theme-company
title: Custom GPTs
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# Custom GPTs

Build your own AI assistant — no coding required

---
transition: slide-up
---

# What is a Custom GPT?

<v-clicks>

- A personalised version of ChatGPT with your own instructions, knowledge, and tools
- Built using OpenAI's GPT Builder — no code required
- Can be kept private, shared with your team, or published to the GPT Store
- Essentially: **a specialist assistant trained on your context**

</v-clicks>

<v-click>

Think of it as hiring an AI employee who only knows your business and always follows your rules.

</v-click>

---
transition: slide-up
---

# Custom GPTs vs Gemini Gems

Both let you build custom AI assistants — the key difference is the ecosystem:

| Feature | Custom GPTs | Gemini Gems |
|---------|-------------|-------------|
| Platform | ChatGPT (OpenAI) | Gemini (Google) |
| Tools available | Web search, DALL-E, Code Interpreter | Google Search, Drive, Docs |
| Knowledge upload | Yes (files) | Yes (files + Drive) |
| Custom actions | Yes (via API) | Limited |
| Sharing | GPT Store or link | Workspace sharing |

<v-click>

If your team uses Google Workspace → Gems. If your team uses ChatGPT → Custom GPTs.

</v-click>

---
transition: slide-up
---

# What You Can Build

<v-clicks>

- **Onboarding assistant** — answers new employee questions using your HR docs
- **Brand voice editor** — rewrites any text to match your brand guidelines
- **Customer support bot** — handles FAQs from your product documentation
- **Proposal generator** — creates first-draft proposals using your templates
- **Meeting prep tool** — researches a company before a sales call
- **Policy advisor** — answers compliance questions from your internal policies

</v-clicks>

---
transition: slide-up
---

# The GPT Builder Interface

Building a Custom GPT takes about 10 minutes:

<v-clicks>

1. Go to **chatgpt.com → Explore GPTs → Create**
2. Use the **chat interface** to describe your GPT
3. Or switch to **Configure** for manual control:
   - Name and description
   - System instructions
   - Uploaded knowledge files
   - Enabled capabilities
   - Custom actions

</v-clicks>

---
transition: slide-up
---

# Writing Good Instructions

The system prompt is the core of your GPT. It should define:

<v-clicks>

- **Role** — "You are a customer support agent for Acme Software"
- **Tone** — "Always respond in a friendly, professional tone"
- **Scope** — "Only answer questions about our product. Decline unrelated requests"
- **Format** — "Always use bullet points for feature comparisons"
- **Fallback** — "If you don't know the answer, say so and suggest contacting support@acme.com"

</v-clicks>

---
transition: slide-up
---

# Uploading Knowledge Files

Your GPT can answer questions based on your documents:

<v-clicks>

- Upload PDFs, Word docs, text files, CSVs
- The GPT searches them when answering questions
- Good for: product docs, HR handbooks, pricing guides, FAQs, legal templates
- **Limit:** ~20 files, up to 512MB each
- Files are private — users can't download them directly

</v-clicks>

<v-click>

**Example:** Upload your full product manual → GPT answers detailed technical questions without hallucinating features.

</v-click>

---
transition: slide-up
---

# Enabling Capabilities

Toggle these on/off depending on your use case:

<v-clicks>

- **Web search** — allows GPT to search the internet for current information
- **DALL-E image generation** — lets the GPT create images on request
- **Code Interpreter** — run Python code, analyse files, generate charts
- **Custom actions** — connect to external APIs (advanced)

</v-clicks>

<v-click>

For most business GPTs: enable **Web search** and disable the rest unless you specifically need them.

</v-click>

---
transition: slide-up
---

# Sharing Your GPT

<v-clicks>

- **Only me** — private, just for your own use
- **Anyone with the link** — share inside your team
- **Everyone (GPT Store)** — publish publicly

</v-clicks>

<v-click>

**Team workflow:** Build a GPT, share the link in Slack or Notion, your whole team uses the same assistant instantly.

No IT setup, no deployment, no maintenance.

</v-click>

---
transition: slide-up
---

# Real Example — Brand Voice GPT

**Instructions:**
```
You are a brand voice editor for Acme Inc. Our tone is:
confident, clear, human, and never corporate or jargon-heavy.

When given any text, rewrite it to match our brand voice.
Keep the meaning exactly the same. Only change tone and style.
Output: the rewritten text only — no commentary.
```

**Knowledge files:** Upload your brand style guide PDF.

<v-click>

Every team member can now edit copy to brand standard in seconds.

</v-click>

---
transition: fade
layout: center
class: text-center
---

# Summary

<v-clicks>

Custom GPTs are **specialist assistants** built on ChatGPT — no code required

Define their **role, tone, scope, and knowledge** in the instructions

Upload your **company documents** as the knowledge base

Share via link — your whole team gets the same tool instantly

</v-clicks>

<v-click>

*Build once. Use forever. No developer needed.*

</v-click>
