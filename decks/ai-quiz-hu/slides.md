---
theme: ../../packages/theme-company
title: AI Workshop Kvíz
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# AI Workshop Kvíz

Interaktív kvíz — **Space** vagy kattintás a helyes válasz kiemeléséhez

<div class="mt-8 text-lg opacity-80">
8 témakör · 80 kérdés · 4 válaszlehetőség diánként
</div>

<!--
Presenter: először olvasd fel a kérdést és a válaszokat, majd Space → kiemelődik a helyes válasz.
-->

<style>
.quiz-q { font-size: 1.15rem; line-height: 1.5; max-width: 52rem; margin: 0 auto; }
.quiz-meta { font-size: 0.85rem; opacity: 0.55; margin-bottom: 0.5rem; }
.quiz-options { max-width: 52rem; margin: 1.5rem auto 0; text-align: left; }
.quiz-opt {
  padding: 0.75rem 1rem;
  margin-bottom: 0.6rem;
  border-radius: 0.5rem;
  border: 2px solid #e2e8f0;
  transition: all 0.35s ease;
  font-size: 1.05rem;
}
.quiz-opt--correct {
  border-color: #16a34a;
  background: #f0fdf4;
  font-weight: 600;
}
.quiz-opt--dim { opacity: 0.45; }
.quiz-reveal { color: #15803d; font-weight: 600; margin-top: 1.25rem; }
</style>

---
layout: center
class: text-center
---

# 1. témakör

## Promptolás és hatékony AI használat

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Miért fontos a kontextus megadása egy promptban?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert az AI csak hosszú szöveget tud feldolgozni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert a részletesebb kontextus pontosabb válaszokat eredményezhet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert így gyorsabban működik az internetkapcsolat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert az AI csak hivatalos nyelvezetet ért meg</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Melyik prompt vezet várhatóan a legjobb eredményhez?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) „Írj valamit a marketingről.”</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) „Segíts.”</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">C) „Készíts egy rövid, professzionális marketing e-mailt új ügyfelek számára.”</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) „Marketing?”</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: C</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Mi a szerepe az AI számára megadott „tone” vagy hangnem utasításnak?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Meghatározza az AI válaszának stílusát</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Csökkenti a válasz hosszát</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Megakadályozza a hibás válaszokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Kikapcsolja az AI kreativitását</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Mit jelent a „prompt engineering”?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) AI modellek programozása alacsony szinten</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Hatékony utasítások és kérdések megfogalmazása AI rendszerek számára</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Adatbázisok fejlesztése AI-hoz</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Chatbotok telepítése szerverekre</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Melyik állítás igaz a túl általános promptokra?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Általában kreatívabb, de kevésbé pontos válaszokat adnak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mindig pontosabb válaszokat eredményeznek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Az AI nem tud rájuk válaszolni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Automatikusan részletes választ generálnak</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Melyik technika segíthet jobb AI válaszokat kapni?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Szerepkör megadása az AI számára</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Minden kérdés CAPS LOCK-kal írása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Minél rövidebb prompt használata minden esetben</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Szleng használata minden esetben</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Miért lehet hasznos példákat adni egy promptban?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert az AI lemásolja a példát változtatás nélkül</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert segít az AI-nak megérteni az elvárt formátumot és stílust</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert gyorsabbá teszi a számítógépet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert csökkenti az internetforgalmat</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Mit jelent az iteratív promptolás?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Egyetlen tökéletes prompt használata</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) A válaszok finomítása több körben</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Az AI újratelepítése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Ugyanazon prompt végtelen ismétlése</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Melyik állítás igaz az AI kreativitására?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI teljesen új emberi érzelmeket alkot</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Az AI meglévő minták kombinálásával generál kreatívnak tűnő tartalmat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Az AI mindig eredeti ötleteket talál ki</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI csak másolni tudja az internetet</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">1. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Mi a legjobb hozzáállás AI használatakor?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI válaszait mindig automatikusan elfogadni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Az AI-t segédeszközként használni kritikus gondolkodás mellett</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Soha nem használni AI-t</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI-ra bízni minden döntést</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
layout: center
class: text-center
transition: fade
---

# 2. témakör

## AI biztonság és kockázatok

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Mi az egyik legnagyobb veszélye a nyilvános AI rendszerek használatának vállalati környezetben?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Lassabb internetkapcsolat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Adatszivárgás és érzékeny információk kiszivárgása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Magasabb monitorfogyasztás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Operációs rendszer hibák</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Mit jelent az AI „hallucinációja”?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI önálló tudatra ébredése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Meggyőző, de hibás vagy kitalált információ generálása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) A rendszer teljes leállása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Internetkapcsolati hiba</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Miért veszélyesek az AI által generált deepfake-ek?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert túl nagy fájlméretet használnak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert megtévesztő hamis tartalmat készíthetnek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert lelassítják a számítógépet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert csak filmipari célra használhatók</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Melyik példa tekinthető AI-alapú social engineeringnek?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Automatikus helyesírásjavítás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) AI által generált hiteles phishing e-mail</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) PDF dokumentum összegzése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Képgenerálás marketinghez</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Miért fontos az AI válaszainak ellenőrzése?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert az AI mindig részrehajló</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert az AI hibás vagy félrevezető információt is adhat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert az AI nem tud hosszú szöveget kezelni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert az AI nem támogat több nyelvet</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Melyik adat NEM ajánlott nyilvános AI rendszerbe feltölteni?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Nyilvános blogcikk</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Publikus termékleírás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">C) Belső ügyféladatok vagy jelszavak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Általános tanulási jegyzetek</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: C</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Mit jelent az AI bias (torzítás)?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI rendszer túl gyors működése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Az AI bizonyos minták vagy csoportok irányába való torzult viselkedése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Az AI automatikus fordítási hibája</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI memóriahibája</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Melyik állítás igaz leginkább a modern AI rendszerekre?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Minden válaszuk valós idejű internetes keresésen alapul</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) A válaszaik valószínűségi minták alapján generálódnak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Kizárólag előre megírt adatbázisokat használnak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Csak programozási feladatokra alkalmasak</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Mi lehet az AI túlzott használatának egyik veszélye?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Gyorsabb tanulás minden esetben</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Kritikus gondolkodás csökkenése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Az internet megszűnése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) A számítógép automatikus túlmelegedése</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">2. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Melyik a legjobb gyakorlat AI használatakor?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Minden AI választ automatikusan publikálni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Az AI-t emberi ellenőrzéssel együtt használni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) AI-t csak szórakozásra használni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) AI használatát teljesen elkerülni munkahelyen</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
layout: center
class: text-center
transition: fade
---

# 3. témakör

## NotebookLM és AI tudáskezelés

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Mire használható elsősorban a NotebookLM?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Videójáték fejlesztésre</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Saját dokumentumok AI-alapú elemzésére és kérdezésére</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Operációs rendszerek telepítésére</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Weboldalak hosztolására</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Mi a NotebookLM egyik legnagyobb előnye?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Saját feltöltött forrásokra tud támaszkodni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Internet nélkül nem működik</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Csak képfeldolgozásra használható</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Automatikusan helyettesíti a keresőmotorokat</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Miért hasznos AI-t használni nagy dokumentumok összegzésére?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert az AI minden részletet garantáltan hibátlanul értelmez</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert gyorsan kiemelheti a fő információkat és témákat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert automatikusan törli a felesleges adatokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert kiváltja az emberi ellenőrzést</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Mi a veszélye annak, ha kizárólag AI összegzésre hagyatkozunk?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI túl rövid válaszokat ad</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Fontos kontextus vagy részletek elveszhetnek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) A dokumentum formátuma megváltozik</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az internetkapcsolat megszakad</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Melyik feladat alkalmas leginkább NotebookLM használatára?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Saját jegyzetekből tanulás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Operációs rendszer frissítés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Videók renderelése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Router konfigurálása</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Mit jelent a „forrás” (source) a NotebookLM-ben?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Egy internetes keresési lekérdezés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) A feltöltött vagy hozzáadott dokumentum, amire az AI támaszkodik</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) A laptop operációs rendszere</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) A Google-fiók jelszava</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Melyik munkafolyamat illik leginkább a NotebookLM-hez?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Router firmware frissítése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Több PDF és jegyzet alapján kérdezni egy projektről</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Videók 4K-ra skálázása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) E-mailek automatikus törlése</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Miért érdemes több dokumentumot egy notebookba tenni?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert így gyorsabb a letöltés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert az AI a dokumentumok közötti összefüggéseket is figyelembe veheti</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert kötelező a NotebookLM használatához</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert csökkenti a monitor fényerejét</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Melyik állítás a NotebookLM Audio Overview funkciójára vonatkozik?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Valós idejű tőzsdei előrejelzést készít</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) A forrásokból podcast-szerű összefoglalót generálhat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Automatikusan lefordít minden e-mailt</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Fizikai hardvert telepít a szerverre</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">3. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Mit érdemes megtenni NotebookLM válasza után fontos döntés előtt?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Azonnal megosztani mindenkinél jóváhagyás nélkül</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Ellenőrizni a választ az eredeti forrásokban</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Törölni az összes feltöltött fájlt</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Kikapcsolni az internetet</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>


---
layout: center
class: text-center
transition: fade
---

# 4. témakör

## Gems / Egyedi AI asszisztensek

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Mi a fő előnye egy egyedi AI asszisztensnek (Gem)?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Gyorsabban fut az internet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Egy adott feladatra vagy szerepre optimalizálható</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Automatikusan hibamentes válaszokat ad</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Nem igényel promptokat</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Miért hasznos egy AI asszisztens személyre szabása?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert így mindig rövidebb válaszokat ad</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert jobban illeszkedik adott munkafolyamatokhoz vagy feladatokhoz</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert kikapcsolja a hallucinációkat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert internet nélkül is működik</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Mit tartalmazhat egy jól konfigurált Gem?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Szerepkört, hangnemet és viselkedési szabályokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Operációs rendszert</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Videókártya drivereket</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Csak egyetlen promptot</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Melyik példa egy jó egyedi AI asszisztensre?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) „Mindenes chatbot”</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) „Marketing e-mail író asszisztens”</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) „Véletlenszöveg-generátor”</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) „Internetes keresőmotor”</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Miért lehet veszélyes túlzottan megbízni egy egyedi AI asszisztensben?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert nem képes hibázni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert magabiztosan adhat pontatlan válaszokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert mindig internetkapcsolatot igényel</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert nem támogat több nyelvet</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Mi a különbség egy általános chatbot és egy Gem között?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) A Gem jellemzően egy konkrét feladatra van optimalizálva</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) A Gem mindig gyorsabb</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) A chatbot nem használ AI-t</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Nincs különbség</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Miért lehet hasznos példákat adni egy Gem konfigurációjában?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Segít az elvárt válaszstílus kialakításában</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Csökkenti a memóriahasználatot</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Kikapcsolja az AI kreativitását</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Gyorsítja az operációs rendszert</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Melyik feladatra lenne kevésbé alkalmas egy egyedi AI asszisztens?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Gyakran ismétlődő szövegírás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Személyre szabott ügyfélszolgálat támogatása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">C) Valós jogi felelősséget igénylő végső döntések</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Dokumentum összegzés</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: C</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Mi az egyik előnye a konzisztens AI viselkedésnek?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI mindig ugyanazt a hibát követi el</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Kiszámíthatóbb válaszokat eredményezhet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Teljesen megszünteti a hallucinációkat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Csak rövidebb válaszokat ad</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">4. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Mi a legjobb módja egy Gem fejlesztésének?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Egyszer létrehozni és soha nem módosítani</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Tesztelni és finomítani valós használati helyzetek alapján</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Minél hosszabb rendszerpromptot írni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Kizárólag technikai nyelvezetet használni</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
layout: center
class: text-center
transition: fade
---

# 5. témakör

## AI Workflows

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Mi az AI workflow elsődleges célja?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Videók renderelése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Ismétlődő feladatok automatizálása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Operációs rendszerek cseréje</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Internetkapcsolat gyorsítása</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Melyik példa tekinthető AI workflow-nak?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Meeting jegyzet → összegzés → feladatlista → e-mail generálás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Kézi dokumentum nyomtatás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Monitor fényerejének állítása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Operációs rendszer telepítése</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Mi az AI workflow egyik legnagyobb előnye?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Minden emberi munkát helyettesít</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Csökkentheti az időigényes manuális feladatokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Kikapcsolja a hibalehetőségeket</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Csak programozók számára használható</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Miért fontos az emberi ellenőrzés automatizált workflow-k esetén?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert az AI hibázhat vagy félreértelmezhet adatokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert az AI nem tud szöveget feldolgozni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert az AI mindig túl rövid választ ad</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert a workflow internet nélkül nem működik</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Melyik feladat alkalmas AI workflow automatizálásra?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) E-mail összegzés és kategorizálás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Fizikai kábelcsere</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Nyomtató javítás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Monitor összeszerelés</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Mit jelent az „input-output” logika workflow-k esetén?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI kizárólag képeket kezel</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Egy lépés eredménye a következő lépés bemenete lehet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) A workflow csak egyszer fut le</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI internetet generál</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Miért lehetnek veszélyesek rosszul konfigurált workflow-k?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert automatikusan törölhetnek vagy hibás adatot kezelhetnek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert leállítják az internetet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert minden AI választ titkosítanak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert csak angolul működnek</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Melyik eszköz ismert AI workflow automatizálásról?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) n8n</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Paint</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) VLC Player</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) BIOS</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Miért fontos a workflow tesztelése?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mert az AI workflow-k nem futnak elsőre</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Mert a hibák automatizáltan továbbterjedhetnek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert így gyorsabb lesz a WiFi</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert a workflow csak teszt módban működik</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">5. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Melyik állítás igaz az AI workflow-kra?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Csak IT területen használhatók</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Sok hétköznapi és üzleti folyamat automatizálható velük</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Kizárólag programozással építhetők</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Nem képesek dokumentumokat kezelni</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
layout: center
class: text-center
transition: fade
---

# 6. témakör

## AI Agentek

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Mi különbözteti meg leginkább az AI agentet egy hagyományos chatbottól?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Az agent képes műveleteket végrehajtani és eszközöket használni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Az agent nem használ AI-t</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) A chatbot mindig intelligensebb</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az agent kizárólag offline működik</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Mi az AI agent egyik fő jellemzője?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Képes több lépésből álló feladatokat kezelni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Kizárólag képeket generál</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Nem használ promptokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Csak előre programozott válaszokat ad</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Melyik példa AI agent működésére?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Automatikus e-mail elemzés és válaszjavaslat készítés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Kézi fájlmásolás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Monitor tisztítása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Dokumentum nyomtatása</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Miért fontos korlátozni egy AI agent jogosultságait?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert az agent hibás vagy nem kívánt műveleteket végezhet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert az agent nem tud internetezni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert az agent csak rövid válaszokat ad</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert az agent nem kezel dokumentumokat</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Mit jelent az, hogy egy AI agent „tool use”-t használ?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Fizikai szerszámokat kezel</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Külső rendszerekkel vagy funkciókkal dolgozik együtt</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Kikapcsolja a workflow-kat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Operációs rendszert telepít</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Miért lehet hatékony egy AI agent?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert több automatizált lépést képes összekapcsolni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert soha nem hibázik</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert kizárólag emberi döntéseket másol</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert internet nélkül működik jobban</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Mi az egyik legnagyobb kockázata autonóm AI agenteknek?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Lassabb monitorfrissítés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Nem megfelelő döntések automatizált végrehajtása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Rövidebb válaszok</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Kisebb fájlméret</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Melyik feladat lehet alkalmas AI agent számára?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Meetingekből automatikus feladatlista generálása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Hardver szerelés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Monitor javítás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Internetkábel cseréje</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Miért fontos az emberi felügyelet AI agentek esetében?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert az agentek önállóan hibás döntéseket is hozhatnak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert az agentek nem tudnak szöveget feldolgozni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert az agentek kizárólag képekkel működnek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert az agentek mindig offline működnek</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">6. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Melyik állítás igaz leginkább a jelenlegi AI agentekre?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Korlátozott autonómiával rendelkező segédrendszerek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Teljes emberi intelligenciával rendelkező rendszerek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Öntudattal rendelkező digitális személyiségek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Kizárólag játékfejlesztésre alkalmas eszközök</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
layout: center
class: text-center
transition: fade
---

# 7. témakör

## AI tévhitek vs. valóság

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Mi az egyik leggyakoribb tévhit az AI-ról?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI néha hibázik</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Az AI mindig igazat mond</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Az AI minták alapján működik</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI képes szöveget generálni</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Mit jelent az, hogy az AI „magabiztosan tévedhet”?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Gyorsabban válaszol</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Meggyőző stílusban adhat hibás információt</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Automatikusan kijavítja magát</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Nem képes válaszolni</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Melyik állítás írja le legjobban a mai AI rendszereket?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Teljes emberi gondolkodással rendelkeznek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Valószínűségi minták alapján generálnak válaszokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Saját érzelmeik vannak</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Minden internetes adatot tökéletesen értenek</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Miért veszélyes az AI túlzott idealizálása?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert az emberek kritikátlanul megbízhatnak benne</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert az AI leállhat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert az AI mindig túl hosszú választ ad</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert az AI kizárólag angolul működik</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Melyik valós probléma kapcsolódik leginkább a mai AI rendszerekhez?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Robotlázadás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Deepfake és félretájékoztatás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Időutazás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Teljes internetleállás</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Miért félrevezető azt mondani, hogy az AI „megérti” az embereket?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert az AI valójában mintákat és nyelvi összefüggéseket kezel</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert az AI nem tud beszélni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert az AI csak számokat lát</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert az AI kizárólag képekkel működik</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Melyik állítás igaz az AI és a munka kapcsolatára?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI minden munkát teljesen kivált rövid időn belül</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Az AI sok munkafolyamatot átalakíthat és támogathat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Az AI kizárólag IT munkára használható</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI nem használható üzleti környezetben</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Miért fontos a kritikus gondolkodás AI használatakor?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert az AI nem mindig pontos vagy objektív</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert az AI kizárólag humoros válaszokat ad</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert az AI csak offline működik</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert az AI nem kezel hosszú szövegeket</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Melyik példa mutatja legjobban az AI korlátait?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Képes gyors összegzést készíteni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Néha kitalált forrásokat idézhet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Több nyelven kommunikál</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Tud képeket elemezni</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">7. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Mi a legjobb hozzáállás az AI jövőjéhez?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Teljes félelem</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Vak bizalom</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">C) Tudatos, kritikus és felelős használat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) AI teljes elutasítása</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: C</div>

</v-click>

---
layout: center
class: text-center
transition: fade
---

# 8. témakör

## Általános AI használat

<div class="mt-6 opacity-70">10 kérdés</div>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 1 / 10</div>

# Kérdés 1

<div class="quiz-q">

**Melyik feladatra különösen alkalmas az AI?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Dokumentumok gyors összegzése</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Hardver javítás</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Internetkábel szerelés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Monitor gyártás</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 2 / 10</div>

# Kérdés 2

<div class="quiz-q">

**Miért hasznos AI-t használni ötletelésre?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert különböző nézőpontokat és javaslatokat tud generálni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert minden ötlete automatikusan helyes</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert kizárólag kreatív munkára alkalmas</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert helyettesíti az emberi döntést</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 3 / 10</div>

# Kérdés 3

<div class="quiz-q">

**Melyik a legjobb módja AI használatának tanulás során?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Az AI válaszainak bemagolása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Az AI használata magyarázatra és gyakorlásra emberi ellenőrzéssel</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Kizárólag AI-ból tanulni</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI teljes elkerülése</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 4 / 10</div>

# Kérdés 4

<div class="quiz-q">

**Miért lehet hasznos AI-t használni e-mailek írásához?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Segíthet professzionálisabb és gyorsabb kommunikációban</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Garantálja a hibamentességet</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Automatikusan elküldi az e-maileket</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Internet nélkül működik jobban</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 5 / 10</div>

# Kérdés 5

<div class="quiz-q">

**Melyik állítás igaz az AI által generált tartalmakra?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">A) Mindig eredetiek és hibátlanok</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">B) Emberi ellenőrzés továbbra is fontos</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Jogilag mindig problémamentesek</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Nem igényelnek szerkesztést</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: B</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 6 / 10</div>

# Kérdés 6

<div class="quiz-q">

**Miért fontos megtanulni hatékonyan használni AI eszközöket?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Mert egyre több munkafolyamatban jelennek meg</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Mert kötelező lesz minden munkahelyen</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Mert teljesen kiváltják az embereket</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Mert csak technikai szakemberek használhatják</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 7 / 10</div>

# Kérdés 7

<div class="quiz-q">

**Melyik példa jó AI használatra?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) AI használata prezentációvázlat készítésére</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) AI használata jelszavak nyilvános megosztására</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) AI használata emberi ellenőrzés nélküli jogi döntésekhez</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) AI használata ismeretlen fájlok automatikus futtatására</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 8 / 10</div>

# Kérdés 8

<div class="quiz-q">

**Miért lehet hasznos AI-t használni hosszú cikkek feldolgozására?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Segíthet gyorsan megérteni a főbb pontokat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Automatikusan eltávolítja a hibákat</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Minden részletet tökéletesen megőriz</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Lecseréli a teljes olvasási folyamatot</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 9 / 10</div>

# Kérdés 9

<div class="quiz-q">

**Mi az egyik legfontosabb AI használati készség?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Kritikus kérdésfeltevés és ellenőrzés</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Minél rövidebb kérdések használata</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) AI válaszok automatikus publikálása</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Az AI kerülése munkában</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
transition: slide-up
---

<div class="quiz-meta">8. témakör · Kérdés 10 / 10</div>

# Kérdés 10

<div class="quiz-q">

**Melyik állítás írja le legjobban az AI jelenlegi szerepét?**

</div>

<div class="quiz-options">
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--correct' : ''">A) Segítő és támogató eszköz sok területen</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">B) Teljes emberi helyettesítő rendszer</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">C) Kizárólag kutatólaborokban használható technológia</div>
<div class="quiz-opt" :class="$clicks >= 1 ? 'quiz-opt--dim' : ''">D) Átmeneti internetes trend</div>
</div>

<v-click>

<div class="quiz-reveal">✅ Helyes válasz: A</div>

</v-click>

---
layout: center
class: text-center
transition: fade
---

# Bónusz · Csoportos beszélgetés

<div class="mt-8 text-xl max-w-2xl mx-auto leading-relaxed">

**Mely részei a napi munkádnak vagy életednek javíthatók reálisan AI-val már ma?**

</div>

<div class="mt-10 opacity-60 text-base">

Nincs helyes vagy helytelen válasz — záró diskurzió

</div>

---
layout: center
class: text-center
---

# Köszönjük a részvételt!

<div class="mt-6 opacity-70">AI Workshop Kvíz · 80 kérdés · 8 témakör</div>
