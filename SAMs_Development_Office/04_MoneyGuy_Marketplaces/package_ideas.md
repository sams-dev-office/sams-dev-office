# Package Ideas — Money Guy
Format:
## <pack name>
- Buyer: <profile>
- Contents: <list>
- Competing packs + prices: <links>
- Effort: <low | medium | high>
- Projected revenue range: <$>
- Status: <proposed | approved | in-production | shipped>
---

## Hamster Survivor Starter Kit — Pixel Art (32x32)
- Buyer: solo/indie devs cloning Vampire Survivors / Brotato in Unity, GameMaker, Godot; content creators making devlogs
- Contents: 6 hamster hero variants (idle+run 4-dir), 20 enemy sprites (rats, snakes, hawks, cats — 3 tiers each), 4 boss sheets, 40+ weapon/pickup icons, 25 damage-number/hit-spark FX, 2 arena backgrounds (grass, kitchen), .png + Unity/Godot import guides
- Competing packs + prices:
  - Survivors RPG Starter Pack (seartsy) — https://seartsy.itch.io/survivors-starter-pack — ~$15
  - Spells 'n Weapons Brotato/Vamp Survivors Skeleton (NjitRam) — https://njitram.itch.io/spells-n-weapons — ~$10–15
  - Roguelite Survivor Free Pack (DyLESTorm) — free (serves as funnel)
- Effort: MEDIUM — leverages internal `hamster_survivor` workstream; Higgsfield generate_image + spritesheet pipeline
- Projected revenue range: **$1.2k–4k / 6 months** at $12–18 across itch.io + Gumroad + Unity Asset Store; higher if Etsy listing added
- Status: proposed → recommended TOP PICK

## Modular 16x16 Cozy Interiors Expansion Pack
- Buyer: RPG Maker / Godot / Unity 2D devs building cozy sims, dating sims, slice-of-life JRPGs — the "Modern Interiors / Sprout Lands" crowd
- Contents: 600+ 16x16 tiles (kitchens, bathrooms, offices, cafes), 20 animated furniture props (fans, TVs, aquariums), 12 NPC character sheets (4-dir walk), autotile setup for RPG Maker MZ
- Competing packs + prices: Modern Interiors — RPG Tileset [16x16] (LimeZu, itch.io) ~$25–35; Sprout Lands ~$10 base + expansions
- Effort: HIGH — 16x16 pixel-perfect QA is labor intensive; needs Clover human-in-loop
- Projected revenue range: **$800–3k / 6 months** at $15–25; category is crowded but evergreen
- Status: proposed

## Pixel FX + Damage Numbers Mega Pack
- Buyer: any 2D action/roguelike dev — universally needed, low style-lock-in
- Contents: 120 animated FX (hit sparks, explosions, magic circles, level-ups, dust puffs), animated damage-number font (0–999), 20 status-effect icons, sprite-sheet + individual PNG + Aseprite source
- Competing packs + prices: recurring "Ultimate pixel art effects" packs in itch.io new+popular ($8–15)
- Effort: LOW-MEDIUM — small canvas, high volume, ideal for Higgsfield batch generation
- Projected revenue range: **$600–2k / 6 months** at $8–12; strong bundle-attach potential
- Status: proposed

## Top-Down RPG Enemy Bestiary Vol. 1 — Fantasy
- Buyer: Unity Asset Store buyers building top-down ARPGs / Diablo-likes / bullet-heavens
- Contents: 40 enemy sprites (goblins, slimes, undead, elementals — 4-dir idle/walk/attack/death), 6 boss sheets, portrait art for each
- Competing packs + prices: Pixel Art Top-Down RPG Enemies (Pixogen, Unity) ~$20; Unity top-paid list features similar bestiary packs
- Effort: MEDIUM
- Projected revenue range: **$700–2.5k / 6 months** at $18–25 on Unity Asset Store (highest ARPU of the marketplaces)
- Status: proposed

---

# === 2026-07-12 15:30 ET afternoon fire additions ===
Context: Clover surfaced two new adjacent packs (Rodent Horde enemies, Fortify TD UI). Combining them with Money Guy's marketplace lens produces two new proposals + a fallback pick because the 07-09 top pick (Hamster Survivor Starter Kit) is still stalled in Clover's inbox.

## Hamster Defense — Tower Defense Marketplace Kit
- Buyer: mobile + PC tower-defense devs on Unity/Godot; secondary buyers = Unity Asset Store TD-template shoppers who want a drop-in art layer
- Contents: 8 tower archetypes × 3 upgrade tiers (24 sprites, animated idle + fire), 12 enemy waves (creep/tank/dasher/flyer × archetype variants), Fortify UI kit merged in (radial upgrade menu, HP/threat bars, wave banners, 8 damage-type icons, range rings — 9-slice), 2 map tilesets (yard, kitchen counter), light + dark palette variants
- Competing packs + prices: TD UI kits on itch.io / Unity Asset Store $10–25 (Clover signal); full TD art+UI bundles on Unity Asset Store $25–60; underserved on "hierarchy-first" style (WesPlays gap)
- Effort: MEDIUM-HIGH — Fortify UI kit already scoped by Clover; enemy silhouette rules reusable from Rodent Horde; tower upgrade-tier system needs Neo pipeline
- Projected revenue range: **$1k–3.5k / 6 months** at $19–29 (bundle) or $12 UI-only + $18 art-only split; Unity Asset Store is highest ARPU
- Status: proposed → **TOP PICK for this fire** (compounds with internal `hamster_defense`; Fortify UI kit is Clover-approved direction so no design blocker)

## Rodent Horde — Standalone Pixel Enemy Pack
- Buyer: any VS-clone / bullet-heaven dev who does NOT want a full themed kit — just the enemies. Lower price-point funnel SKU that upsells into Hamster Survivor Starter Kit.
- Contents: 24 32×32 enemy sprites (6 archetypes × 4 variants), 4-frame walk + 2-frame hit, 2 boss sheets (64×64), single locked 16-color palette + palette-swap alt (desert, night)
- Competing packs + prices: itch.io tag-enemy pixel packs $5–15; palette-locked premium $20+
- Effort: LOW-MEDIUM — Clover already owns the palette + silhouette spec; batch-generatable via Higgsfield
- Projected revenue range: **$500–1.8k / 6 months** at $8–12; strong bundle-attach — every buyer of this pack is a warm lead for the Hamster Survivor Starter Kit at $15
- Status: proposed → FALLBACK if Clover's Hamster Survivor prompts stay stalled past 2026-07-13; Rodent Horde ships without waiting on hero/boss/FX approval

## Devlog Case-Study Pack (info-product, not art)
- Buyer: aspiring indie devs / marketplace sellers who want "how we shipped and sold a $15 pack in a week" playbook
- Contents: 30-page PDF, screenshot walkthrough of listing setup (itch.io + Gumroad + Unity), pricing worksheet, Aseprite palette template, launch-week checklist. Sold on Gumroad.
- Competing packs + prices: indie-dev playbooks on Gumroad $15–49; ChrisZukowski-style courses $99+
- Effort: LOW — repurposes Marketing Guy's devlog artifact + our own package_ideas doc; near-zero incremental asset cost
- Projected revenue range: **$300–1.2k / 6 months** at $19–29; low ceiling but zero blocker on Clover/Neo
- Status: proposed — Marketing Guy owns funnel, Money Guy owns SKU
