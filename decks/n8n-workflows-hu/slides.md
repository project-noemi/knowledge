---
theme: ../../packages/theme-company
title: n8n Munkafolyamatok
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# n8n Munkafolyamatok

Nyílt forráskódú munkafolyamat-automatizálás technikai csapatok számára

---
transition: slide-up
---

# Mi az n8n?

<img src="/images/n8n-logo.png" class="w-24 mb-4" />

Az **n8n** (ejtsd: "n-eight-n") egy munkafolyamat-automatizálási platform.
<br>A neve a "nodemation" szóból ered (node-alapú automatizálás) — a 8-as a két "n" betű közötti betűk számát jelöli.

<v-clicks>

- Alkalmazások, API-k és szolgáltatások összekapcsolása **vizuális, csomópont-alapú szerkesztővel**
- Nyílt forráskódú — saját szerveren futtatható, vagy használható az n8n Cloud
- Kódolás amikor kell, no-code amikor nem
- Több mint **400+ integráció** alapból elérhető
  <br><span class="text-sm opacity-60">Google Workspace, Microsoft 365, Slack, Notion, Airtable, HubSpot, Salesforce, GitHub, Jira, Telegram, OpenAI, PostgreSQL, MySQL …</span>

</v-clicks>

<v-click>

<div class="mt-8">

> Olyan mint a Zapier, de teljes kontrollal — az adataid és a logikád a tiéd.

</div>

</v-click>

---
transition: slide-up
---

# Alapfogalmak

<v-clicks>

- **Munkafolyamat (Workflow)** — automatizált lépések sorozata
- **Csomópont (Node)** — egyetlen lépés a munkafolyamatban
- **Trigger** — az esemény, ami elindítja a munkafolyamatot
- **Kapcsolat (Connection)** — az adatáramlás a csomópontok között
- **Végrehajtás (Execution)** — a munkafolyamat egyszeri lefutása

</v-clicks>

<div class="flex justify-center mt-6">
<svg viewBox="0 0 520 100" width="700">
  <!-- Workflow container (click 1) -->
  <rect class="transition-opacity duration-500" :class="$clicks >= 1 ? 'opacity-100' : 'opacity-0'" x="2" y="2" width="516" height="96" rx="10" fill="none" stroke="#1c63b7" stroke-width="1.5" stroke-dasharray="6 3" />

  <!-- Trigger node (click 3) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 3 ? 'opacity-100' : $clicks >= 1 ? 'opacity-20' : 'opacity-0'">
    <rect x="24" y="28" width="90" height="40" rx="6" fill="#ea4560" />
    <text x="69" y="53" text-anchor="middle" fill="white" font-size="4" font-weight="600">Trigger</text>
  </g>

  <!-- Arrow 1 (click 4) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 4 ? 'opacity-100' : $clicks >= 1 ? 'opacity-20' : 'opacity-0'">
    <line x1="114" y1="48" x2="138" y2="48" stroke="#1c63b7" stroke-width="1.5" />
    <polygon points="138,44 145,48 138,52" fill="#1c63b7" />
  </g>

  <!-- Node 1 (click 2) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 2 ? 'opacity-100' : $clicks >= 1 ? 'opacity-20' : 'opacity-0'">
    <rect x="145" y="28" width="90" height="40" rx="6" fill="#1c63b7" />
    <text x="190" y="53" text-anchor="middle" fill="white" font-size="4" font-weight="600">Művelet</text>
  </g>

  <!-- Arrow 2 (click 4) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 4 ? 'opacity-100' : $clicks >= 1 ? 'opacity-20' : 'opacity-0'">
    <line x1="235" y1="48" x2="259" y2="48" stroke="#1c63b7" stroke-width="1.5" />
    <polygon points="259,44 266,48 259,52" fill="#1c63b7" />
  </g>

  <!-- Node 2 (click 2) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 2 ? 'opacity-100' : $clicks >= 1 ? 'opacity-20' : 'opacity-0'">
    <rect x="266" y="28" width="90" height="40" rx="6" fill="#1c63b7" />
    <text x="311" y="53" text-anchor="middle" fill="white" font-size="4" font-weight="600">IF</text>
  </g>

  <!-- Arrow 3 (click 4) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 4 ? 'opacity-100' : $clicks >= 1 ? 'opacity-20' : 'opacity-0'">
    <line x1="356" y1="48" x2="380" y2="48" stroke="#1c63b7" stroke-width="1.5" />
    <polygon points="380,44 387,48 380,52" fill="#1c63b7" />
  </g>

  <!-- Node 3 (click 2) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 2 ? 'opacity-100' : $clicks >= 1 ? 'opacity-20' : 'opacity-0'">
    <rect x="387" y="28" width="108" height="40" rx="6" fill="#1c63b7" />
    <text x="441" y="53" text-anchor="middle" fill="white" font-size="4" font-weight="600">Eredmény</text>
  </g>

  <!-- Execution indicator (click 5) -->
  <g class="transition-opacity duration-500" :class="$clicks >= 5 ? 'opacity-100' : 'opacity-0'">
    <rect x="18" y="22" width="484" height="52" rx="8" fill="none" stroke="#22c55e" stroke-width="1.5" stroke-dasharray="4 2">
      <animate attributeName="stroke-dashoffset" from="0" to="-12" dur="1s" repeatCount="indefinite" />
    </rect>
  </g>
</svg>
</div>

---
transition: slide-up
---

# Egy munkafolyamat felépítése

```
[Trigger] → [Csomópont 1] → [Csomópont 2] → [Csomópont 3]
```

<v-clicks>

- **Trigger csomópont** — "Amikor X történik…" (webhook, ütemezés, e-mail, űrlap)
- **Művelet csomópontok** — "Csináld Y-t…" (sor létrehozása, Slack üzenet küldése, API hívás)
- **Logikai csomópontok** — "Ha Z…" (IF, Switch, Merge, Loop, Wait)
- **Adat csomópontok** — "Adatok átalakítása…" (Set, Edit Fields, Code)

</v-clicks>

<v-click>

Az adatok **JSON objektumokként** áramlanak a csomópontok között — minden csomópont a kimenetét a következőnek adja tovább.

</v-click>

---
transition: slide-up
---

# Trigger típusok

| Trigger | Mikor aktiválódik |
|---------|-------------------|
| **Webhook** | Külső szolgáltatásból érkező HTTP kérésre |
| **Ütemezés (Schedule)** | Beállított időpontban vagy időközönként (cron) |
| **E-mail** | Amikor e-mail érkezik (IMAP) |
| **Űrlap (Form)** | Amikor egy felhasználó kitölt egy n8n űrlapot |
| **Alkalmazás esemény** | Amikor valami történik a Gmail-ben, Slack-ben stb. |
| **Manuális** | Rákattintasz a "Run"-ra — teszteléshez hasznos |

---
transition: slide-up
---

# A Code csomópont

Amikor a beépített csomópontok nem elegendőek, írj JavaScript vagy Python kódot közvetlenül.

```javascript
// Bejövő adatok átalakítása
const items = $input.all();

return items.map(item => ({
  json: {
    fullName: `${item.json.firstName} ${item.json.lastName}`,
    email: item.json.email.toLowerCase(),
    createdAt: new Date().toISOString()
  }
}));
```

<v-click>

Bármely bemeneti adat elérhető a `$input`, `$json`, `$node` vagy `$vars` segítségével.

</v-click>

---
transition: slide-up
---

# AI csomópontok az n8n-ben

Az n8n első osztályú támogatást nyújt **MI-alapú munkafolyamatokhoz**:

<v-clicks>

- **AI Agent csomópont** — autonóm ágens eszközökkel és memóriával
- **Chat modell csomópontok** — OpenAI, Anthropic, Google Gemini, Ollama
- **Embedding csomópontok** — szöveg vektorrá alakítása
- **Vektortár csomópontok** — Pinecone, Qdrant, Supabase
- **Memória csomópontok** — ablak puffer, összegző memória

</v-clicks>

<v-click>

Építs RAG pipeline-okat, MI asszisztenseket és autonóm ágenseket — mindezt vizuálisan.

</v-click>

---
transition: slide-up
---

# Valós munkafolyamat példák

<v-clicks>

- **Lead gazdagítás** — új CRM kontakt → gazdagítás Clearbit-tel → Slack értesítés
- **Támogatási triázs** — beérkező e-mail → MI osztályozás → továbbítás a megfelelő csapatnak
- **Tartalom pipeline** — RSS feed → összefoglalás LLM-mel → posztolás Notion-be
- **Számla feldolgozás** — PDF feltöltés → adatkinyerés MI-vel → táblázat frissítése
- **Napi összefoglaló** — ütemezés → naptár + e-mailek lekérése → összegzés → kivonat küldése

</v-clicks>

---
transition: fade
layout: center
class: text-center
---

# Miért n8n?

<div class="grid grid-cols-3 gap-6 mt-8">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🔓</div>
  <div class="font-bold mb-1">Nyílt forráskódú</div>
  <div class="text-sm opacity-70">Saját szerveren futtatható, az adataid a tiéd, nincs vendor lock-in</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🧩</div>
  <div class="font-bold mb-1">400+ integráció</div>
  <div class="text-sm opacity-70">Szinte mindenhez csatlakozik</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🤖</div>
  <div class="font-bold mb-1">MI-natív</div>
  <div class="text-sm opacity-70">Ágensek, LLM-ek és RAG beépítve</div>
</div>

</div>
