# CEO Commands — from Sam to Claudinho

Sam writes new commands at the TOP of this file. Claudinho reads top-down every fire, marks handled ones with `[DONE YYYY-MM-DD HH:MM]`, never deletes them.

Format:
```
## YYYY-MM-DD HH:MM — <one-line summary>
Target agent: <Neo | Clovis | Clover | Money Guy | Marketing Guy | Wise Guy | ALL>
Command: <what to do>
Priority: <low | normal | urgent>
```

---

## 2026-07-09 17:30 — Fix Hamster Defense marketplace thumbnail + cover on Higgsfield  [DONE 2026-07-09 18:00]
Target agent: Clover (Claudinho executed in-session — publish requires generate_image URLs; Chrome extension used to fetch the correct deploy game_id since it differs from the marketplace URL UUID)
Command: Crop the "HAMSTER DEFENSE" title text from Sam's uploaded title-art image and make it suitable for the small 1:1 square icon on the marketplace card. For the 16:9 big rectangle, use the entire image. Push to Higgsfield and verify.
Priority: normal
Result: Both catalog images regenerated via Higgsfield `nano_banana_pro` using Sam's uploaded title art (media `e79aad82-22b8-452e-b4d5-f3d11d6be765`) as reference. 1:1 logo `d0fa72a2-937a-434e-8e51-95f3e5a94dbc`, 16:9 cover `aaddcd6a-23ef-40ab-9aca-54ce387ee696`. `publish_game` succeeded on deploy game_id `b56306e6-8572-457a-9a6c-66b7c66159a4` (the marketplace URL UUID `97853bfc-...` is a DIFFERENT listing id — publish_game rejects it). Verified live: My Games view + `/supercomputer/games` both show the new cover and logo. Full asset prompts + Higgsfield IDs archived at `02_Clover_Design/asset_prompts/2026-07-09_hamster_defense_catalog.md`.

## 2026-07-09 17:00 — Upload full Hamster Defense to GitHub  [DONE 2026-07-09 17:20]
Target agent: Neo (Claudinho ran it in-session — bash sandbox unavailable, so Sam pushed from his own terminal)
Command: Upload full Hamster Defense Higgsfield game bundle to the `sams-dev-office/hamster-defense` repository on GitHub (private). Clovis on standby for any Higgsfield-pipeline questions (none needed).
Priority: normal
Result: Pushed cleanly — 92 objects, 8.88 MiB, `main` tracking `origin/main`. Live at https://github.com/sams-dev-office/hamster-defense.

## 2026-07-09 18:50 — Loop verification for Neo  [DONE 2026-07-09 14:55]
Target agent: Neo
Command: Verify the CEO command loop works end-to-end. As proof, add a comment in MainMenu.gd (e.g. `# CEO loop verification — Neo was here 2026-07-09`), commit, and push.
Priority: normal
Routed: 2026-07-09 14:55 ET → `03_Neo_Code/inbox_from_vp.md`

---
(no commands yet)

## 2026-07-09 15:20 — Repo-init decision: Option B (clone on demand, gitignored)  [DONE 2026-07-09 16:17 — routing only; execution is Neo's]
Routed: 2026-07-09 16:17 ET → `03_Neo_Code/inbox_from_vp.md`
Target agent: Neo
Command: Sam picked Option B from your afternoon-coding blocker log. Execute these steps in one fire:

1. **Clean up the accidentally-committed game code.** The prior loop-verification fire added `03_Neo_Code/hamster_survivor/MainMenu.gd` inside the office repo (commit c7cff9c). Remove it with `git rm -r 03_Neo_Code/hamster_survivor/ 03_Neo_Code/hamster_defense/` (keep the TODO.md files at those paths — move them elsewhere first if you need them). Commit with a clean message.

2. **Update the office `.gitignore`** at the office repo root to exclude these paths so future fires don't re-commit them:
   - `SAMs_Development_Office/03_Neo_Code/hamster_survivor/`
   - `SAMs_Development_Office/03_Neo_Code/hamster_defense/`
   
   Preserve empty directories with `.gitkeep` if needed for the folder to exist for your clone target.

3. **Update your neo-code skill** so at the start of every fire you: (a) check whether `$OFFICE_PATH/03_Neo_Code/<game>/.git` exists; (b) if missing, `git clone https://x-access-token:${OFFICE_PAT}@github.com/sams-dev-office/Hamster-Survivor.git 03_Neo_Code/hamster_survivor` (and same for hamster-defense with branch `master`); (c) `cd 03_Neo_Code/<game> && git pull` if already present. All game commits go to the GAME repo's remote, not the office remote. Note the branch names: Hamster-Survivor uses `master`, hamster-defense uses `main`.

4. **Re-run the loop-verification test end-to-end.** This time the MainMenu.gd `# reviewed by office` comment should land in the actual `sams-dev-office/Hamster-Survivor` repo, on branch `master`, not in the office repo. Push it. Drop a fresh confirmation note in `_meetings/inbox/` addressed to VP with both commit hashes (office cleanup commit + Hamster-Survivor commit).

5. **Update your log** with the resolution — mark the 1630 blocker as resolved and reference this command.
Priority: normal (blocker resolution)
