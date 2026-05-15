---
theme: ../../packages/theme-company
title: NotebookLM
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# NotebookLM

A Google MI-alapú kutatási és tudásasszisztense

---
transition: slide-up
---

# Mi a NotebookLM?

A **NotebookLM** egy MI kutatási asszisztens, amely kizárólag a **saját forrásaidból** dolgozik.

<v-clicks>

- Google fejlesztés, Gemini motorral
- Tölts fel dokumentumokat — a NotebookLM szakértővé válik bennük
- A válaszok a **tartalmadra épülnek**, nem a nyílt webre
- Ideális kutatáshoz, tanuláshoz és tudásmenedzsmenthez

</v-clicks>

<v-click>

> Nem talál ki tényeket az internetről — csak azt használja, amit adsz neki.

</v-click>

---
transition: slide-up
---

# Mit tölthetsz fel?

<v-clicks>

- **PDF-ek** — tanulmányok, jelentések, könyvek
- **Google Docs & Slides** — saját dokumentumok
- **Web URL-ek** — cikkek és oldalak
- **YouTube URL-ek** — átiratot olvas
- **Hangfájlok** — meetingek, podcastok
- **Text / Markdown** — jegyzetek és vázlatok

</v-clicks>

<v-click>

Notebookonként legfeljebb **50 forrás**, forrásonként akár **500 000 szó**.

</v-click>

---
transition: slide-up
---

# Fő funkciók

<v-clicks>

- **Chat a forrásokkal** — kérdezz bármit, kapj hivatkozott válaszokat
- **Notebook Guide** — automatikus GYIK, briefing doc és tananyag
- **Inline citations** — minden válasz a pontos forráspasszushoz linkel
- **Source highlights** — kattints a hivatkozásra, ugorj az eredeti szövegre
- **Cross-source synthesis** — kérdések több dokumentumon át

</v-clicks>

---
transition: slide-up
---

# Audio Overview

A NotebookLM egyik kiemelkedő funkciója: **podcast generálás a forrásokból**.

<v-clicks>

- Két MI műsorvezető természetes, beszélgetős hangon vitatja a dokumentumaidat
- Tömör anyag feldolgozása útközben
- Testreszabható — fókuszálj adott témákra vagy célközönségre
- A kimenet letölthető MP3

</v-clicks>

<v-click>

> Egy 50 oldalas jelentésből 10 perces podcast egy kattintással.

</v-click>

---
transition: slide-up
---

# A Notebook Guide

Források hozzáadásakor a NotebookLM automatikusan generál egy **Notebook Guide**-ot:

| Szekció | Mit tartalmaz |
|---------|---------------|
| **FAQ** | Gyakori kérdések, a források alapján megválaszolva |
| **Study Guide** | Kulcsfogalmak + kvíz kérdések |
| **Table of Contents** | Strukturált tartalomjegyzék |
| **Briefing Doc** | Vezetői összefoglaló az összes forrásról |
| **Timeline** | Időrendi események (ha releváns) |

---
transition: slide-up
---

# Jegyzetek és kiemelések mentése

A NotebookLM **jegyzetkészítő munkaterület** is:

<v-clicks>

- Mentsd el bármely MI választ **jegyzetként** egy kattintással
- Írj saját jegyzeteket az MI által generáltak mellett
- Rögzítsd a kulcspasszusokat a forrásokból
- A jegyzetek további kérdések forrásai lehetnek
- Exportálj jegyzeteket Google Doc-ként

</v-clicks>

---
transition: slide-up
---

# Legjobb felhasználási esetek

<v-clicks>

- **Kutatás** — több tanulmány szintézise egy áttekinthető összefoglalóba
- **Tanulás** — kvíz kérdések generálása előadásjegyzetekből
- **Jogi / compliance** — szerződések és szabályzatok lekérdezése soronkénti olvasás nélkül
- **Onboarding** — vállalati dokumentumok feltöltése, kérdések új munkatársként
- **Tartalomkészítés** — források alapján megalapozott cikkek és jelentések

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# NotebookLM egy pillantásra

<div class="grid grid-cols-2 gap-6 mt-8 text-left">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">📚</div>
  <div class="font-bold mb-1">Forráson alapuló válaszok</div>
  <div class="text-sm opacity-70">Csak a dokumentumaidat használja — nincs webes hallucináció</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🎙️</div>
  <div class="font-bold mb-1">Audio Overview</div>
  <div class="text-sm opacity-70">MI podcast a tartalmadból egy kattintással</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">📝</div>
  <div class="font-bold mb-1">Notebook Guide</div>
  <div class="text-sm opacity-70">Automatikus GYIK, tananyag és összefoglaló</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🔗</div>
  <div class="font-bold mb-1">Inline citations</div>
  <div class="text-sm opacity-70">Minden válasz visszavezethető a forráspasszushoz</div>
</div>

</div>
