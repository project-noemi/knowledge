---
theme: ../../packages/theme-company
title: MCP Szerverek
highlighter: shiki
drawings:
  persist: false
transition: fade
mdc: true
---

# MCP Szerverek

A Model Context Protocol — szabvány az MI és a világ összekapcsolására

---
transition: slide-up
---

# A probléma, amit az MCP megold

Minden MI-eszköznek **egyedi integrációk** kellett minden külső szolgáltatáshoz.

<v-clicks>

- A Claude olvasni akarja a fájljaidat → egyedi fájl eszköz
- A Claude lekérdezni akarja az adatbázisodat → egyedi DB eszköz
- A Claude hívni akarja az API-dat → egyedi API eszköz
- Szorozd minden MI alkalmazással × minden szolgáltatással = integrációs robbanás

</v-clicks>

<v-click>

Az **MCP** ezt szabványosítja: egy protokoll, bármely eszköz, bármely MI kliens.

</v-click>

---
transition: slide-up
---

# Mi az MCP?

A **Model Context Protocol** egy nyílt szabvány az Anthropic-tól (2024).

<v-clicks>

- **Kliens-szerver protokoll** az MI modellek külső eszközökkel való interakciójához
- Mint az USB-C — egy szabványos csatlakozó sok eszközhöz
- Az MI kliens kéréseket küld; az MCP szerver kezeli őket
- Nyelvfüggetlen — a szerverek bármilyen nyelven írhatók

</v-clicks>

<v-click>

> Az MCP elválasztja, *mit akar tenni az MI*-t attól, *hogyan valósul meg*.

</v-click>

---
transition: slide-up
---

# MCP architektúra

```
┌─────────────────┐         MCP Protocol        ┌──────────────────┐
│   AI Client     │ ◄──────────────────────────► │   MCP Server     │
│ (Claude, etc.)  │                               │ (your tools)     │
└─────────────────┘                               └──────────────────┘
                                                         │
                                              ┌──────────┴──────────┐
                                              │  Files / DB / API   │
                                              └─────────────────────┘
```

<v-clicks>

- **Kliens** — az MI alkalmazás (Claude Desktop, Claude Code, Cursor stb.)
- **Szerver** — eszközöket, erőforrásokat és promptokat tesz elérhetővé MCP-n keresztül
- **Transport** — stdio (helyi) vagy HTTP SSE-vel (távoli)

</v-clicks>

---
transition: slide-up
---

# Mit tesz elérhetővé egy MCP szerver?

Egy MCP szerver három típusú képességet tehet elérhetővé:

<v-clicks>

- **Tools** — függvények, amelyeket az MI hívhat (lekérdezés futtatása, e-mail küldése, fájl létrehozása)
- **Resources** — adatok, amelyeket az MI olvashat (fájltartalom, DB rekordok, API válaszok)
- **Prompts** — előre írt prompt sablonok, amelyeket az MI meghívhat

</v-clicks>

<v-click>

Az MI kliens automatikusan felfedezi az elérhető eszközöket — nincs szükség kemény kódolásra.

</v-click>

---
transition: slide-up
---

# Példa — Fájlrendszer MCP szerver

```json
// Tool definition exposed by the server
{
  "name": "read_file",
  "description": "Read the contents of a file at a given path",
  "inputSchema": {
    "type": "object",
    "properties": {
      "path": { "type": "string" }
    },
    "required": ["path"]
  }
}
```

<v-click>

Az MI látja ezt az eszközt, eldönti, hogy meghívja, elküldi a `{ "path": "/docs/report.pdf" }` paramétert, és visszakapja a fájl tartalmát.

</v-click>

---
transition: slide-up
---

# Népszerű MCP szerverek

<v-clicks>

- **Filesystem** — fájlok olvasása, írása, listázása a gépeden
- **GitHub** — repók keresése, kód olvasása, issue-k és PR-ek kezelése
- **Postgres / SQLite** — adatbázisok lekérdezése természetes nyelven
- **Brave Search** — valós idejű webes keresés
- **Slack** — üzenetek küldése, csatornák olvasása
- **Puppeteer / Playwright** — böngésző vezérlése
- **Memory** — tartós kulcs-érték tár beszélgetések között

</v-clicks>

---
transition: slide-up
---

# Saját MCP szerver építése

Az MCP szerverek egyszerűen építhetők hivatalos SDK-kkal:

```typescript
import { Server } from "@modelcontextprotocol/sdk/server/index.js";

const server = new Server({ name: "my-server", version: "1.0.0" });

server.setRequestHandler(ListToolsRequestSchema, async () => ({
  tools: [{
    name: "get_weather",
    description: "Get current weather for a city",
    inputSchema: { type: "object", properties: { city: { type: "string" } } }
  }]
}));

server.setRequestHandler(CallToolRequestSchema, async (req) => {
  const { city } = req.params.arguments;
  const weather = await fetchWeather(city);
  return { content: [{ type: "text", text: weather }] };
});
```

---
transition: slide-up
---

# MCP konfigurálása Claude Desktop-ban

Add hozzá a szervereket a `claude_desktop_config.json` fájlhoz:

```json
{
  "mcpServers": {
    "filesystem": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-filesystem", "/Users/you/Documents"]
    },
    "github": {
      "command": "npx",
      "args": ["-y", "@modelcontextprotocol/server-github"],
      "env": { "GITHUB_PERSONAL_ACCESS_TOKEN": "your-token" }
    }
  }
}
```

---
transition: fade
layout: center
class: text-center
---

# MCP egy pillantásra

<div class="grid grid-cols-3 gap-6 mt-8">

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🔌</div>
  <div class="font-bold mb-1">Szabványos protokoll</div>
  <div class="text-sm opacity-70">Egy spec, bármely MCP-kompatibilis MI-vel működik</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🛠️</div>
  <div class="font-bold mb-1">Tools + Resources</div>
  <div class="text-sm opacity-70">Műveletek és adatok elérhetővé téve a modell számára</div>
</div>

<div v-click class="border border-blue-300 rounded-xl p-5">
  <div class="text-3xl mb-3">🏗️</div>
  <div class="font-bold mb-1">Építsd meg magad</div>
  <div class="text-sm opacity-70">Hivatalos SDK-k TypeScriptben és Pythonban</div>
</div>

</div>
