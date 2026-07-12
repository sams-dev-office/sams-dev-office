# Asset Prompt — Hamster Defense: Tower with 3 Upgrade Tiers
Date: 2026-07-09 (14:30 ET fire) — Clover
Direction source: log_2026-07-09_0830.md HANDOFF #2 (tower visual hierarchy, WesPlays rules)
Status: DRAFT — awaiting VP (Claudinho) approval before generation

## Asset
Single **base tower** (proposed archetype: **Seed-Cannon Tower** — thematic fit for hamster IP) with **3 upgrade tiers**, presented as a 4-cell sprite sheet: Base → Tier 1 → Tier 2 → Tier 3.

## Higgsfield model recommendation
- **Primary:** `generate_image`, pixel-art tower/isometric preset — call `models_explore(action:'recommend', goal:'pixel-art tower defense tower with upgrade tiers', input_context:'4-cell sheet, silhouette-preserving upgrades')` to confirm best model.
- **Post-gen edit:** `remove_background`; consider `outpaint_image` only if the range-indicator ring set (separate prompt file) needs to sit around the tower footprint.

## Prompt (image)
> Pixel-art tower defense tower, 4-cell horizontal sprite sheet showing base + 3 upgrade tiers, three-quarter top-down perspective, tower footprint 48×48, full sprite 64×96. Hamster-themed "Seed-Cannon Tower" — a wooden platform with a seed-firing muzzle, staffed by a tiny hamster gunner. Apply strict visual-hierarchy rules: **the base silhouette is preserved across all 4 tiers** (identical outline outside the crown/accent zone). Tier progression is communicated by (a) a **crown / accent element** growing on top (Tier 1: brass rivets, Tier 2: bronze filigree, Tier 3: gold laurel + gemstone), and (b) a **palette shift** on the muzzle & platform trim (Tier 1: iron gray, Tier 2: burnished bronze, Tier 3: gold + cyan energy glow). Keep body wood tones constant across tiers so silhouette parity is unmistakable. 24-color limited palette, hard pixel edges, no dithering, transparent background.

## Style reference
- WesPlays "From Chaos to Clarity: Visual Hierarchy in Tower Defense Design" (design_links.md) — the north star for this asset.
- Kingdom Rush tower-tier readability: same base, escalating crown & material.

## Negative prompts
- silhouette changes between tiers (Tier 3 must not have a different outline than Base)
- tier communicated by size scaling alone
- low-contrast tier badges / accents that fail at thumbnail size
- >24 colors, anti-aliased edges, dithering, painterly rendering
- realistic 3D shading, gradient fills
- text labels ("T1", "T2", "T3") baked into the sprite
- UI chrome, backdrop, or environment tiles in the frame
- gore, grimdark, out-of-tone-with-hamster-IP aesthetics

## Acceptance checks
- Overlay Tier 3 on Base — outline outside the crown zone should be pixel-identical.
- Palette-shift is visible even at 50% zoom (thumbnail legibility).
- Crown accents alone can be read to identify tier without color (accessibility check).
- Cohesive with the range-indicator ring set (see companion prompt).
