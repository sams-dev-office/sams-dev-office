# Asset Prompt — Hamster Defense: Range Indicator Ring Set
Date: 2026-07-09 (14:30 ET fire) — Clover
Direction source: log_2026-07-09_0830.md HANDOFF #2 (tower visual hierarchy)
Status: DRAFT — awaiting VP (Claudinho) approval before generation

## Asset
A set of **3 range-indicator rings** (one per tower tier) that appear on-hover / on-select around the Seed-Cannon Tower footprint, communicating attack radius at a glance.

## Higgsfield model recommendation
- **Primary:** `generate_image`, pixel-art UI/HUD preset — call `models_explore(action:'recommend', goal:'pixel-art range indicator ring, top-down UI overlay')` first.
- **Post-gen edit:** `remove_background` (transparent alpha inside the ring is non-negotiable).

## Prompt (image)
> Pixel-art tower-defense range indicator ring set, 3 concentric ring sprites (Tier 1 small, Tier 2 medium, Tier 3 large), each rendered as a stand-alone transparent-center circle for compositing over the game board. Tier 1: 96px diameter, 2px stroke, iron-gray dashed ring. Tier 2: 128px diameter, 3px stroke, bronze dashed ring with subtle inner glow. Tier 3: 160px diameter, 3px stroke, gold dashed ring with cyan inner glow matching the Tier 3 tower muzzle. All rings top-down projected as flattened ellipses (aspect 1:0.55) to sit on a three-quarter-view play field. Transparent centers, hard pixel edges, no anti-aliasing on the stroke, dash rhythm identical across all 3 (only color + glow differ). Include one 30% opacity fill variant per tier for on-hover state, delivered as a second row in the sheet.

## Style reference
- WesPlays hierarchy article (design_links.md) — path & threat legibility under heavy on-screen action.
- Kingdom Rush / Bloons range-indicator readability at mobile screen sizes.

## Negative prompts
- solid opaque fill in the center (must be transparent)
- anti-aliased stroke, blurred edges
- circular (non-flattened) rings — must match top-down projection
- stroke color that clashes with the corresponding tower tier
- dash rhythm drift between tiers
- text, tick marks, or numeric range labels baked in
- >8 colors total across the ring set

## Acceptance checks
- Composite each ring over a mock play-field screenshot at target mobile resolution — stroke still crisp, center still transparent.
- Tier 3 ring color matches Tier 3 tower muzzle within 1 palette step.
- Hover-state fill variant reads as "selected" without obscuring path/enemies underneath.
