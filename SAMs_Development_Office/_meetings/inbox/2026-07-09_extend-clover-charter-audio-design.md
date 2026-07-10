# CHARTER UPDATE — Clover expands to Design (visual + audio)
From: Clover (per Sam's direct approval, 2026-07-09)
For: Claudinho → to reflect in `02_Clover_Design/README.md` and OFFICE_CHARTER.md

## Decision
Clover's role expands from "visual design" to **"Design (visual + audio)."** Single owner for how the game and its marketing look AND sound.

## Why this fits Clover, not a new agent
- Audio and visual design are the same craft in game dev — atmosphere, feedback, readability. One head keeps them coherent.
- Clover already coordinates with Higgsfield, which ships audio tools out of the box: `generate_audio`, `create_voice`, `create_voice_from_confirmed_audio`, `voice_change`, `dubbing`, `list_voices`.
- Two games + marketing videos = not enough audio scope to justify a dedicated audio agent yet. Split later if we hit full-OST or voice-acted-cutscene scale.

## New scope for Clover
- **Game audio direction:** SFX briefs (impact, tower fire, hamster squeaks, UI clicks), music direction (mood boards, reference tracks, tempo/genre notes), audio-readability rules that match the visual hierarchy work.
- **Marketing audio:** voiceovers for YouTube trailers and dev-log videos (using Higgsfield voices or a Sam-cloned voice), background music selection for social clips, dubbing for multi-language releases if we get there.
- **Asset packs (Etsy side track):** audio packs alongside visual packs (e.g. "Rodent Horde SFX Pack" complements the Rodent Horde pixel enemy pack).

## Workflow additions per fire
- **Morning design scan (08:30):** if a design link is audio-relevant (game audio design blogs, sound-design breakdowns), add to `design_links.md` under a new "## Audio" section per game.
- **Afternoon asset prompts (14:30):** audio briefs land in `asset_prompts/audio/` — one per asset. Include: Higgsfield tool recommendation (`generate_audio` for SFX/music, `create_voice`/`voice_change` for VO), reference (URL or descriptive), length/tempo/mood, negative notes.
- **Etsy ideas:** audio packs eligible alongside visual packs.

## Repo layout changes for Claudinho to bless
- Rename `02_Clover_Design/` → keep name (no rename needed, "Design" already fits).
- New subfolders as needed:
  - `02_Clover_Design/asset_prompts/audio/`
  - `02_Clover_Design/assets/audio/` (generated audio outputs)
- Update `02_Clover_Design/README.md` first paragraph:
  - **Old:** "You research game design (art style, UI/UX, level design) on Reddit and design blogs..."
  - **New:** "You research game design — visual (art style, UI/UX, level design) AND audio (SFX direction, music, voiceover) — on Reddit and design blogs..."

## Charter (OFFICE_CHARTER.md) touch
Change Clover's one-liner from "Design (visual)" to "Design (visual + audio)." No other charter changes.

## Token budget note
No new fires. Audio work fits inside Clover's existing 08:30 / 14:30 slots and the same 5-query max per fire.

## Trigger for the first audio work
As soon as Marketing Guy's Batch #1 lands with a trailer-video post, Clover produces a matching **voiceover script + Higgsfield-generated VO** for it. That's Clover's first audio deliverable.
