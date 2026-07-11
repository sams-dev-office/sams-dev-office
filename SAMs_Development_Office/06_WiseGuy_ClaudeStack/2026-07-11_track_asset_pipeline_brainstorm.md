# TRACK ENVIRONMENT ASSET PIPELINE — joint brainstorm (Wise Guy × Claudinho)
*CEO-commissioned 2026-07-11. Goal: entire game reads like the karts/racers — glossy well-rendered 3D vinyl-toy with good light. Publish soon → fast, credit-efficient, REUSABLE across all future tracks. Credits: ~730.*

## The core insight (Claudinho, engineering)
The karts/racers look "well rendered" for TWO reasons: (1) Meshy PBR textures, (2) **scene.environment PMREM reflections** (per-track env from M.lightRigs). The procedural environment already LIVES under the same env — it just uses flat materials that ignore it. So the cheapest 80% of the fix is materials, not new assets.

## Candidate strategies

### S1 — Gloss Material Pass on existing procedural world (0 credits)
Switch env props (kerbs, rails, tire stacks, cones, hay bales, grandstands, billboards, deco rocks/trees, item-box frames, ramps) from flat shading to MeshStandardMaterial: roughness 0.2–0.35, metalness 0, envMapIntensity ≈1.15 (kart value), smooth-shaded normals, subtle clearcoat (MeshPhysicalMaterial) on "plastic" props. Round hard edges where cheap (rounded-box kerbs, torus tires already round). Keep solid colors — the locked style formula survives; gloss+reflections do the "rendered" work.
Effort: 1–2 Neo fires. Consistency: HIGH (identical light response as karts). Risk: minimal; verify mobile perf.

### S2 — Generated Hero-Prop Kit (reusable library, proven kart pipeline)
nano_banana_2 render (~1.5cr) → image_to_3d (30cr) per prop → repack. ONE kit reused across ALL tracks: start-gate arch, finish tower, grandstand facade, big meadow tree, palm, rock formation, tunnel mouth, lamp/flag posts. 
Cost: ~31.5cr/prop → 4 props ≈126cr, 10 props ≈315cr. 
**Payload warning (browser game):** kart-quality repack is ~1.3MB/prop; 10 props ≈ +13MB zip — too heavy. Props get 10k tris + 512px webp → ~0.4MB each. Palette variants via material tint, not re-generation.
Effort: 1 Neo fire per 3–4 props (incl. orientation checks — use EARS-ONLY-style geometry checks, see RESUME v22). Consistency: HIGHEST (same pipeline as karts).

### S3 — Seamless texture micro-pass (tone-on-tone, ~1.5cr each)
nano_banana seamless/tileable prompts ("seamless tileable texture, direct top-down orthographic, flat lighting") for asphalt detail, dirt apron, grass, sand — SUBTLE tone-on-tone only: the locked style formula says solid colors/no textures, so these must whisper, not shout. 3–4 textures ≈ 5–6cr. Needs UVs on road/terrain strips (Neo: UV along path length exists implicitly via strip() — moderate).
Risk: style drift if textures too loud. Gate behind Sam approval of ONE test track.

### S4 — Billboard imposters for foliage/crowd ("sprites", Sam's word)
Vinyl-toy render of tree/bush/crowd-animal on plain bg (1.5cr) → remove_background → textured quad (cross-quads or camera-facing), mid/far distance only. 5–8 sprites ≈ 10–15cr, near-zero perf/payload cost. Instantly "rendered" deco density.
Risk: parallax weirdness up close — keep ≥15u from road.

## Cost / effort / consistency table
| Strategy | Credits | Neo effort | Payload | Consistency w/ karts | Risk |
|---|---|---|---|---|---|
| S1 materials | 0 | 1–2 fires | +0MB | HIGH | low |
| S2 hero kit (4) | ~126 | 1–2 fires | +1.6MB | HIGHEST | orientation/tri budget |
| S2 hero kit (10) | ~315 | 3 fires | +4MB | HIGHEST | payload creep |
| S3 textures | ~6 | 1 fire | +1MB | MED (style-drift risk) | style formula clash |
| S4 imposters | ~15 | 0.5 fire | +0.5MB | HIGH at distance | close-up parallax |

## RECOMMENDED PATH (joint verdict): staged hybrid, evaluate after each phase
- **Phase A (NOW, 0cr):** S1 gloss material pass. Biggest convergence per credit spent — the world starts reflecting the same suns the karts do. Sam test-drives.
- **Phase B (~20cr):** S4 imposters (meadow tree, palm, cactus, bush, 2 crowd animals) + S3-lite ONLY asphalt+dirt subtle detail, one test track, Sam approves before rollout.
- **Phase C (~126cr to start):** S2 hero kit, first 4: start-gate arch, grandstand facade, meadow tree (3D, replaces imposter up close), rock formation. 10k tris/512px budget. Extend to 10 only if Sam wants more after seeing 4.
- Total worst case ≈ 350cr of 730 — leaves headroom for Tank racer (~33cr) + marketing assets.
- Publish gate: after Phase A+B the game is visually coherent enough to publish; C is polish that can land post-publish.

## Community evidence (research, 3 queries)
- Meshy positions exactly our pipeline as the indie standard (game-asset-pipeline repo; "30–50 props in 2h" jam workflow; PBR GLB out). Style consistency comes from style-locked CONCEPT images first (our locked formula does this) — not from the 3D step.
- Three.js glossy-toy look = MeshStandard/Physical + low roughness + PMREM envmap with mipmaps; envmap is REQUIRED for believable gloss (forum consensus). We already own the envmap — S1 is unusually cheap for us.
- nano_banana seamless/tileable texturing is a solved prompt pattern ("seamless tileable texture … orthographic, flat light"), 4K quality; community treats it as the standard cheap texture source.

## Sources
- https://github.com/meshy-dev/game-asset-pipeline
- https://www.meshy.ai/blog/best-ai-tools-for-3d-game-assets
- https://medium.com/illumination/meshy-ai-3d-generator-review-2026-full-production-pipeline-tested-298b006b4a42
- https://pierfrancesco-soffritti.medium.com/glossy-spheres-in-three-js-bfd2785d4857
- https://tympanus.net/codrops/2021/10/27/creating-the-effect-of-transparent-glass-and-plastic-in-three-js/
- https://discourse.threejs.org/t/low-quality-envmap-look-with-roughness/21669
- https://lilys.ai/en/notes/nano-banana-pro-20260114/seamless-pbr-nano-banana-pro
- https://nanoprompts.org/lab/2025/game-asset-design-guide
- https://sider.ai/blog/ai-image/nano-banana-pro-isometric-game-asset-generation-guide
