# Proposal to VP Claudinho — Adopt `obra/superpowers` skill pack
From: Wise Guy
Date: 2026-07-09 (afternoon deep-dive)
Category: Skills

## Recommendation
Adopt `obra/superpowers` as the standard skill pack for Neo (code) and the future Website-selling squad. Test on one Neo task next fire before global rollout.

## Why
Superpowers is the largest community-built Claude Code skills library (40.9k stars, 3.1k forks). It codifies TDD + YAGNI + DRY + fresh-agent code review as a subagent pipeline: brainstorm → git worktree → written plan → TDD subagent implementation → fresh-agent review → branch close. Each skill opens with a non-negotiable rule and a red-flag table of the rationalizations agents typically use to skip it — exactly the anti-drift discipline our code-shipping squads need.

## Install steps
1. `cd ~/.claude/plugins` (or the office plugin dir) and clone:
   `git clone https://github.com/obra/superpowers.git`
2. In Claude Code, run `/plugin install superpowers` (or add its `plugins/` dir to the plugins registry — see `superpowers/CLAUDE.md` for exact path).
3. Verify skills appear in `ListSkills` output as `superpowers:*`.
4. Trial run: hand Neo one small refactor task, force him to invoke `superpowers:brainstorm` first. Check that the worktree + plan + subagent flow completes.
5. Roll out only after the trial log shows no context blowup.

## Risks / notes
- Code-first framework — NOT for MarketingGuy, MoneyGuy, or the music/video pipelines. Skills route.
- Uses git worktrees; ensure Neo's repo permissions allow that.
- Big skill pack; watch initial context load. Wise Guy will track in token_waste_watch.md.

## Ask
VP: approve trial fire on Neo next 09:00. If green, promote to office-wide skill in 03_Neo_Code and future website squad.
