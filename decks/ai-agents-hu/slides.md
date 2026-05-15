---
theme: ../../packages/theme-company
title: MI Ágensek
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# MI Ágensek

Eszközök, készségek, memória és autonóm cselekvés

---
transition: slide-up
---

# Mi az MI ágens?

Az **MI ágens** egy LLM, amely cselekedni tud — nem csak válaszol.

<v-clicks>

- Egy standard LLM: kérdezel → válaszol → kész
- Egy ágens: kérdezel → **tervez** → **eszközöket használ** → **cselekszik** → visszajelent
- Az ágensek képesek hurkolni, újrapróbálni és láncolni a műveleteket, amíg a cél el nem érhető

</v-clicks>

<v-click>

> A chatbot és az ágens közötti különbség az **ügynökség** — a képesség, hogy dolgokat tegyen a világban.

</v-click>

---
transition: slide-up
---

# Az ágens ciklus

```
User goal → [Plan] → [Choose tool] → [Execute] → [Observe result] → [Plan again?] → Answer
```

<v-clicks>

1. **Észlelés** — a felhasználó céljának és kontextusának fogadása
2. **Tervezés** — eldönti, milyen lépések és eszközök kellenek
3. **Cselekvés** — eszköz hívása vagy művelet végrehajtása
4. **Megfigyelés** — a művelet eredményének látása
5. **Ismétlés** — amíg a cél teljesül, vagy az ágens feladja

</v-clicks>

---
transition: slide-up
---

# Eszközök

Az **eszközök** függvények, amelyeket az ágens a világgal való interakcióhoz hívhat.

<v-clicks>

- **Keresés** — valami felkeresése a weben vagy adatbázisban
- **Kódvégrehajtó** — kód írása és futtatása
- **Fájlrendszer** — fájlok olvasása, írása vagy listázása
- **API hívások** — külső szolgáltatásokkal való interakció (Slack, e-mail, CRM)
- **Böngésző** — weboldalak navigálása és interakció
- **Számológép** — megbízható aritmetika

</v-clicks>

<v-click>

Az eszközök túllépik azt, amit az LLM szöveggeneráláson túl tud.

</v-click>

---
transition: slide-up
---

# Készségek

A **készségek** magasabb szintű, újrafelhasználható képességek, eszközökből és logikából összeállítva.

<v-clicks>

- Egy készség kombinálhat: keresés + összegzés + formázás → "Téma kutatása"
- A készségek lehetnek **előre építettek** (platform által biztosított) vagy **egyéni** (te definiálod)
- Claude Code-ban: `/commit`, `/review-pr` készségek
- n8n-ben: egy ágens csomópont által használt al-munkafolyamat gyakorlatilag készség

</v-clicks>

<v-click>

Az eszközök primitívek. A készségek az eszközökre épülő munkafolyamatok.

</v-click>

---
transition: slide-up
---

# Memória típusok

Az ágenseknek memóriára van szükségük az idő és kontextus között.

| Típus | Leírás | Példa |
|-------|--------|-------|
| **Kontextusban** | Szöveg az aktuális prompt ablakban | Beszélgetési előzmények |
| **Külső** | Adatbázis a modellen kívül | Vektortár, SQL |
| **Epizodikus** | Korábbi műveletek/eredmények naplói | "Legutóbb amikor X-et próbáltam, nem sikerült" |
| **Szemantikus** | Tárolt tények és tudás | Felhasználói preferenciák, domain tények |

---
transition: slide-up
---

# Tervezési stratégiák

Hogyan dönti el az ágens, mit tegyen legközelebb:

<v-clicks>

- **ReAct** — Reason + Act: gondolkodás, cselekvés, megfigyelés, ismétlés
- **Plan-and-Execute** — teljes terv előre, majd minden lépés végrehajtása
- **Tree of Thought** — több érvelési út párhuzamos felfedezése
- **Reflection** — az ágens kritizálja a saját kimenetét és újrapróbálja

</v-clicks>

<v-click>

A legtöbb production ágens **ReAct**-et használ — egyszerű, átlátható és debuggolható.

</v-click>

---
transition: slide-up
---

# Multi-ágens rendszerek

Az összetett feladatok **több specializált ágensre** oszthatók:

<v-clicks>

- **Orkesztrátor** — fogadja a célt, delegál az al-ágenseknek
- **Al-ágensek** — szakértők: kutató, kódoló, író, reviewer
- **Kritikus ágens** — más ágensek kimenetét minősít
- Az ágensek strukturált üzenetekkel kommunikálnak

</v-clicks>

<v-click>

> Mint egy emberi csapat — mindenki a saját szakágában, egy menedzser koordinálja.

</v-click>

---
transition: slide-up
---

# Mitől jó egy ágens?

<v-clicks>

- **Világos cél** — homályos utasítások kóborló viselkedést eredményeznek
- **Megfelelő eszközök** — az ágens csak annyira képes, amennyire az eszközkészlete
- **Jó memória** — kontextus, amely lépések között is megmarad
- **Hibakezelés** — mi történjen, ha egy eszköz meghibásodik
- **Leállási feltételek** — mikor hagyja abba a próbálkozást és jelent vissza

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Ágens architektúra összefoglaló

<div class="grid grid-cols-2 gap-6 mt-8 text-left">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🧠</div>
  <div class="font-bold mb-1">LLM (az agy)</div>
  <div class="text-sm opacity-70">Érvel, tervez és eldönti, mit tegyen</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🔧</div>
  <div class="font-bold mb-1">Eszközök</div>
  <div class="text-sm opacity-70">Függvények, amelyeket az ágens a világban való cselekvéshez hív</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">💾</div>
  <div class="font-bold mb-1">Memória</div>
  <div class="text-sm opacity-70">Kontextus, előzmények és tárolt tudás</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-2">🔁</div>
  <div class="font-bold mb-1">A ciklus</div>
  <div class="text-sm opacity-70">Terv → Cselekvés → Megfigyelés → Ismétlés, amíg kész</div>
</div>

</div>
