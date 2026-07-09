# Hamster Defense — Higgsfield marketplace catalog assets

**Date:** 2026-07-09 (afternoon fire, ~17:30 ET)
**Requested by:** Sam (CEO), via manual Claudinho fire
**Executed by:** Claudinho (acting for Clover — mechanical publish work, no design research required)

## Ask

Update the Hamster Defense catalog card on the Higgsfield marketplace. Source of truth: an uploaded title-art illustration Sam pasted in chat (warm storybook cartoon, "HAMSTER DEFENSE" title in orange-yellow bubbly cartoon lettering, hamster mascots + pastel garden pests).

- 1:1 small square icon → focus on the title text so it reads at ~48px
- 16:9 big rectangle → full scene from the source

## Source material

- Higgsfield media_id: `e79aad82-22b8-452e-b4d5-f3d11d6be765`
- Uploaded: 2026-07-09 (most recent image in Sam's library at fire time)
- URL: https://d2ol7oe51mr4n9.cloudfront.net/user_3FdxXojtsVCMung7ZFyEMfF9yZw/e79aad82-22b8-452e-b4d5-f3d11d6be765.png

## Generation config

- Model requested: `nano_banana_pro` (best for preserving text integrity per Higgsfield MCP guidance)
- Model actually used (server-mapped): `nano_banana_2`
- Reference role: `image`
- Batch size: 1 per aspect
- Resolution: 1k (server default)

## Prompt — 1:1 logo

Recompose the reference image as a perfectly square 1:1 game logo card for a marketplace thumbnail (visible at ~48px). Preserve the EXACT 'HAMSTER DEFENSE' title text from the reference — thick chunky bubbly cartoon lettering with orange-yellow gradient fill and thick warm brown outlines, stacked on two lines, spelled exactly HAMSTER on top and DEFENSE below. Enlarge the title so it fills roughly the top 45% of the square and reads clearly even at small icon size. Below the title, keep the central smiling hamster mascot holding a large striped sunflower seed with both paws, flanked by two small hamster teammates: the shooter with a wooden peashooter aiming a seed on the left, and the magnifying-glass hamster on the right. Same soft pastel yellow-pink garden background, same warm palette, same thick brown outlines, same soft flat cel shading. Center everything, no borders, no watermark, no extra text besides the title. Style must be identical to the reference.

- Generation id: `d0fa72a2-937a-434e-8e51-95f3e5a94dbc`
- Result URL: https://d8j0ntlcm91z4.cloudfront.net/user_3FdxXojtsVCMung7ZFyEMfF9yZw/hf_20260709_215441_d0fa72a2-937a-434e-8e51-95f3e5a94dbc.png
- Aspect: 1:1 (1024×1024)

## Prompt — 16:9 cover

Reproduce the reference image in 16:9 for a marketplace catalog cover, matching the reference as faithfully as possible. Preserve the 'HAMSTER DEFENSE' title text (thick chunky bubbly cartoon lettering with orange-yellow gradient fill and thick warm brown outlines, two lines stacked, HAMSTER on top and DEFENSE below) centered near the top. Full garden scene: soft yellow-pink pastel background with a wooden fence on the left and a wooden vegetable planter box on the right; small white daisies, clover leaves, and rounded stones scattered on the grass. Center foreground: smiling hamster mascot holding a large striped sunflower seed with both paws. Left: hamster shooter with a small wooden peashooter aiming a seed. Right: hamster examining with a magnifying glass, and further right a hamster carrying a large lettuce leaf. Bottom foreground: four cute pastel-teal cartoon garden pests — a ladybug with round spots, a snail, a small moth with translucent wings, and a rolly-polly bug — all with friendly smiling faces. Thick warm brown outlines, soft flat cel shading, cozy warm palette. No text other than the title, no watermark.

- Generation id: `aaddcd6a-23ef-40ab-9aca-54ce387ee696`
- Result URL: https://d8j0ntlcm91z4.cloudfront.net/user_3FdxXojtsVCMung7ZFyEMfF9yZw/hf_20260709_215446_aaddcd6a-23ef-40ab-9aca-54ce387ee696.png
- Aspect: 16:9 (1376×768)

## Negative prompts / rules

- No text other than the "HAMSTER DEFENSE" title
- No watermark
- No misspelling — must read HAMSTER + DEFENSE exactly
- No neon effects, no drop shadows, no vignettes
- Style consistency with source illustration is non-negotiable (thick warm brown outlines, soft flat cel shading, cozy warm palette)

## Publish

- Tool: `publish_game`
- Deploy game_id: `b56306e6-8572-457a-9a6c-66b7c66159a4` (found via Chrome extension on `higgsfield.ai/supercomputer/games` — this UUID differs from the marketplace listing UUID `97853bfc-aab7-421a-98dd-22e799e5b84a`)
- Result: `{"success": true, "status": "published"}`
- Deployed URL: https://shiny-cafe-676.higgsfield.gg/

## Verification

Loaded `higgsfield.ai/supercomputer/gaming` → My Games via Chrome extension. Hamster Defense card renders with:
- Big rectangle = new 16:9 cover (title + full cast + pests)
- Small square icon = new 1:1 logo (title + central mascot)

Meta og:image on the marketplace listing may lag due to caching (still showed the pre-fire URL immediately after publish); this doesn't affect the actual card render on the site.

## Lessons for future catalog fires

1. `publish_game` needs the DEPLOY game_id, NOT the marketplace URL UUID. Find it at `higgsfield.ai/supercomputer/games/<uuid>` in the developer dashboard.
2. Publish requires `generate_image` CDN URLs; raw uploads via `media_upload` are not accepted as cover/logo.
3. Model gets server-mapped: requesting `nano_banana_pro` produced results tagged `nano_banana_2`.
4. Reference-image workflow (media_id → generate_image with role "image") preserves illustration style well but may drift on exact text glyphs — verify text spelling in the returned image before publishing.
