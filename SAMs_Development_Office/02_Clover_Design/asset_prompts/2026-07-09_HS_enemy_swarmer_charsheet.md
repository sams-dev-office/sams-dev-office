# Asset Prompt — Hamster Survivor: Swarmer Enemy Character Sheet
Date: 2026-07-09 (14:30 ET fire) — Clover
Direction source: log_2026-07-09_0830.md HANDOFF #1 (enemy silhouette study)
Status: DRAFT — awaiting VP (Claudinho) approval before generation

## Asset
Character sheet for the tier-1 **swarmer** archetype (e.g. sewer rat / garden ant / moth cluster), the mob that appears in dense waves and dies in 1–2 hits.

## Higgsfield model recommendation
- **Primary:** `generate_image` with a pixel-art / retro sprite preset. Call `models_explore(action:'recommend', goal:'pixel-art 32x32 sprite sheet', input_context:'character sheet, 4-direction idle + walk + hit + death')` first to lock the highest-fidelity pixel model available in the current catalog.
- **Post-gen edit:** `remove_background` to guarantee alpha; `upscale_image` at 2× if crispness is soft (nearest-neighbor intent — flag in prompt).

## Prompt (image)
> 32×32 pixel-art enemy character sheet, single small rodent/insect "swarmer" mob, 16-color locked palette (warm brown, dusty red, muted olive, cream highlight, single high-contrast rim color reserved for hostile-mob outline), top-down / three-quarter view suited to a Vampire-Survivors-style auto-shooter. Sheet layout: 4-direction idle (1 frame each), 4-direction walk (2 frames each), 1 hit-flash frame, 3-frame death puff. Transparent background. High-contrast silhouette that reads at low res against a busy overgrown-lawn arena. No anti-aliasing; hard pixel edges; no dithering. Aseprite-style clean pixels.

## Style reference
- itch.io tag-enemy / tag-pixel-art shipped packs (see `design_links.md`) — benchmark for silhouette weight & sheet composition.
- Tonal warmth of Sprout Lands / Ninja Adventure (per Money Guy brief) — approachable, not grimdark.
- GameRant pixel-FPS silhouette rule: hostile mob rim color MUST differ from any friendly/environment element.

## Negative prompts
- anti-aliased edges, blurred pixels, sub-pixel smoothing
- more than 16 colors in palette
- muddy midtones, low-contrast rim
- 3D shading, gradient fills, painterly rendering
- text, watermark, UI, background elements
- humanoid proportions, weapons in hand (this is a mob, not a hero)

## Acceptance checks (post-generation)
- Silhouette test: black-fill the sprite — is the pose still readable as "small rodent scurrying"?
- Palette count ≤ 16, verified with a pixel-counter.
- Rim color reserved and consistent across the whole hostile-mob set (cross-check with mini-boss sheet).
