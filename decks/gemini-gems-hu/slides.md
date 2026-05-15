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

Építs saját egyéni MI asszisztenseket — kód nélkül

---
transition: slide-up
---

# Mik azok a Gems?

A **Gems** a Gemini személyre szabott változatai, amelyeket egy adott célra konfigurálsz.

<v-clicks>

- Gondolj rájuk úgy, mint **egyéni személyiséggel és szakértelemmel** rendelkező MI asszisztensekre
- Te határozod meg a szerepüket, hangnemüket és tudási fókuszukat
- Elérhető a **Google Gemini Advanced**-ban (Gemini 1.5 Pro)
- Megmaradnak a beszélgetések között — nem kell minden alkalommal újra elmagyarázni

</v-clicks>

---
transition: slide-up
---

# Miért használj Gems-et?

<v-clicks>

- Ne ismételd magad — állítsd be a kontextust **egyszer**
- Hozz létre szakértőket: kódellenőr, írócoach, adatelemző
- Oszd meg a Gems-et a csapatoddal az egységes MI-alapú munkafolyamatokért
- Gyorsabb, fókuszáltabb válaszok, mint minden alkalommal a nulláról indulni

</v-clicks>

<v-click>

> Gems = újrahasználható rendszerpromptok állandó identitással.

</v-click>

---
transition: slide-up
---

# Gem létrehozása — lépésről lépésre

<v-clicks>

1. Nyisd meg a **gemini.google.com** oldalt és jelentkezz be
2. Kattints a **„Gem manager”** menüpontra a bal oldali sávban
3. Kattints a **„New Gem”** gombra
4. Adj nevet és leírást a Gemnek
5. Írd meg az **instructions** mezőt (a rendszerprompt)
6. Opcionálisan adj hozzá **knowledge files** fájlokat (PDF-ek, dokumentumok)
7. Kattints a **„Save”** gombra — a Gem kész

</v-clicks>

---
transition: slide-up
---

# Gem utasítások írása

Az instructions mező egy rendszerprompt. Légy explicit.

```
You are a senior Python code reviewer. When I share code:
- Check for bugs, edge cases, and security issues
- Suggest performance improvements
- Point out style violations (PEP 8)
- Be concise — use bullet points
- Never rewrite the entire code unless asked
```

<v-click>

Gondolj rá úgy, mint egy új kolléga betanítására — mondd el, **ki ő**, **mit csinál**, és **hogyan viselkedik**.

</v-click>

---
transition: slide-up
---

# Tudásfájlok hozzáadása

Feltölthetsz fájlokat, hogy a Gemnek specifikus tudást adj.

<v-clicks>

- **PDF-ek** — termékdokumentáció, kutatási anyagok, kézikönyvek
- **Szöveges fájlok** — stílusútmutatók, márka irányelvek, GYIK
- **Táblázatok** — árlisták, referenciaadatok

</v-clicks>

<v-click>

A Gem a fájljaid alapján tud válaszolni — kevesebb hallucináció domain-specifikus témáknál.

</v-click>

---
transition: slide-up
---

# Gem ötletek szerepkör szerint

| Szerepkör | Gem neve | Mit csinál |
|-----------|----------|------------|
| Fejlesztő | Code Reviewer | PR-eket néz át, hibákat talál |
| Író | Editor | Finomítja a szöveget, javítja a hangnemet |
| Menedzser | Meeting Notes | Akciópontokat formáz átiratokból |
| Elemző | Data Explainer | Grafikonokat és számokat közérthetően magyarázza |
| Support | FAQ Bot | Feltöltött dokumentumokból válaszol kérdésekre |

---
transition: slide-up
---

# Tippek jobb Gems-hez

<v-clicks>

- **Kezdj szűken** — egy jól megcsinált feladat jobb, mint egy általános asszisztens
- **Használj példákat** az utasításokban a várt kimeneti formátum bemutatására
- **Teszteld a szélső eseteket** — mi történik, ha a bemenet homályos vagy off-topic?
- **Iterálj** — finomítsd az utasításokat ott, ahol a Gem hibázik
- **Verziózd az utasításokat** — tarts másolatot a Gemen kívül is

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Gems egy pillantásra

<div class="grid grid-cols-3 gap-6 mt-8">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🧠</div>
  <div class="font-bold mb-1">Egyéni utasítások</div>
  <div class="text-sm opacity-70">Szerep, hangnem és viselkedés egyszeri meghatározása</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">📎</div>
  <div class="font-bold mb-1">Tudásfájlok</div>
  <div class="text-sm opacity-70">A Gem a saját dokumentumaidra támaszkodik</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">♻️</div>
  <div class="font-bold mb-1">Újrahasználható</div>
  <div class="text-sm opacity-70">Minden beszélgetésben megmarad</div>
</div>

</div>
