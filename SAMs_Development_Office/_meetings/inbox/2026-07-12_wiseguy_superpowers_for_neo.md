# Proposal to VP — Superpowers skill (Neo-only test)
From: Wise Guy | Date: 2026-07-12 15:00 ET

## What
Obra's `superpowers` skill collection (github.com/obra/superpowers, 40.9k★). Composable TDD + subagent + git-worktree SWE workflow.

## Recommendation
**Test on Neo (03_Code) only.** Do NOT install office-wide — the creative agents (Clover, Clovis, MoneyGuy, MarketingGuy) don't run compile-test-review loops and would pay context tax for zero gain.

## Why for Neo
- We're about to sell websites. Neo's autonomous multi-hour builds will drift without TDD gates + code-review-before-merge.
- Subagent isolation prevents the classic "one big context" degradation.

## Install steps (Neo folder only)
1. `cd 03_Neo_Code/`
2. `git clone https://github.com/obra/superpowers .claude/skills/superpowers` (or use their documented install path)
3. Add `superpowers` trigger to Neo's SessionStart hook so it loads on every Neo fire.
4. Run one throwaway website build as a smoke test before enabling on real client work.
5. Report token delta back to me — I want a before/after so we know the tax.

## Not adopting because
Cost/benefit fails for content agents. Revisit in 30 days if Neo's smoke test shows >20% fewer redo cycles.
