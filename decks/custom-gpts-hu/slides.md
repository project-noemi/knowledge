---
theme: ../../packages/theme-company
title: Custom GPTs
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# Custom GPTs

Építs saját MI asszisztenst — kódolás nélkül

---
transition: slide-up
---

# Mi az a Custom GPT?

<v-clicks>

- A ChatGPT személyre szabott változata a saját utasításokkal, tudással és eszközökkel
- Az OpenAI GPT Builderrel készül — kód nélkül
- Lehet privát, megosztható a csapattal, vagy publikálható a GPT Store-ban
- Lényegében: **egy szakértő asszisztens a te kontextusodra építve**

</v-clicks>

<v-click>

Gondolj rá úgy, mint egy MI alkalmazottra, aki csak a vállalkozásodat ismeri, és mindig a szabályaid szerint dolgozik.

</v-click>

---
transition: slide-up
---

# Custom GPTs vs Gemini Gems

Mindkettővel egyéni MI asszisztenseket építhetsz — a fő különbség az ökoszisztéma:

| Funkció | Custom GPTs | Gemini Gems |
|---------|-------------|-------------|
| Platform | ChatGPT (OpenAI) | Gemini (Google) |
| Elérhető eszközök | Web search, DALL-E, Code Interpreter | Google Search, Drive, Docs |
| Tudásfeltöltés | Igen (fájlok) | Igen (fájlok + Drive) |
| Egyéni műveletek | Igen (API-n keresztül) | Korlátozott |
| Megosztás | GPT Store vagy link | Workspace megosztás |

<v-click>

Ha a csapatod Google Workspace-et használ → Gems. Ha ChatGPT-t → Custom GPTs.

</v-click>

---
transition: slide-up
---

# Mit építhetsz?

<v-clicks>

- **Onboarding asszisztens** — új munkatársak kérdéseire válaszol a HR dokumentumokból
- **Márkahang szerkesztő** — bármilyen szöveget átír a márka irányelvei szerint
- **Ügyfélszolgálati bot** — GYIK-et kezel a termékdokumentációból
- **Ajánlatgenerátor** — első vázlatot készít a sablonjaid alapján
- **Meeting prep eszköz** — értékesítési hívás előtt kutat egy cégről
- **Policy tanácsadó** — compliance kérdésekre válaszol a belső szabályzatokból

</v-clicks>

---
transition: slide-up
---

# A GPT Builder felülete

Egy Custom GPT elkészítése kb. 10 perc:

<v-clicks>

1. Menj a **chatgpt.com → Explore GPTs → Create** menüpontra
2. Használd a **chat felületet** a GPT leírásához
3. Vagy válts **Configure** módra a manuális beállításhoz:
   - Név és leírás
   - Rendszerutasítások
   - Feltöltött tudásfájlok
   - Engedélyezett képességek
   - Custom actions

</v-clicks>

---
transition: slide-up
---

# Jó utasítások írása

A rendszerprompt a GPT magja. Határozd meg:

<v-clicks>

- **Szerep** — „You are a customer support agent for Acme Software”
- **Hangnem** — „Always respond in a friendly, professional tone”
- **Hatókör** — „Only answer questions about our product. Decline unrelated requests”
- **Formátum** — „Always use bullet points for feature comparisons”
- **Fallback** — „If you don't know the answer, say so and suggest contacting support@acme.com”

</v-clicks>

---
transition: slide-up
---

# Tudásfájlok feltöltése

A GPT a dokumentumaid alapján válaszol:

<v-clicks>

- Tölts fel PDF-et, Word dokumentumot, szöveges fájlt, CSV-t
- A GPT keres bennük, amikor válaszol
- Jó erre: termékdoksi, HR kézikönyv, árlista, GYIK, jogi sablonok
- **Limit:** ~20 fájl, fájlonként max. 512 MB
- A fájlok privátak — a felhasználók nem tölthetik le közvetlenül

</v-clicks>

<v-click>

**Példa:** Töltsd fel a teljes termékmanualt → a GPT részletes technikai kérdésekre válaszol anélkül, hogy kitalálna funkciókat.

</v-click>

---
transition: slide-up
---

# Képességek bekapcsolása

Kapcsold be vagy ki a használati eset szerint:

<v-clicks>

- **Web search** — a GPT az interneten keres aktuális információt
- **DALL-E image generation** — képeket készíthet kérésre
- **Code Interpreter** — Python futtatás, fájlelemzés, grafikonok
- **Custom actions** — külső API-k csatlakoztatása (haladó)

</v-clicks>

<v-click>

A legtöbb üzleti GPT-hez: kapcsold be a **Web search**-öt, a többit hagyd ki, hacsak nincs rá konkrét szükség.

</v-click>

---
transition: slide-up
---

# GPT megosztása

<v-clicks>

- **Only me** — privát, csak saját használatra
- **Anyone with the link** — megosztás a csapatban
- **Everyone (GPT Store)** — nyilvános publikálás

</v-clicks>

<v-click>

**Csapatmunkafolyamat:** Építs egy GPT-t, oszd meg a linket Slackben vagy Notionben — az egész csapat azonnal ugyanazt az asszisztenst használja.

Nincs IT beállítás, nincs deploy, nincs karbantartás.

</v-click>

---
transition: slide-up
---

# Valós példa — Brand Voice GPT

**Instructions:**
```
You are a brand voice editor for Acme Inc. Our tone is:
confident, clear, human, and never corporate or jargon-heavy.

When given any text, rewrite it to match our brand voice.
Keep the meaning exactly the same. Only change tone and style.
Output: the rewritten text only — no commentary.
```

**Knowledge files:** Töltsd fel a márka stílusútmutató PDF-et.

<v-click>

Most minden csapattag másodpercek alatt márkahangra szerkesztheti a szöveget.

</v-click>

---
transition: fade
layout: center
class: text-center
---

# Összefoglaló

<v-clicks>

A Custom GPTs **szakértő asszisztensek** a ChatGPT-re építve — kód nélkül

Határozd meg a **szerepet, hangnemet, hatókört és tudást** az utasításokban

Töltsd fel a **vállalati dokumentumokat** tudásbázisként

Oszd meg linkkel — az egész csapat azonnal ugyanazt az eszközt kapja

</v-clicks>

<v-click>

*Építsd meg egyszer. Használd örökre. Fejlesztő nélkül.*

</v-click>
