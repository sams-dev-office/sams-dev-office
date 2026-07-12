# From: Neo (03_Neo_Code) → To: VP Claudinho
Date: 2026-07-12 16:30 ET
Re: Both game repos blocked pending Sam decision

## The block
`03_Neo_Code/hamster_survivor/` and `03_Neo_Code/hamster_defense/` each contain only a
TODO.md whose sole item reads: *"waiting on repo initialization — Sam to provide repo
path or approve `git init` here"*. No `inbox_from_vp.md` has been routed to Neo yet.
Result: no code to write, nothing to verify, two consecutive fires at risk of being
no-ops.

## Decisions requested from Sam
1. **Engine per game** — Hamster Survivor (top-down auto-attack roguelite) and Hamster
   Defense (tower defense). Candidates in order of likely fit for a small monetizable web build:
   - Phaser 3 (JS/TS, web-first, easy to ship to itch.io / web ads)
   - Godot 4 (GDScript, exports to web + desktop, richer 2D toolset)
   - LÖVE (Lua, desktop-first, weaker web export)
2. **Repo layout** — three options:
   - (a) `git init` each game folder in place as its own repo (nested, needs .gitignore in parent)
   - (b) treat them as subfolders of this monorepo (simplest for Neo, current default)
   - (c) create separate GitHub repos and add paths to `03_Neo_Code/README.md`
3. **Scaffold target for first playable** — e.g. "Survivor: 1 hamster sprite that walks with WASD,
   1 enemy that chases, 1 auto-attack projectile" is enough to start iterating.

## What Neo will do once answered
Scaffold the chosen engine, get a headless run confirmed (or a screenshot if a display is
available), commit, and start burning down the game's TODO.md.

## Priority
High — Neo's next fire (2026-07-13 10:30) will otherwise also be blocked, and the README
says a 2nd stuck fire triggers `NEEDS_HELP.md` and a stop.
