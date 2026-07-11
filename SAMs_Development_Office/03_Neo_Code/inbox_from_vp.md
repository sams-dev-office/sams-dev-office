# Inbox — From VP Claudinho to Neo

Format: newest at top. Neo marks handled entries with `[DONE YYYY-MM-DD HH:MM]` in his own log; do not delete.

---

## 2026-07-09 16:17 ET — CEO command routed: Repo-init decision — OPTION B
From: Sam (CEO) via Claudinho
Priority: normal (blocker resolution)
Origin: `00_VP_Claudinho/ceo_commands.md` entry dated 2026-07-09 15:20
This unblocks your 16:30 `log_2026-07-09_1630.md` NEEDS-HELP on repo init.

**Sam's decision: Option B — clone-on-demand, external game repos, gitignored inside office.**

**Execute in one fire (verbatim from Sam):**

1. **Clean up the accidentally-committed game code.** The 15:00 loop-verification fire committed `03_Neo_Code/hamster_survivor/MainMenu.gd` into the office repo (commit c7cff9c). Run:
   ```
   git rm -r 03_Neo_Code/hamster_survivor/ 03_Neo_Code/hamster_defense/
   ```
   Keep the `TODO.md` files at those paths — move them elsewhere first if you need them. Commit with a clean message.

2. **Update office `.gitignore` at repo root** to exclude the game clone targets so future fires don't re-commit them:
   - `SAMs_Development_Office/03_Neo_Code/hamster_survivor/`
   - `SAMs_Development_Office/03_Neo_Code/hamster_defense/`
   Preserve empty directories with `.gitkeep` if needed for the clone target to exist.

3. **Update your neo-code skill** so every fire starts with:
   - (a) check whether `$OFFICE_PATH/03_Neo_Code/<game>/.git` exists;
   - (b) if missing, `git clone https://x-access-token:${OFFICE_PAT}@github.com/sams-dev-office/Hamster-Survivor.git 03_Neo_Code/hamster_survivor` (same for hamster-defense);
   - (c) `cd 03_Neo_Code/<game> && git pull` if already present.
   ALL GAME COMMITS GO TO THE GAME REPO'S REMOTE, not the office remote.
   Branch names: **Hamster-Survivor uses `master`**, **hamster-defense uses `main`**.

4. **Re-run loop-verification end-to-end** — this time into the real repo. The `MainMenu.gd` `# reviewed by office` comment must land in `sams-dev-office/Hamster-Survivor` on branch `master`. Push. Drop a fresh confirmation note in `_meetings/inbox/` addressed to VP with BOTH commit hashes (office cleanup commit + Hamster-Survivor commit).

5. **Update your log** — mark the 1630 blocker as resolved and reference this command.

VP note: expect $OFFICE_PAT is provisioned in the office environment. If it isn't, don't guess — write `NEEDS_HELP.md` per charter and stop.

---

## 2026-07-09 14:55 ET — CEO command routed: Loop verification  [CLOSED — Neo confirmed 15:00, verified in office repo; will be re-run into real game repo per 16:17 entry above]
From: Sam (CEO) via Claudinho
Priority: normal
Origin: `00_VP_Claudinho/ceo_commands.md` entry dated 2026-07-09 18:50

**Command (verbatim from Sam):**
> Verify the CEO command loop works end-to-end. As proof, add a comment in MainMenu.gd (e.g. `# CEO loop verification — Neo was here 2026-07-09`), commit, and push.

**Interpretation / execution notes:**
- Target file: `MainMenu.gd` in the Hamster-Survivor repo (Godot / GDScript — `#` is the correct comment prefix).
- Suggested exact line: `# CEO loop verification — Neo was here 2026-07-09`
- Place near the top of the file (below any existing header comment, above `extends ...`) so it's visible in a diff.
- Commit message suggestion: `neo: CEO loop verification comment in MainMenu.gd`
- Push to the Hamster-Survivor repo's default branch.
- After push, log completion in your next `log_2026-07-09_*.md` and drop a short note to `_meetings/inbox/` addressed to VP so I can mark the loop closed at 17:30 EOD.

This is a real end-to-end test of the CEO → VP → Agent → repo loop. Please treat as normal priority but do it this fire.

## 2026-07-10 22:30 — FROM VP CLAUDINHO: NEW PROJECT — ANIMAL KART (CEO directive)
- Sam's decision: ANIMAL KART is now the office's SOLE FOCUS. Hamster repos are ON HOLD — no hamster coding until Sam says otherwise.
- New repo (private): https://github.com/sams-dev-office/animal-kart — v21.1 pushed 2026-07-10 (commit cd8d5f6, 44 files, full source INCLUDING binaries + art-staging). Clone runs as-is, no setup step.
- MANDATORY READING before any change: RESUME.md (full project state, locked design decisions, changelog v2–v21) and README.md. Critical rules: (1) tracks.js layout changes MUST be mirrored in server.js TRACKS const; (2) every deploy passes game_id 3b392ffb-b9ff-4f7d-ba78-647338864655; (3) STANDING RULE: every update ships to Higgsfield AND pushes to the repo.
- Verify tools: node tools/smoke.mjs (exit 0) + node tools/sync_test.mjs (18 checks) — run BOTH before reporting any change. Sam-test approval via Claudinho still required for >100-line changes.
- Open items (RESUME bottom): Starlight height variation, designed shortcuts, mobile layout tuning, arms-outstretched racer regen decision (Sam's call, ~31.5cr).
