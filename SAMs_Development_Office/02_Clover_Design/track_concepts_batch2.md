# ANIMAL KART — TRACK BATCH 2: five original concepts (CEO-commissioned)
*Clover, 2026-07-11. Method: top-5 most-loved kart tracks researched → extract WHY loved (principle, never layout) → design something DIFFERENT on that principle. Zero IP. All decoration = existing procedural prop set (post Phase-A gloss). One winter track per Sam. Existing tracks: Meadow Loop (meadow noon), Sunny Shores (shores golden hour), Canyon Mine (canyon dusk), Starlight Heights (starlight moonlit).*

## The top-5 most-loved pool (research)
1. **Mount Wario (MK8)** — loved for VARIETY: a point-to-point journey through distinct zones; no two corners feel alike.
2. **Baby Park (GCN)** — loved for CHAOS DENSITY: tiny oval, everyone within item range forever, drift skill = everything.
3. **Coconut Mall (Wii)** — loved for PLACE-NESS: the track is a real location with route options and playful furniture.
4. **Rainbow Road (every gen)** — loved for SPECTACLE + RISK: beauty you can fall off of. (Our Starlight Heights already owns this slot — not reused.)
5. **Polar Pass (CTR)** — loved for WINTER ATMOSPHERE + shortcut gamble; also Waluigi Pinball's "you are tiny inside a big machine" novelty scale, and Yoshi Valley's route choice.

## Track 1 — WHISKER SPEEDROME  (difficulty slot 1 — the chaos starter)
- Inspiration principle: Baby Park (chaos density). Ours differs: FIGURE-EIGHT with a bridge crossover, not an oval — the map reads as a bow-tie ribbon.
- Theme: toy stadium at floodlit evening. Palette: cream track border, charcoal road, confetti accents (racer signature colors). lightRig: "stadium dusk" — warm white key + cool rim, high ambient.
- Layout: ~12 control points, crossover at center (flat overlap, bridge visual). Corner rhythm: two long banked 180s + two esses into the cross. Width: generous 13-14 everywhere (forgiveness track).
- Gimmick: everyone is ALWAYS in item range; itemRows doubled on both straights.
- Shortcut: none — advertised in strings as "No shortcuts. No mercy."
- Decoration: grandstands on ALL four sides (crowd heads dense), billboards between stands, tire-stack barriers in racer colors at the cross, cone slalom on infield edges, flags.
## Track 2 — BRAMBLE RUSH  (slot 2 — jungle flow)
- Inspiration principle: Yoshi Valley (route choice). Ours differs: ONE pseudo-fork — the road splits WIDE around a giant tree island and remerges (same checkpoint, so no cp-system surgery for Neo; inner line shorter but mud-lined, outer line clean but longer).
- Theme: rainforest morning. Palette: deep greens, mossy greys, muddy browns, toucan-orange accents on billboards. lightRig: "jungle morning" — green-gold sun shafts, soft haze.
- Layout: ~18 control points. Corner rhythm: S-river esses (drift-chain heaven) → fork → hairpin under canopy → launch ramp over a mud pool.
- Gimmick: mud pools as off-road patches INSIDE corner apexes (greed punisher, rule 5 of the reference).
- Shortcut: log-ramp over the waterfall pool — needs tier-2 drift boost to clear; short landing, fence-lined.
- Decoration: dense trees (big scale range), mossy rocks, vine-look fences, hay bales retinted moss-green as soft barriers, wooden-post billboards.
## Track 3 — FROSTFANG PASS  (slot 3 — Sam's winter track)
- Inspiration principle: Mount Wario (journey variety) × Polar Pass (winter mood + shortcut gamble). Ours differs: a LOOP that fakes a descent journey — three visually distinct zones per lap: glacier ridge → frozen pine forest → cozy lodge village straight.
- Theme: alpine winter. Palette: snow whites, ice blues, dark pine greens, warm amber lodge lights (billboards + grandstand roofs). lightRig: "snowfield noon" — pale cold sun, high ambient, blue shadows; falling-snow particles if cheap (Neo call).
- Layout: ~20 control points. Corner rhythm: sweeping ridge curves (wide 14) → tightening forest esses (narrow 10, tree gates) → village hairpin → long finish straight (overtake runway).
- Gimmick: ICE PATCHES on the ridge zone — low-grip decals where steering smears (client-side physics flag, own-kart only, needs Neo feasibility check; fallback = visual snow drifts as off-road).
- Shortcut: frozen pond cut in the forest — advertised by a broken fence gap; costs a boost (deep-snow slog if entered slow), saves ~2s.
- Decoration: snow-tinted pines, white-tinted hay bales as snow banks, rocks with white caps, lodge-style grandstand, ski-flag cone gates, icicle-trim billboards.
## Track 4 — PINWHEEL BAY  (slot 4 — the place-track)
- Inspiration principle: Coconut Mall / Waluigi Pinball (the track IS a place; playful furniture). Ours differs: an original seaside CARNIVAL BOARDWALK at twilight — no interior, no escalators; the "machine" feeling comes from racing between fairground structures.
- Theme: carnival pier at dusk (warm — deliberately opposite of Starlight's cold void night). Palette: weathered boardwalk browns, candy-stripe cream/coral tents, string-light ambers, deep twilight sea. lightRig: "pier twilight" — low warm sun + bulb-glow ambient.
- Layout: ~17 control points. Corner rhythm: pier perimeter sweeps → tight tent slalom (needle-thread corner of the batch) → hairpin around the ferris wheel base → gap-jump between two piers.
- Gimmick: TIRE-PINBALL cluster mid-straight — bouncy tire stacks arranged as a slalom (existing collision push), plus the pier gap-jump ramp.
- Shortcut: under-pier service lane — enter via small ramp behind a tent, dark + narrow, saves ~1.5s, wall-hit risk wipes reserves.
- Decoration: ferris-wheel SILHOUETTE built from torus + spokes + gondola boxes (procedural hero deco — 0 credits), striped tents from scaled cones, string-light fences (emissive dots), grandstands as pier pavilions, seagull-white flags.
## Track 5 — EMBER FOUNDRY  (slot 5 — the skill wall)
- Inspiration principle: Bowser's Castle / Airship Fortress (hazard fortress drama). Ours differs: an industrial VOLCANO FORGE — girder bridges over glow, no castle, no boss iconography.
- Theme: lava forge night. Palette: charcoal iron, ember oranges (emissive lava aprons), soot greys, hazard-yellow markings (style formula's warning yellow). lightRig: "forge night" — dim cool key + strong orange bounce from below.
- Layout: ~19 control points. Corner rhythm: narrow girder straights (width 9!) → 90° iron switchbacks → wide foundry floor with hazard slalom → double-ramp chain over a lava gap (commit or fall).
- Gimmick: FALLOFF edges on the girder section (Starlight-style reset), lava glow = the danger telegraph.
- Shortcut: maintenance girder — straight-lines two switchbacks; entry ramp needs tier-3 drift boost; falloff both sides (highest risk/reward in the game).
- Decoration: iron-girder fences, tire stacks in soot black + hazard yellow, cones as warning posts, billboard frames as factory signage, rock piles as slag heaps, crane silhouettes from box primitives.

## Batch notes for Neo (when Sam approves)
- tracks.js layout changes MUST mirror into server.js TRACKS (pts/width/itemRows).
- New lightRigs entries: stadium dusk, jungle morning, snowfield noon, pier twilight, forge night.
- Engine feasibility checks: ice-patch grip flag (client-only), pseudo-fork wide-split (same cp), emissive lava apron material, string-light emissive dots. All have safe fallbacks noted above.
- Minimap test per reference doc: each layout must read at 140px (bow-tie, fork-eye, three-zone loop, pier comb, girder zigzag are all distinct silhouettes).

## Sources
- https://www.gamespot.com/gallery/best-mario-kart-tracks-courses-of-all-time/2900-4282/
- https://gamerant.com/best-mario-kart-tracks/
- https://www.denofgeek.com/games/best-mario-kart-tracks-ever-all-time/
- https://thenerdstash.com/top-10-best-mario-kart-tracks-of-all-time-ranked/
- https://culturedvultures.com/12-best-crash-team-racing-nitro-fueled-tracks/
- https://dustspeckintheuniverse.home.blog/2020/09/21/ranking-every-ctr-track-from-woah-st-to-best/
