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

## 2026-07-09 18:50 — Loop verification for Neo  [DONE 2026-07-09 14:55]
Target agent: Neo
Command: Verify the CEO command loop works end-to-end. As proof, add a comment in MainMenu.gd (e.g. `# CEO loop verification — Neo was here 2026-07-09`), commit, and push.
Priority: normal
Routed: 2026-07-09 14:55 ET → `03_Neo_Code/inbox_from_vp.md`

---
(no commands yet)

## 2026-07-09 15:20 — Repo-init decision: Option B (clone on demand, gitignored)
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
