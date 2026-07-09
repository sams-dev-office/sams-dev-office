# Setup — SAM's Development Office

## Step 1 — Unzip
Unzip the delivered archive so the tree lives at:
`C:\Users\user\Documents\SAMs_Development_Office\`
(this path is already your Cowork files default, so scheduled agent fires will land here automatically)

## Step 2 — Confirm to Claudinho
Reply "office planted" in chat. Claudinho will then register 15 scheduled tasks (3 for himself, 2 for each other agent) via the trigger system.

## Step 3 — First run
The next scheduled fire triggers automatically. If you want to see it work sooner, tell Claudinho "fire a test run of Wise Guy now" and he'll do it manually.

## Step 4 — Trigger registry
After tasks are registered, Claudinho writes their IDs into `00_VP_Claudinho/trigger_registry.md` so manual fires work.

## Schedule reference (America/New_York)
```
07:30  Claudinho   morning sweep
08:00  Clovis      genre research
08:30  Clover      design research
09:00  Wise Guy    Claude stack
09:30  Money Guy   marketplace demand
10:00  Marketing   channels & traffic
10:30  Neo         morning coding
12:00  Claudinho   midday check-in
14:00  Clovis      afternoon: react to inbox
14:30  Clover      afternoon: asset prompts
15:00  Wise Guy    afternoon deep-dive
15:30  Money Guy   afternoon: package ideas
16:00  Marketing   afternoon artifact
16:30  Neo         afternoon coding
17:30  Claudinho   END-OF-DAY REPORT (last meeting)
```

## Sending commands to Claudinho
Two ways:
1. Chat him from any device: "Claudinho, [command]" — he acts on next fire, or fires the relevant agent immediately if you tell him "fire X now."
2. Edit `00_VP_Claudinho/ceo_commands.md` directly. Claudinho reads it every fire.
