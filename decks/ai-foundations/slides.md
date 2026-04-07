---
theme: ../../packages/theme-company
title: AI Foundations
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# AI Foundations

Understanding Artificial Intelligence from the ground up

---
transition: slide-up
---

# What is Artificial Intelligence?

AI is the ability of a machine to **simulate human intelligence** — reasoning, learning, and problem-solving.

<v-clicks>

- Not magic — it's **math + data + compute**
- Machines don't "think" — they **find patterns**
- AI is a broad field with many subfields

</v-clicks>

<v-click>

```
Human intelligence → observed → modelled → approximated by machines
```

</v-click>

---
transition: slide-up
---

# The AI Landscape

<div class="flex gap-12 mt-8">
<div>

**Artificial Intelligence**
<v-clicks>

- The broad concept
- Any technique making machines smart

</v-clicks>

</div>
<div>

**Machine Learning** <span v-click class="text-sm opacity-60">⊂ AI</span>
<v-clicks>

- Systems that learn from data
- No explicit programming needed

</v-clicks>

</div>
<div>

**Deep Learning** <span v-click class="text-sm opacity-60">⊂ ML</span>
<v-clicks>

- Neural networks with many layers
- Powers modern AI breakthroughs

</v-clicks>

</div>
</div>

---
transition: slide-left
layout: center
---

<div class="text-center">
  <div v-click class="text-6xl mb-4">📦</div>
  <div v-click class="text-3xl font-bold mb-2">Data</div>
  <div v-click class="text-xl opacity-70">The fuel of AI</div>
  <div v-click class="mt-6 text-lg">Without data, there is no learning.</div>
</div>

---
transition: slide-up
---

# Ingredient 1 — Data

AI learns by example. The more (and better) the data, the smarter the model.

| Type | Example |
|------|---------|
| **Structured** | Spreadsheets, databases |
| **Unstructured** | Images, text, audio |
| **Labelled** | Images tagged "cat" or "dog" |
| **Unlabelled** | Raw web text |

<v-click>

> Garbage in, garbage out — data quality matters more than quantity.

</v-click>

---
transition: slide-up
---

# Ingredient 2 — Algorithms

An algorithm is a **set of rules** that tells the machine how to learn from data.

<v-clicks>

- **Supervised learning** — learn from labelled examples
- **Unsupervised learning** — find hidden patterns in unlabelled data
- **Reinforcement learning** — learn by trial and reward

</v-clicks>

<v-click>

```python
# Supervised learning in one line
model.fit(X_train, y_train)   # show examples + correct answers
model.predict(X_test)         # now predict on new data
```

</v-click>

---
transition: slide-up
---

# Ingredient 3 — Compute

Training AI models requires **massive computational power**.

<v-clicks>

- **CPU** — general purpose, great for logic
- **GPU** — parallel processing, ideal for matrix math (AI's core operation)
- **TPU** — purpose-built chips for deep learning (Google's Tensor Processing Units)

</v-clicks>

<v-click>

Training GPT-3 required ~3,640 petaflop-days of compute.
That's roughly **355 years** on a single modern GPU.

</v-click>

---
transition: slide-up
---

# How a Model Learns

<v-clicks>

1. **Feed** data into the model
2. **Predict** an output (initially random)
3. **Measure** the error (how wrong was it?)
4. **Adjust** internal weights to reduce error
5. **Repeat** millions of times

</v-clicks>

<v-click>

This loop is called **gradient descent** — the model inches downhill toward the best answer.

</v-click>

---
transition: slide-up
---

# Key Concepts to Know

<v-clicks>

- **Model** — the trained artifact that makes predictions
- **Parameters / Weights** — the numbers the model learns (GPT-4 has ~1.8 trillion)
- **Training** — the learning process on a dataset
- **Inference** — using a trained model to make predictions
- **Overfitting** — memorising training data instead of generalising
- **Loss** — a number measuring how wrong the model is

</v-clicks>

---
transition: slide-up
---

# Types of AI Tasks

| Task | What it does | Example |
|------|-------------|---------|
| **Classification** | Assign a category | Spam or not spam? |
| **Regression** | Predict a number | House price prediction |
| **Generation** | Create new content | Write an email, draw an image |
| **Clustering** | Group similar items | Customer segmentation |
| **Recommendation** | Suggest relevant items | Netflix, Spotify |

---
transition: fade
layout: center
class: text-center
---

# The Three Questions

<div class="grid grid-cols-3 gap-8 mt-10">

<div v-click class="border border-blue-300 rounded-xl p-6">
  <div class="text-4xl mb-3">🎯</div>
  <div class="font-bold text-lg mb-2">What are you predicting?</div>
  <div class="text-sm opacity-70">Define the problem clearly</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-6">
  <div class="text-4xl mb-3">📊</div>
  <div class="font-bold text-lg mb-2">What data do you have?</div>
  <div class="text-sm opacity-70">Quantity, quality, labels</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-6">
  <div class="text-4xl mb-3">✅</div>
  <div class="font-bold text-lg mb-2">How will you measure success?</div>
  <div class="text-sm opacity-70">Accuracy, precision, recall…</div>
</div>

</div>

---
transition: fade
layout: center
class: text-center
---

# Summary

<v-clicks>

**AI** = making machines simulate intelligence

**Data** + **Algorithms** + **Compute** = a working AI system

**Learning** = repeatedly adjusting to reduce error

Ask: *What am I predicting? What data do I have? How do I measure success?*

</v-clicks>

<v-click>

*Start with the problem. Let the data guide the approach.*

</v-click>
