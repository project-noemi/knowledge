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

A művészet és tudomány az AI modellekkel való kommunikációban

---
transition: slide-up
---

# Mi az a prompt?

A **prompt** bármilyen bemenet, amit az AI modellnek adsz válaszért.

<v-clicks>

- Kérdés, utasítás vagy példa
- Az elsődleges interfész emberek és LLM-ek között
- Apró szövegváltoztatások drámaian más kimenetet adhatnak

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

# Egy jó prompt felépítése

<v-clicks>

- **Szerep (Role)** — kinek kell a modellnek viselkednie?
- **Feladat (Task)** — pontosan mit szeretnél?
- **Kontextus (Context)** — milyen háttérinformáció számít?
- **Formátum (Format)** — hogyan nézzen ki a kimenet?
- **Korlátok (Constraints)** — mit kerülj el vagy limitálj?

</v-clicks>

<v-click>

> Minél specifikusabb a prompt, annál kiszámíthatóbb és hasznosabb a válasz.

</v-click>

---
transition: slide-up
---

# 1. technika — Zero-Shot Prompting

Kérd meg a modellt, hogy **példa nélkül** csináljon valamit.

```
Classify the sentiment of this review as positive, neutral, or negative:
"The product arrived late but the quality was outstanding."
```

<v-click>

Jól működik olyan feladatoknál, amiket sokat látott képzés közben.
Elbukik, ha a feladat homályos vagy nagyon specifikus.

</v-click>

---
transition: slide-up
---

# 2. technika — Few-Shot Prompting

Adj **2–5 példát**, mielőtt a modelltől kéred a feladatot.

```
Translate to formal English:
Informal: "gonna grab coffee, brb"   → Formal: "I will get coffee and return shortly."
Informal: "can u send that doc asap" → Formal: "Could you please send that document as soon as possible."
Informal: "lmk when ur free"         → Formal: ???
```

<v-click>

A példák megtanítják a modellnek a **mintát és formátumot**, amit szeretnél — fine-tuning nélkül.

</v-click>

---
transition: slide-up
---

# 3. technika — Chain of Thought (CoT)

Kérd meg a modellt, hogy **lépésről lépésre gondolkodjon**, mielőtt válaszol.

```
Q: A store sells 3 apples for $2. How much do 9 apples cost?
A: Let's think step by step.
   - 3 apples = $2
   - 1 apple = $2 ÷ 3 = $0.67
   - 9 apples = $0.67 × 9 = $6.00
```

<v-clicks>

- Jelentősen javítja az érvelési és matek feladatokat
- Add hozzá: „Think step by step” vagy „Let's reason through this”
- Különösen hasznos összetett, többlépéses problémáknál

</v-clicks>

---
transition: slide-up
---

# 4. technika — Role Prompting

Adj a modellnek **personát vagy szerepet**, hogy formálja a válasz stílusát és szakértelmét.

<v-clicks>

- `"You are a senior software engineer reviewing code for security vulnerabilities."`
- `"You are a patient teacher explaining this concept to a 10-year-old."`
- `"You are a harsh editor. Cut every unnecessary word from this paragraph."`

</v-clicks>

<v-click>

A role promptok befolyásolják a kimenet **hangnemét**, **mélységét** és **perspektíváját**.

</v-click>

---
transition: slide-up
---

# 5. technika — Prompt Chaining

Bontsd szét az összetett feladatot **kisebb promptok sorozatára**, ahol minden kimenet a következő bemenete.

<v-clicks>

1. Prompt 1 → Kulcsfontosságú tények kinyerése egy dokumentumból
2. Prompt 2 → Tények összefoglalása 3 bullet pointba
3. Prompt 3 → Az összefoglaló professzionális e-mail formába öntése

</v-clicks>

<v-click>

Jobb, mint egy óriási prompt — minden lépés ellenőrizhető és könnyebben debugolható.

</v-click>

---
transition: slide-up
---

# Gyakori hibák

<v-clicks>

- **Túl homályos** — „Írj valami jót” kiszámíthatatlan eredményt ad
- **Nincs formátum** — a modell maga választ struktúrát
- **Túlterhelés** — 5 különböző dolog egy promptban
- **Nincs kontextus** — feltételezed, hogy a modell ismeri a helyzetet
- **Az első válasz elfogadása** — iterálj és finomíts

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Prompt Engineering puskalap

<div class="grid grid-cols-2 gap-6 mt-8 text-left">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🎭 Szerep beállítása</div>
  <div class="text-sm opacity-80">„You are an expert in…”</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🎯 Legyél specifikus</div>
  <div class="text-sm opacity-80">Hossz, formátum, hangnem, közönség</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">💡 Mutass példákat</div>
  <div class="text-sm opacity-80">Few-shot jobb zero-shotnál nehéz feladatoknál</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🔗 Gondolkodj lépésről lépésre</div>
  <div class="text-sm opacity-80">CoT jobb érvelést ad</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🔁 Iterálj</div>
  <div class="text-sm opacity-80">Kezeld a promptokat kódként — tesztelj és finomíts</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="font-bold mb-2">🧩 Láncolj promptokat</div>
  <div class="text-sm opacity-80">Összetett feladat → egyszerű lépések sorozata</div>
</div>

</div>
