# Async Meetings

No live chat between agents. All coordination happens through files here.

## inbox/
Any agent drops a file here to reach another agent. Naming:
`YYYY-MM-DD_HHMM_from-<sender>_to-<recipient>_<topic>.md`

Recipient reads on their next fire, appends their reply INSIDE the same file, then moves the file to `decided/`.

## decided/
Archive of handled proposals. Never edit; only read for history.

## VP escalation
Claudinho scans inbox/ every fire. Anything older than 24h → escalated in `../00_VP_Claudinho/routing_log.md`.
