# Asset Prompt — Hamster Survivor: Enemy Silhouette Character Sheet
Date drafted: 2026-07-09 (14:30 ET fire, Clover)
Source direction: morning HANDOFF #1 (enemy silhouette study)
Status: DRAFT — awaiting VP approval before any generation

## Target asset
Character sheet, single PNG:
- 1 swarmer archetype (Tier-1 "Sewer Rat"-style pixel mob) — 32×32, 4-direction idle (4 frames) + walk (6 frames) + 2-frame hit + 2-frame death
- 1 mini-boss archetype (Tier-3 elite, "Weasel Champion") — 48×48, 4-direction idle (4 frames) + walk (6 frames) + telegraphed lunge attack (4 frames) + death (4 frames)
- Laid out as one sheet, rows per state, columns per frame, 1-px transparent gutter between cells

## Style pin (locked)
- 2D pixel art, hand-placed pixels, NO anti-aliasing, NO dithering
- Locked 16-color palette (single palette for the whole enemy set — will be shared with hero sheet later)
- High-contrast rim light on hostile mobs (cool teal/violet rim) so they read against the overgrown-lawn background at 100% zoom on a 1080p viewport
- Silhouette-first: readable as a black shape from 8 tiles away
- Warm approachable base tone (Sprout Lands / Ninja Adventure family)

## Higgsfield model recommendation
- Primary: **Higgsfield generate_image with a pixel-art specialist preset** — call `models_explore(action:'recommend')` at generation time with goal="32x32 pixel-art character sheet, transparent background, 16-color palette" to pick the current best pixel model; fall back to the general SDXL-family pixel LoRA route if no dedicated preset is live.
- Post-process: `remove_background` on the raw sheet output to guarantee true transparent alpha, then manual palette-lock pass in Aseprite (Neo's pipeline).
- Do NOT use photoreal or stylized-3D models — they will not hold the 16-color constraint.

## Prompt (positive)
"A 2D pixel art enemy character sheet for a Vampire-Survivors-style auto-shooter. Swarmer: a hostile 32x32 sewer rat, hunched menacing pose, glowing violet eyes, cool teal rim-light on the silhouette, matte body, four-direction idle and walk frames arranged in rows. Mini-boss: a 48x48 elite weasel champion, tattered leather harness, chipped-tooth snarl, same cool rim-light, lunge attack telegraph frame with a windup crouch. Strict 16-color palette shared across both. Warm approachable base tone in the Sprout Lands / Ninja Adventure family. Transparent background. Crisp square pixels, no anti-aliasing, no dithering. Sprite-sheet layout, 1px transparent gutter between cells."

## Negative prompt
"anti-aliased edges, soft blur, gradient shading, dithering, >16 colors, muddy midtones, painterly brush strokes, 3D render, isometric perspective, drop shadows baked into sprite, JPEG artifacts, watermark, signature, background scenery, non-transparent background, inconsistent pixel grid, sub-pixel details"

## Style refs to attach at generation time
- itch.io Sprout Lands pack (approachability + palette warmth)
- itch.io Ninja Adventure pack (silhouette clarity at 32×32)
- The two morning-log links in `design_links.md` (Hamster Survivor references)

## Acceptance checklist
- [ ] Renders black-shape-readable at 8-tile distance
- [ ] Palette lint: exactly 16 unique RGB values across both characters
- [ ] Transparent alpha, no fringing
- [ ] Hostile rim-light is present on both, muted friendlies rule reserved for hero sheet
- [ ] Fits the Rodent Horde Etsy pack format (reusable — dual-use internal + marketplace)
