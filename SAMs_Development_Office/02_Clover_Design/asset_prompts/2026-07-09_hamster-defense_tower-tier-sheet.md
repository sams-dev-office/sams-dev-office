# Asset Prompt — Hamster Defense: Tower Visual Hierarchy Sheet
Date drafted: 2026-07-09 (14:30 ET fire, Clover)
Source direction: morning HANDOFF #2 (WesPlays hierarchy rules — tier via crown/palette, not shape)
Status: DRAFT — awaiting VP approval before any generation

## Target asset
Single PNG sheet:
- 1 base tower ("Seed Cannon") at 3 upgrade tiers — 64×64 per tier cell, 4-frame idle bob + 6-frame fire animation per tier (× 3 tiers = 3 rows)
- Range indicator ring set — 3 sizes matching the 3 tiers, semi-transparent inner fill + solid 1-px pixel outline, 128×128 / 192×192 / 256×256, saved as separate cells on the same sheet
- Silhouette-lock rule: the base tower shape is IDENTICAL across all three tiers — tier is communicated ONLY by (a) a crown/accent element added on top, (b) a palette shift on the accent metal (bronze → silver → gold), and (c) a subtle particle emitter on Tier 3

## Style pin (locked)
- 2D pixel art, hand-placed pixels, NO anti-aliasing, NO dithering
- Locked ~24-color UI-safe palette (shared with the Fortify Etsy UI kit)
- Silhouette must survive being flattened to pure black — no shape change between tiers
- Range rings must remain legible on both overgrown-lawn and midnight-kitchen backgrounds (dual-check)

## Higgsfield model recommendation
- Primary: **Higgsfield generate_image with pixel-art preset** — call `models_explore(action:'recommend')` with goal="64x64 pixel-art tower defense structure, 3-tier upgrade variants, transparent background" before firing.
- Post-process: `remove_background` on each tier cell, then Aseprite palette lint + silhouette-diff QA (Tier 1 vs Tier 2 vs Tier 3 silhouette-only XOR must be near zero).
- Do NOT use image-to-image chaining across tiers — generate the base once, then edit accents by hand (Neo's pipeline) to guarantee silhouette-lock.

## Prompt (positive)
"A 2D pixel art tower defense structure sheet. A stout 'Seed Cannon' tower, cute-hamster-themed, chunky readable silhouette on a 64x64 grid, three upgrade tiers side by side sharing the exact same base silhouette. Tier 1: bronze accent, no crown, plain wooden barrel. Tier 2: silver accent, small silver crown, engraved barrel. Tier 3: gold accent, tall gold crown, filigree barrel, faint sparkle particle above. 4-frame idle bob and 6-frame fire animation per tier laid out in rows. Below the tower rows: three concentric range indicator rings, semi-transparent teal fill with a solid 1-pixel outline, sized small/medium/large. Locked 24-color UI-safe palette. Transparent background. Crisp square pixels, no anti-aliasing, no dithering."

## Negative prompt
"different silhouettes across tiers, changed base shape between tiers, low-contrast tier badges, anti-aliased edges, gradient shading, dithering, >24 colors, painterly brush strokes, 3D render, isometric perspective, drop shadows baked into sprite, non-transparent background, blurred rings, thick multi-pixel ring outlines, ring fills that obscure ground detail, watermark, signature"

## Style refs to attach at generation time
- WesPlays TD hierarchy article (linked from morning `design_links.md`)
- itch.io Sprout Lands pack (palette warmth)
- Any existing Fortify UI kit swatches once available (palette continuity)

## Acceptance checklist
- [ ] Silhouette-XOR between Tier 1 / 2 / 3 ≈ 0 (shape locked)
- [ ] Tier reads instantly from crown + accent metal at 100% zoom
- [ ] Palette lint: ≤24 unique RGB values across all cells
- [ ] Range rings legible on both planned arena backgrounds
- [ ] Transparent alpha, no fringing
- [ ] Fits the Fortify Etsy UI kit format (dual-use internal + marketplace)
