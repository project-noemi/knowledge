---
theme: ../../packages/theme-company
title: MI Etika és Felelős Használat
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# MI Etika és Felelős Használat

Az MI jó használata annak ismeretét jelenti, hol vannak a határai — és a kockázatai

---
transition: slide-up
---

# Miért fontos ez az üzletben?

<v-clicks>

- Az MI hibázik — és ezek a hibák drágák vagy kínosak lehetnek
- Az MI eszközökkel megosztott adatok nem feltétlenül privátak
- Az MI kimenetek jogi, hírnévbeli vagy szabályozási kockázatot hozhatnak
- A guardrail nélküli MI-használat felelősséget teremt a csapatokban
- A felelős használat bizalmat épít — ügyfelekkel, szabályozókkal és alkalmazottakkal

</v-clicks>

<v-click>

Megérteni, mi mehet rosszul, a legpraktikusabb MI-készség.

</v-click>

---
transition: slide-up
---

# Hallucinációk — az MI magabiztosan téved

<v-clicks>

- Az MI modellek minták alapján generálnak szöveget — **nem keresnek fel** dolgokat
- Amikor nem tudnak valamit, gyakran **meggyőzően kitalálják**
- Hamis statisztikák, rossz hivatkozások, nem létező törvények, helytelen termékleírások
- A kimenet ugyanolyan magabiztos, akár pontos, akár nem

</v-clicks>

<v-click>

**Szabály:** Soha ne publikálj vagy cselekedj MI által generált tények alapján anélkül, hogy hiteles forrásból ellenőriznéd.

</v-click>

---
transition: slide-up
---

# Gyakori hallucinációs csapdák

<v-clicks>

- **Jogi és szabályozási állítások** — az MI nem létező törvényeket hivatkozhat
- **Statisztikák és kutatások** — hihető számokat találhat ki
- **Emberek és idézetek** — hamis kijelentéseket tulajdoníthat valós személyeknek
- **Műszaki specifikációk** — nem létező funkciókat írhat le
- **Friss események** — az MI-nek van tudási határa, elavult lehet

</v-clicks>

<v-click>

**Csökkentés:** Kérd forrásokat az MI-től, vagy használj olyan eszközöket, mint a Perplexity, amely valós forrásokra linkel.

</v-click>

---
transition: slide-up
---

# Adatvédelem — mit osztasz meg, az számít

<v-clicks>

- Alapértelmezetten egyes MI eszközök a beszélgetéseidet modelltanításra használhatják
- Bizalmas üzleti adatok, ügyfél PII és pénzügyi információk **soha** ne kerüljenek nyilvános MI eszközökbe
- Ellenőrizd minden eszköz adatvédelmi beállításait és vállalati adatmegállapodásait
- Sok eszköz kínál **privát/vállalati módot**, ahol az adatokat nem használják tanításra

</v-clicks>

<v-click>

**Szabály:** Kezeld az MI chat ablakokat mint e-mailt. Ne tegyél bele semmit, amit nem szeretnél továbbítani.

</v-click>

---
transition: slide-up
---

# Mit NE ossz meg nyilvános MI eszközökkel?

<v-clicks>

- Ügyfélnevek, e-mailek vagy személyes adatok (GDPR kockázat)
- Ki nem adott pénzügyi adatok vagy előrejelzések
- Jogi dokumentumok vagy privilegizált kommunikáció
- Jelszavak, API kulcsok vagy hitelesítő adatok
- Ki nem adott termékinformációk
- Alkalmazotti személyes adatok

</v-clicks>

<v-click>

**Biztonságos alternatíva:** Használj anonimizált vagy szintetikus adatokat, amikor érzékeny információkkal tesztelsz MI munkafolyamatokat.

</v-click>

---
transition: slide-up
---

# Elfogultság az MI rendszerekben

<v-clicks>

- Az MI modellek ember által generált adatokból tanulnak — és **örökölnek emberi elfogultságokat**
- A kimenetek tükrözhetnek sztereotípiákat nem, faj, kor, foglalkozás tekintetében
- Felvételi eszközök MI-vel akaratlanul diszkriminálhatnak
- Marketing célzás kizárhat vagy kihasználhat sebezhető csoportokat
- Fordító eszközök hordozhatnak kulturális feltételezéseket

</v-clicks>

<v-click>

**Szabály:** Extra gondossággal nézd át az embereket érintő MI kimeneteket — felvétel, hitelezés, ügyfélszolgálat.

</v-click>

---
transition: slide-up
---

# Szerzői jog és szellemi tulajdon

<v-clicks>

- Az MI által generált tartalom a legtöbb joghatóságban jogi szürke zónában van
- Az MI internetes tartalommal van betanítva — amelynek egy része szerzői jogvédelem alatt áll
- **Szöveg:** általában biztonságos használni, de ellenőrizd magas tétű publikálásnál
- **Képek:** kereskedelmi célra engedélyezett modelleket használj (Adobe Firefly, Canva)
- **Kód:** a GitHub Copilot nyílt forráskódú repókból javasolhat kódot — ellenőrizd a licenceket
- **Zene és videó:** gyorsan változó jogszabályozás — óvatosan

</v-clicks>

---
transition: slide-up
---

# Mikor NE használj MI-t?

<v-clicks>

- **Végleges jogi vagy orvosi tanács** — az MI nem helyettesíti a szakképzett szakembert
- **Válságkommunikáció** — hangérzékeny helyzetek emberi ítéletet igényelnek
- **Teljesítményértékelések** — emberekről szóló döntések emberi felelősséget igényelnek
- **Valós idejű biztonságkritikus döntések** — az MI hibái ezekben ártalmasak lehetnek
- **Bármi, ami érzelmi intelligenciát igényel** — az MI-nek nincs valódi empátiája

</v-clicks>

<v-click>

Az MI **eszköz**, nem döntéshozó. Az emberek továbbra is felelősek az eredményekért.

</v-click>

---
transition: slide-up
---

# Felelős MI szokások kialakítása

<v-clicks>

- **Ellenőrizd** az MI kimeneteket publikálás vagy cselekvés előtt
- **Tárd fel** az MI használatát, ahol releváns — ügyfelek és szabályozók egyre inkább elvárják
- **Nézd át** az embereket érintő MI kimeneteket elfogultság és méltányosság szempontjából
- **Védd** az érzékeny adatokat — használj enterprise/privát módot vagy anonimizálj előbb
- **Maradj naprakész** — az MI szabályozás gyorsan változik (EU AI Act, GDPR végrehajtás)

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# A felelős MI ellenőrzőlista

<div class="grid grid-cols-2 gap-6 mt-8 text-left">

<div v-click class="border border-blue-300 rounded-xl p-4">
  <div class="font-bold text-blue-700 mb-2">MI használata előtt</div>
  <div class="text-sm opacity-80">Megfelelőek az adatok, amiket megosztok? Van olyan adatvédelmi szabályzata ennek az eszköznek, amellyel elégedett vagyok?</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-4">
  <div class="font-bold text-blue-700 mb-2">Kimenet átnézésekor</div>
  <div class="text-sm opacity-80">Ellenőriztem a tényeket? Tartalmaz elfogultságot? Megfelelő-e publikálni vagy cselekedni rajta?</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-4">
  <div class="font-bold text-blue-700 mb-2">Publikálás előtt</div>
  <div class="text-sm opacity-80">Feltüntettem az MI használatát, ahol releváns? Birtoklom a jogokat ehhez a tartalomhoz?</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-4">
  <div class="font-bold text-blue-700 mb-2">Magas tétű döntések</div>
  <div class="text-sm opacity-80">Van ember, aki felelős ezért az eredményért? Inkább szakembert kellene konzultálnom?</div>
</div>

</div>

---
transition: fade
layout: center
class: text-center
---

# Összefoglaló

<v-clicks>

Az MI **hallucinációi** valósak — mindig ellenőrizd a tényeket hiteles forrásokból

**Soha ne ossz meg** bizalmas adatokat, PII-t vagy hitelesítő adatokat nyilvános MI eszközökkel

Az MI kimenetek tükrözhetnek **elfogultságot** — nézd át mindent, ami embereket érint

**Az emberek továbbra is felelősek** az MI-asszisztált döntésekért

</v-clicks>

<v-click>

*Használd az MI-t erőteljes asszisztensként — ne megbízható autoritásként.*

</v-click>
