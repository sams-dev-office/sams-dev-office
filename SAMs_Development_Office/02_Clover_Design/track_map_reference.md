# TRACK MAP REFERENCE — kart-racer track design for Animal Kart
*Permanent office reference. Clover, 2026-07-11, CEO-commissioned (Sam). Principles extracted from Mario Kart + Crash Team Racing research. INSPIRATION ONLY — zero IP: no Nintendo/Activision layouts copied, no named tracks recreated, no character/iconography reuse.*

## 1. Why this document exists
Sam supplied two fan-made "track map collection" posters (Euanverse 2018: all 20 SNES Super Mario Kart tracks + all 20 GBA Super Circuit tracks) as the gold standard for how a FAN sees a kart game's tracks at a glance. Future Animal Kart tracks should be designed so that OUR equivalent poster looks this appealing — and future marketing can BE such a poster.

## 2. Anatomy of a fan-style top-down track map (from Sam's examples)
- One square tile per track, uniform size; the track ribbon fills ~85% of the tile.
- Track drawn as a thick readable ribbon with a contrasting border; surface color = biome (tarmac grey, sand tan, ice white-blue, wood brown, rainbow gradient).
- Background of the tile = the biome ground (grass, water, lava, void with stars) — instantly announces the theme before you read a name.
- Hazard/feature dots ON the ribbon (item boxes, obstacles, jumps) — tiny but visible; they give the map "texture of danger".
- Start/finish line always marked (checker or white bar).
- Tracks grouped in rows by CUP, each row color-banded; difficulty rises down the poster (simple ovals+few turns at top → mazes, off-camber chaos, rainbow-void at bottom).
- Every track pairs a NAME with a MASCOT/theme owner — track identity = character + biome + one signature gimmick.
- Palette discipline: each track uses ~4-6 flat colors; the collection reads as a family because road/hazard colors repeat while biome colors rotate.

## 3. Layout archetypes (MK/CTR catalog)
1. OVAL-PLUS — beginner loop with 1-2 pinches (SMK Mario Circuit 1 style). Teaches drift with zero punishment.
2. FIGURE-EIGHT / CROSSOVER — track crosses itself (bridge or flat overlap); big "aha" on the minimap.
3. HAIRPIN LADDER — straights stacked with 180° switchbacks (Bowser Castle style); rhythm = boost, brake, pivot.
4. FLOWING S-RIVER — long sinusoidal esses with no full stop (Sky Garden style); drift-chain heaven — OUR drift-boost chaining loves this.
5. PERIMETER-WITH-GUTS — outer loop with interior detours/shortcuts through the middle.
6. SPIRAL/SNAIL — winds inward or outward (climb or descend); pairs with height variation (our open item).
7. MAZE-PLATE — sharp 90° grid corners on a dark plate (Ghost Valley/Boo Lake); walls/edges ARE the hazard (falloff).
8. POINT-TO-POINT ILLUSION — lap loop staged as a journey (CTR Papu's Pyramid vibe): distinct zones (cave → beach → summit) so one lap feels like 3 places.

## 4. Corner rhythm & flow (theory, from gamedeveloper.com pieces)
- A lap is a SENTENCE: corners are punctuation, straights are breath. Every corner needs a definite entry + exit point players memorize.
- Chain corners so exit line of one feeds entry of the next (flow); a "wrong" exit should cost speed, not stop the kart.
- NEEDLE THREADING: wide inviting entry funneling to one ideal clip point, exit that looks harder than it is → player feels like a pro. Use at least once per track.
- Wider corner = forgiveness; narrow = skill test. Vary width deliberately, don't keep constant (our `width` per control point supports this!).
- At least ONE overtake straight per lap (items + slipstream need runway).
- Difficulty score per corner (angle × narrowness × hazard) → sum = track difficulty → order tracks into cups by that sum.
- 3-zone theming per lap (CTR trick): visually distinct biome sections so lap 3 doesn't feel stale.

## 5. Hazards, items, shortcuts (placement rules)
- Item rows on straights AFTER corner clusters (reward survival, arm before next fight) — matches our `itemRows`.
- Hazards on the INSIDE of optimal lines (make greed risky) or mid-straight as slalom, never blind after a crest.
- SHORTCUTS (CTR doctrine, our open item): every shortcut has a COST — needs boost/jump to enter (fail = off-road slog), saves 1-3s max, visible from main road (advertise it, let players covet it). Types: off-road cut payable by boost; gap jump (hang-time); hidden wall opening (maze plates only).
- Ramps double as shortcut keys and item-dodge moves.

## 6. Cup/difficulty + palette structure for ANIMAL KART
Current 4 tracks (Meadow Loop, Sunny Shores, Canyon Mine, Starlight Heights) already ladder biome + light rig. For future tracks keep the formula: 1 cup = 4 tracks = green/easy → sand/tech → hazard/industrial → night/void-spectacle. Palette-per-biome from the locked STYLE FORMULA (meadow greens, warm sands, cool stone greys, charcoal roads); void/night tracks get saturated accent glow. Each new track gets: 1 signature gimmick, 1 mascot association (our racers), 1 needle-thread corner, 1 advertised shortcut, 1 overtake straight.

## 7. Link library (map collections + design reading)
### Top-down map collections (fan-style reference)
- [VGMaps.de — Mario Kart: Super Circuit full map set](https://vgmaps.de/maps/gba/mario-kart-super-circuit.php) — every GBA track as clean top-down; the layout encyclopedia.
- [VGMaps forum — MKSC map thread (CLon)](https://www.vgmaps.com/forums/index.php?topic=4010.0) — ripping/composition notes behind the maps.
- [MarioUniverse — SNES Super Mario Kart maps](https://www.mariouniverse.com/maps-snes-smk/) — the 20 SNES originals; purest "flat plate" archetypes.
- [MarioUniverse — GBA MKSC maps](https://www.mariouniverse.com/maps-gba-mksc/) — mirror source for the GBA set.
- [VGCartography (DeviantArt) — CTR Nitro Cup track maps](https://www.deviantart.com/vgcartography/art/Crash-Team-Racing-Nitro-Cup-Track-Maps-1156490060) — gorgeous labeled top-downs of CTR; the 3-zone theming is visible per map.
- [VGCartography (DeviantArt) — CTR Extra track maps](https://www.deviantart.com/vgcartography/art/Crash-Team-Racing-Extra-Track-Maps-925498596) — more CTR plates incl. arenas.
- [PowerPyx — CTR Nitro-Fueled all 44 tracks](https://www.powerpyx.com/crash-team-racing-nitro-fueled-all-race-tracks/) — one picture per track, fast browsing.
- [GamesAtlas — CTR tracks database](https://www.gamesatlas.com/crash-team-racing/tracks/) — shortcuts + screenshots per track.
- [StrategyWiki — CTR tracks](https://strategywiki.org/wiki/Crash_Team_Racing/Tracks) — per-track guide incl. shortcut costs.
- Sam's supplied posters: Euanverse 2018 SMK + MKSC collections (in chat 2026-07-11; pixel poster format = our marketing target format).
### Design theory
- [Gamedeveloper — A Rational Approach To Racing Game Track Design](https://www.gamedeveloper.com/design/a-rational-approach-to-racing-game-track-design) — corner anatomy, difficulty scoring, entry/exit punctuation.
- [Gamedeveloper — Fundamentals of Arcade-Style Racing Track Design](https://www.gamedeveloper.com/design/feature-the-fundamentals-of-arcade-style-racing-track-design) — needle threading, width-as-forgiveness, arcade vs sim.
- [Gamedeveloper — Super Mario Kart at 25: dissecting a revolutionary design](https://www.gamedeveloper.com/design/-i-super-mario-kart-i-at-25-dissecting-a-revolutionary-game-design) — why the SNES flat-plate constraint produced timeless layouts.
- [Magnopus — The art of designing a memorable race track](https://www.magnopus.com/blog/the-art-of-designing-a-memorable-race-track) — memorability = landmark + rhythm + risk.
- [Level Design Book — Flow](https://book.leveldesignbook.com/process/layout/flow) — general flow theory, applies to corner chaining.
- [Kardino (YouTube) — An Analysis of Mario Kart's Track Design](https://www.youtube.com/watch?v=tHQhQWxYfRw) — video essay; cup difficulty curves.
- [Mario Kart Racing Wiki — Tracks overview](https://mariokart.fandom.com/wiki/Tracks) — cup structure conventions across all generations.

## 8. Direct application to our codebase
- `assets/tracks.js`: control points + per-point `width` → implement width variation (rule 4); `itemRows` → placement rule 5; features → hazards/ramps per archetype.
- REMEMBER the sync rule: any layout change must be mirrored into `server.js` TRACKS const.
- Lobby vote cards + minimap already draw from tracks.js — new tracks automatically get their "fan map" tile; design layouts that READ well as a 140px minimap (test: silhouette recognizable at thumbnail size — the Euanverse posters prove good layouts survive tiny scale).
- Open items this unlocks: height variation (archetype 6), designed shortcuts (rule 5), a 2nd cup of 4 tracks (section 6 formula).
