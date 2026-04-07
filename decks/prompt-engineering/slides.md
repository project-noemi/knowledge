---
theme: ../../packages/theme-company
title: Prompt Engineering
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# Prompt Engineering

The art and science of communicating with AI models

---
transition: slide-up
---

# What is a Prompt?

A **prompt** is any input you give to an AI model to get a response.

<v-clicks>

- A question, instruction, or example
- The primary interface between humans and LLMs
- Small wording changes can produce dramatically different outputs

</v-clicks>

<v-click>

```
Bad:  "Write something about dogs."
Good: "Write a 3-sentence, friendly summary of why dogs make great pets for families with children."
```

</v-click>

---
transition: slide-up
---

# The Anatomy of a Good Prompt

<v-clicks>

- **Role** — who should the model act as?
- **Task** — what exactly do you want?
- **Context** — what background information matters?
- **Format** — how should the output look?
- **Constraints** — what to avoid or limit?

</v-clicks>

<v-click>

> The more specific your prompt, the more predictable and useful the output.

</v-click>

---
transition: slide-up
---

# Technique 1 — Zero-Shot Prompting

Ask the model to do something with **no examples**.

```
Classify the sentiment of this review as positive, neutral, or negative:
"The product arrived late but the quality was outstanding."
```

<v-click>

Works well for tasks the model has seen a lot of during training.
Fails when the task is ambiguous or highly specific.

</v-click>

---
transition: slide-up
---

# Technique 2 — Few-Shot Prompting

Provide **2–5 examples** before asking the model to do the task.

```
Translate to formal English:
Informal: "gonna grab coffee, brb"   → Formal: "I will get coffee and return shortly."
Informal: "can u send that doc asap" → Formal: "Could you please send that document as soon as possible?"
Informal: "lmk when ur free"         → Formal: ???
```

<v-click>

Examples teach the model the **pattern and format** you want — without fine-tuning.

</v-click>

---
transition: slide-up
---

# Technique 3 — Chain of Thought (CoT)

Ask the model to **think step by step** before giving an answer.

```
Q: A store sells 3 apples for $2. How much do 9 apples cost?
A: Let's think step by step.
   - 3 apples = $2
   - 1 apple = $2 ÷ 3 = $0.67
   - 9 apples = $0.67 × 9 = $6.00
```

<v-clicks>

- Dramatically improves reasoning and math tasks
- Add "Think step by step" or "Let's reason through this" to your prompt
- Especially useful in complex, multi-step problems

</v-clicks>

---
transition: slide-up
---

# Technique 4 — Role Prompting

Give the model a **persona or role** to shape its response style and expertise.

<v-clicks>

- `"You are a senior software engineer reviewing code for security vulnerabilities."`
- `"You are a patient teacher explaining this concept to a 10-year-old."`
- `"You are a harsh editor. Cut every unnecessary word from this paragraph."`

</v-clicks>

<v-click>

Role prompts influence **tone**, **depth**, and **perspective** of the output.

</v-click>

---
transition: slide-up
---

# Technique 5 — Prompt Chaining

Break a complex task into **a sequence of smaller prompts**, where each output feeds the next.

<v-clicks>

1. Prompt 1 → Extract key facts from a document
2. Prompt 2 → Summarise those facts into 3 bullet points
3. Prompt 3 → Turn the summary into a professional email

</v-clicks>

<v-click>

Better than one giant prompt — each step is verifiable and easier to debug.

</v-click>

---
transition: slide-up
---

# Common Mistakes

<v-clicks>

- **Too vague** — "Write something good" gives unpredictable results
- **No format specified** — model picks its own structure
- **Overloading** — asking 5 different things in one prompt
- **No context** — assuming the model knows your situation
- **Accepting the first output** — iterate and refine

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Prompt Engineering Cheatsheet

<div class="grid grid-cols-2 gap-6 mt-8 text-left">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🎭 Set a role</div>
  <div class="text-sm opacity-80">"You are an expert in…"</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🎯 Be specific</div>
  <div class="text-sm opacity-80">Length, format, tone, audience</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">💡 Show examples</div>
  <div class="text-sm opacity-80">Few-shot beats zero-shot for tricky tasks</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🔗 Think step by step</div>
  <div class="text-sm opacity-80">CoT unlocks better reasoning</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🔁 Iterate</div>
  <div class="text-sm opacity-80">Treat prompts like code — test and refine</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🧩 Chain prompts</div>
  <div class="text-sm opacity-80">Complex tasks → sequence of simple steps</div>
</div>

</div>
