# Murder Mystery Datapack

Ett murder-mystery minigame i minecraft gjort som ett datapack.

## Hur man lägger till en karta

Kartor är data, inte kod. Ingen annan funktion innehåller koordinater, så en ny karta är en ny fil och en rad i en tagg.

### 1. Skapa en fil för kartan

Skapa `data/mm/function/maps/<id>.mcfunction`, där `<id>` är kartans id (små bokstäver, inga mellanslag eller å/ä/ö), till exempel `maps/staden.mcfunction`. Kopiera `maps/fiskeback.mcfunction` och byt ut innehållet. Filen ska bara innehålla ett kommando, på **en enda rad** (en `.mcfunction`-fil kan inte ha kommandon över flera rader):

```
data modify storage mm:maps registry.<id> set value {name: "Visningsnamn", lobby: {x: 0, y: 0, z: 0}, lobby_area: {x: 0, y: 0, z: 0, dx: 0, dy: 0, dz: 0}, area: {x: 0, y: 0, z: 0, dx: 0, dy: 0, dz: 0}, spawns: [{x: 0, y: 0, z: 0}, {x: 0, y: 0, z: 0}]}
```

Id:t i `registry.<id>` måste vara samma som filnamnet.

| Fält | Betydelse |
|------|-----------|
| `name` | Namnet som visas för spelarna. |
| `lobby` | Punkten alla teleporteras till efter spelet. Används också som spawnpoint. |
| `lobby_area` | Lådan där man måste stå för att vara med när spelet startar. |
| `area` | Hela spelområdet. |
| `spawns` | Lista med platser där spelare och guld kan hamna. Lägg till så många du vill, listan kan vara hur lång som helst men inte tom. |

### Koordinater för lådor

`lobby_area` och `area` anges som ett hörn och en storlek:

- `x`, `y`, `z` är hörnet med **lägst** värden på varje axel (minimum).
- `dx`, `dy`, `dz` är **storleken**, alltså `max - min` för varje axel. Det är inte det andra hörnet.
- Heltal gäller hela block: `x: 1003, dx: 7` täcker block 1003 till och med 1010.
- Lobbyn ska ligga i lobby-lådan, och alla `spawns` ska ligga i `area`.

Exempel: för ett område mellan (1003, 109, -495) och (1010, 114, -480) blir det `x: 1003, y: 109, z: -495, dx: 7, dy: 5, dz: 15`.

Platser (`lobby` och `spawns`) är vanliga `{x, y, z}`. Använd t.ex. `1000.5` för att hamna mitt i blocket, eller heltal för hörnet av blocket.

### 2. Registrera kartan

Lägg till kartan i `data/mm/tags/function/register_maps.json`:

```json
{
    "values": [
        "mm:maps/fiskeback",
        "mm:maps/staden"
    ]
}
```

Kartor kan också registreras från ett annat datapack, genom att lägga till sin funktion i samma tagg (`mm:register_maps`).

### 3. Ladda och välj kartan

1. Kör `/reload`.
2. Kontrollera att kartan finns: `/data get storage mm:maps registry.<id>.name`
3. Välj den (inte under pågående spel): `/function mm:select_map {id: "<id>"}`
4. Starta med `/function mm:start`.

### Om något inte fungerar

- **`/data get storage mm:maps registry` är tom:** registreringen kördes inte. Kolla att taggen är giltig JSON och att filens id stämmer. Osynliga mellanslag (non-breaking space) från copy/paste kan göra JSON ogiltig, så skriv in mellanslag för hand om det behövs.
- **Fel vid `/reload` från kartans fil:** kommandot måste ligga på en enda rad, med alla `{`, `}`, `[`, `]` och citattecken matchade.
- **Inget händer vid `reset` i lobbyn:** `mm:game map` är inte satt. Välj en karta med `select_map`.

## Todo

- [x] Guld
  - [x] Får en pil när man har fått 10 guld
  - [x] Kan inte plockas upp av mördaren
  - [x] Spawnas varje 5 (?) sekunder på en av de slumpmässiga platserna
- [x] Game Over
  - [x] När alla innocent har dött
  - [x] När mördaren har dött
- [x] Teleportera spelare till slumpmässiga platser
- [x] Karta
  - [x] Täpp igen alla hål
  - [x] Bygg trappor där det är lämpligt
  - [x] Fler facklor
  - [x] Lägg till fler platser
- [x] Blindness när spelet börjar
- [x] En countdown innan man teleporteras
- [x] Cooldown innan mördaren får sitt svärd
- [x] Detektiv
  - [x] Få pilbåge och en pil när spelet startar
  - [x] Dör om man skjuter någon annan än mördaren
  - [x] Droppar pilbågen om man dör, kan inte plockas upp av mördaren
- [x] Flytta över platserna till den riktiga kartan
- [x] One shot kill
- [x] Lobby
- [x] Timer
- [x] Mördaren har ett one-shot svärd istället och alla har fullt liv
- [x] Inget händer om detektiven dödar en oskyldig
- [x] Pilar ska inte kunna plockas upp igen
