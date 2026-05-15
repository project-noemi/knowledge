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

Eszközök építése és feladatok automatizálása MI-vel — programozási tapasztalat nélkül

---
transition: slide-up
---

# Mi a Vibe Coding?

<v-clicks>

- Andrej Karpathy (ex-OpenAI, Tesla AI) által megalkotott kifejezés
- Egyszerű nyelven leírod, **mit szeretnél**
- Az MI megírja a kódot
- Teszteled, visszajelzést adsz, iterálsz
- Te soha (vagy ritkán) írsz kódot magad

</v-clicks>

<v-click>

> "A legforróbb új programozási nyelv az angol." — Andrej Karpathy

</v-click>

---
transition: slide-up
---

# Miért nagy dolog ez?

<v-clicks>

- Történelmileg a munkád automatizálásához fejlesztő kellett
- A fejlesztők drágák, lassúak, és versengő prioritásaik vannak
- MI-vel: **te** építheted meg a szükséges eszközt, ma
- Azok a kis automatizálások, amelyeket egy fejlesztő sosem priorizálna, most már lehetségesek
- A belépési küszöb évek tanulásáról **órákra** csökkent

</v-clicks>

---
transition: slide-up
---

# Mit építhetsz kódolás nélkül?

<v-clicks>

- **Excel/Google Sheets makrók** — ismétlődő táblázatos munka automatizálása
- **Egyszerű web scraperek** — adatok automatikus lekérése weboldalakról
- **Adatfeldolgozó szkriptek** — fájlok tisztítása, átalakítása és egyesítése
- **E-mail automatizálás** — személyre szabott tömeges e-maileket küldő szkriptek
- **PDF eszközök** — fájlok automatikus kinyerése, egyesítése, átnevezése
- **Egyszerű webalkalmazások** — űrlapok, irányítópultok, belső eszközök
- **API integrációk** — két eszköz összekapcsolása, amelyekhez nincs Zapier integráció

</v-clicks>

---
transition: slide-up
---

# A Vibe Coding ciklus

<v-clicks>

1. **Leírás** — egyszerű angolul leírod, mit szeretnél
2. **Kód** — az MI-től (ChatGPT, Claude, Cursor)
3. **Futtatás** — bemásolod a megfelelő helyre és végrehajtod
4. **Hiba vagy hiányosság** — visszamondod az MI-nek
5. **Iteráció** — amíg működik
6. **Használat** — az eszköz a tiéd

</v-clicks>

<v-click>

Nem kell megértened a kódot. Meg kell értened, **mit akarsz**.

</v-click>

---
transition: slide-up
---

# Példa: Excel makró

**Prompt:**
```
Write an Excel VBA macro that:
1. Loops through all rows in Sheet1
2. If column C is empty, highlights that row in yellow
3. Adds a summary at the bottom showing how many rows were highlighted
```

<v-click>

Az MI megírja a makrót. Excel → Fejlesztő → Makrók → beillesztés → futtatás.

5 perc alatt kész. VBA tudás nem kell.

</v-click>

---
transition: slide-up
---

# Példa: Fájlok automatikus átnevezése

**Prompt:**
```
Write a Python script that:
- Looks in a folder called "invoices" on my Desktop
- Renames every PDF file to follow this pattern: YYYY-MM-DD_CompanyName.pdf
- The current file names look like: "Invoice_Acme_20240315.pdf"
```

<v-click>

A Claude vagy ChatGPT megírja. Egyszer futtatod. Száz fájl azonnal átnevezve.

</v-click>

---
transition: slide-up
---

# Példa: Egyszerű webalkalmazás

Az olyan eszközök, mint a **Replit**, **v0** és **Lovable**, teljes alkalmazásokat építenek promptokból:

<v-clicks>

- "Építs egy űrlapot, ahol a csapat heti státuszjelentéseket küldhet, táblázatban tárolva"
- "Készíts egy egyszerű irányítópultot a KPI-kről ebből a Google Sheet-ből"
- "Építs belső eszközt ügyfélajánlatok generálásához sablonból"

</v-clicks>

<v-click>

3 éve ehhez fejlesztő és hetek munkája kellett volna.

</v-click>

---
transition: slide-up
---

# A megfelelő eszközök

| Eszköz | Mire való |
|--------|-----------|
| **ChatGPT / Claude** | Szkriptek, makrók írása, hibák magyarázata |
| **Cursor** | MI kódszerkesztő — legjobb nagyobb projektek iterálásához |
| **Replit** | Böngészőalapú kódolás + MI asszisztens, azonnali futtatás |
| **v0 by Vercel** | UI és webalkalmazások generálása szöveges promptokból |
| **Lovable** | Teljes alkalmazásépítő természetes nyelvből |
| **GitHub Copilot** | MI automatikus kiegészítés VS Code-ban |

---
transition: slide-up
---

# Hogyan írd le, mit akarsz?

A jó leírások tartalmazzák:

<v-clicks>

- **Bemenet** — milyen adatokkal vagy fájlokkal kezdesz
- **Kimenet** — mivel szeretnél végezni
- **Formátum** — fájltípus, oszlopnevek, mappa struktúra
- **Speciális esetek** — "ha a fájl már létezik, hagyd ki"
- **Környezet** — Windows/Mac, Excel verzió, Python verzió

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

# Amikor valami elromlik

<v-clicks>

- **Másold ki a pontos hibaüzenetet** és illeszd vissza az MI-nek
- Mondd: "Ezt futtattam és ezt a hibát kaptam: [hiba beillesztése]"
- Az MI diagnosztizál és javít — gyakran egy válaszban
- Ha elakadtál, írd le, mit vártál vs. mi történt
- Ne add fel egy hiba után — az iteráció normális

</v-clicks>

<v-click>

> A hibaüzenetek csak utasítások az MI-nek a kód javításához.

</v-click>

---
transition: fade
layout: center
class: text-center
---

# Összefoglaló

<v-clicks>

Vibe coding = **leírod, mit akarsz**, az MI megírja a kódot

Nem kell programozást tanulnod — **világosan kell gondolkodnod a problémáról**

Kezdj kicsiben: egy makró, egy szkript, egy űrlap — aztán építs magabiztosságot

Az MI **javíthatja a saját hibáit** — csak illeszd vissza a hibaüzenetet

</v-clicks>

<v-click>

*A legjobb automatizálás az, amit te magad építesz — ma.*

</v-click>
