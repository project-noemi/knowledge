---
theme: ../../packages/theme-company
title: AI Alapok
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# AI Alapok

A mesterséges intelligencia megértése az alapoktól

---
transition: slide-up
---

# Mi a mesterséges intelligencia?

Az AI a gép képessége, hogy **emberi intelligenciát szimuláljon** — érvelés, tanulás és problémamegoldás.

<v-clicks>

- Nem varázslat — **matematika + adat + számítási kapacitás**
- A gépek nem „gondolkodnak” — **mintákat keresnek**
- Az AI széles terület, sok alágazattal

</v-clicks>

<v-click>

```
Human intelligence → observed → modelled → approximated by machines
```

</v-click>

---
transition: slide-up
---

# Az AI tájképe

<div class="flex gap-12 mt-8">
<div>

**Mesterséges intelligencia (AI)**
<v-clicks>

- A széles fogalom
- Bármely technika, ami a gépeket „okossá” teszi

</v-clicks>

</div>
<div>

**Gépi tanulás (ML)** <span v-click class="text-sm opacity-60">⊂ AI</span>
<v-clicks>

- Adatból tanuló rendszerek
- Nincs szükség explicit programozásra

</v-clicks>

</div>
<div>

**Mélytanulás (DL)** <span v-click class="text-sm opacity-60">⊂ ML</span>
<v-clicks>

- Sok rétegű neurális hálók
- A modern AI áttöréseit hajtja

</v-clicks>

</div>
</div>

---
transition: slide-left
layout: center
---

<div class="text-center">
  <div v-click class="text-6xl mb-4">📦</div>
  <div v-click class="text-3xl font-bold mb-2">Adat</div>
  <div v-click class="text-xl opacity-70">Az AI üzemanyaga</div>
  <div v-click class="mt-6 text-lg">Adat nélkül nincs tanulás.</div>
</div>

---
transition: slide-up
---

# 1. összetevő — Adat

Az AI példákból tanul. Minél több (és jobb) az adat, annál okosabb a modell.

| Típus | Példa |
|------|---------|
| **Strukturált** | Táblázatok, adatbázisok |
| **Nem strukturált** | Képek, szöveg, hang |
| **Címkézett** | „macska” vagy „kutya” címkével ellátott képek |
| **Címkézetlen** | Nyers webes szöveg |

<v-click>

> Szemét be, szemét ki — az adat minősége fontosabb, mint a mennyisége.

</v-click>

---
transition: slide-up
---

# 2. összetevő — Algoritmusok

Az algoritmus egy **szabályrendszer**, ami megmondja a gépnek, hogyan tanuljon az adatból.

<v-clicks>

- **Felügyelt tanulás** — címkézett példákból tanul
- **Felügyelet nélküli tanulás** — rejtett minták keresése címkézetlen adatban
- **Megerősítéses tanulás** — próbálkozás és jutalom alapján tanul

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

# 3. összetevő — Számítási kapacitás

AI modellek képzése **hatalmas számítási teljesítményt** igényel.

<v-clicks>

- **CPU** — általános célú, kiváló logikára
- **GPU** — párhuzamos feldolgozás, ideális mátrixműveletekhez (az AI alapművelete)
- **TPU** — mélytanulásra tervezett chipek (Google Tensor Processing Units)

</v-clicks>

<v-click>

A GPT-3 képzése ~3 640 petaflop-napot igényelt.
Ez nagyjából **355 év** egyetlen modern GPU-n.

</v-click>

---
transition: slide-up
---

# Hogyan tanul egy modell?

<v-clicks>

1. **Adat** betáplálása a modellbe
2. **Előrejelzés** (kezdetben véletlenszerű)
3. **Hiba mérése** (mennyire tévedett?)
4. **Súlyok finomhangolása** a hiba csökkentésére
5. **Ismétlés** milliószor

</v-clicks>

<v-click>

Ezt a ciklust **gradient descent**-nek hívjuk — a modell lépésről lépésre a legjobb válasz felé halad.

</v-click>

---
transition: slide-up
---

# Fontos fogalmak

<v-clicks>

- **Modell** — a betanított „tárgy”, ami előrejelzéseket ad
- **Paraméterek / súlyok** — a számok, amiket a modell megtanul (a GPT-4 ~1,8 billiót)
- **Training (képzés)** — a tanulási folyamat egy adathalmazon
- **Inference (következtetés)** — betanított modell használata előrejelzésre
- **Overfitting (túlilleszkedés)** — a tanítóadat memorizálása általánosítás helyett
- **Loss (veszteség)** — szám, ami méri, mennyire téved a modell

</v-clicks>

---
transition: slide-up
---

# AI feladattípusok

| Feladat | Mit csinál | Példa |
|------|-------------|---------|
| **Klasszifikáció** | Kategória hozzárendelése | Spam vagy nem spam? |
| **Regresszió** | Szám előrejelzése | Ingatlanár-becslés |
| **Generálás** | Új tartalom létrehozása | E-mail írása, kép rajzolása |
| **Klaszterezés** | Hasonló elemek csoportosítása | Ügyfélszegmentáció |
| **Ajánlás** | Releváns elemek javaslata | Netflix, Spotify |

---
transition: fade
layout: center
class: text-center
---

# Három kérdés

<div class="grid grid-cols-3 gap-8 mt-10">

<div v-click class="border border-blue-300 rounded-xl p-6">
  <div class="text-4xl mb-3">🎯</div>
  <div class="font-bold text-lg mb-2">Mit jósolsz meg?</div>
  <div class="text-sm opacity-70">Fogalmazd meg világosan a problémát</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-6">
  <div class="text-4xl mb-3">📊</div>
  <div class="font-bold text-lg mb-2">Milyen adatod van?</div>
  <div class="text-sm opacity-70">Mennyiség, minőség, címkék</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-6">
  <div class="text-4xl mb-3">✅</div>
  <div class="font-bold text-lg mb-2">Hogyan méred a sikert?</div>
  <div class="text-sm opacity-70">Accuracy, precision, recall…</div>
</div>

</div>

---
transition: fade
layout: center
class: text-center
---

# Összefoglaló

<v-clicks>

**AI** = gépek intelligenciájának szimulálása

**Adat** + **Algoritmusok** + **Számítási kapacitás** = működő AI rendszer

**Tanulás** = ismételt finomhangolás a hiba csökkentésére

Kérdezd: *Mit jósolok meg? Milyen adatom van? Hogyan mérem a sikert?*

</v-clicks>

<v-click>

*Kezdd a problémával. Hagyd, hogy az adat vezesse a megközelítést.*

</v-click>
