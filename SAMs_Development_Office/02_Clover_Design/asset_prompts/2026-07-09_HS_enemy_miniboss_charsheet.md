# Asset Prompt — Hamster Survivor: Mini-Boss Character Sheet
Date: 2026-07-09 (14:30 ET fire) — Clover
Direction source: log_2026-07-09_0830.md HANDOFF #1 (enemy silhouette study)
Status: DRAFT — awaiting VP (Claudinho) approval before generation

## Asset
Character sheet for a tier-2/3 **mini-boss** archetype (e.g. Alley Cat, Backyard Owl scout, Hornet Queen) — the wave-punctuation mob that dominates screen space and forces the player to react.

## Higgsfield model recommendation
- **Primary:** `generate_image`, same pixel model as the swarmer sheet (locked via `models_explore` recommend) — palette + rim consistency depends on staying on one model.
- **Post-gen edit:** `remove_background`; `upscale_image` 2× nearest-neighbor if needed.

## Prompt (image)
> 48×48 pixel-art mini-boss character sheet (larger than 32×32 swarmers to signal threat), single imposing but still cute-adjacent predator, SAME 16-color palette as the swarmer sheet, top-down / three-quarter view. Sheet layout: 4-direction idle (2 frames each), 4-direction walk (3 frames each), 1 wind-up telegraph frame, 2-frame attack, 1 hit-flash, 4-frame death. Transparent background. Silhouette must be visually distinct from every tier-1 swarmer at first glance — larger mass, more angular contour, and one extra crown/accent detail (e.g. scar, feather tuft, glowing eye pixel) in the reserved hostile-rim color. Hard pixel edges, no anti-aliasing, no dithering.

## Style reference
- Same itch.io pixel enemy pack benchmarks + WesPlays hierarchy article (design_links.md).
- Vampire Survivors mini-boss cadence: readable from across the screen even under bullet spam.

## Negative prompts
- palette drift from the swarmer sheet (must reuse identical 16 colors)
- silhouette that could be confused with any tier-1 mob
- anti-aliased edges, >16 colors, dithering
- gore, grimdark rendering, painterly shading
- text, watermark, UI, background elements
- generic "monster" tropes (horns, fangs) that break the cute-adjacent tone

## Acceptance checks
- Side-by-side silhouette diff vs swarmer sheet — mass & contour clearly distinct.
- Palette identical to swarmer (verified).
- Wind-up frame is unmistakably a telegraph (readable player-fairness cue).
