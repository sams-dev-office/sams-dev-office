# Artifact — r/IndieDev Launch Post Copy — Hamster Survivor
Date: 2026-07-12 (16:00 ET afternoon fire)
Author: Marketing Guy
Target game: **Hamster Survivor** (2D pixel-art top-down auto-shooter, survivor genre)
Target subreddit: **r/IndieDev** (primary), variants below for r/IndieGaming, r/roguelikes, r/Unity2D

---

## Why this channel
Prior research (see log_2026-07-09_morning.md, channels.md) shows niche-sub Reddit launch posts are our highest-ROI organic lever: pixel-art dev posts with a short GIF hook cluster in the 500–2,500 upvote band on r/IndieDev when the title reads like a devlog moment rather than an ad. r/IndieDev bans overt promo; the winning frame is "I made X, here's what surprised me" + one visual + one honest question. Wishlist link goes in the first comment, not the body.

---

## Primary post — r/IndieDev

**Title (choose ONE, A/B if reposting to r/IndieGaming later):**
- A: `After 200 test runs I finally tuned my hamster auto-shooter so the seed run feels different from the sunflower run — devlog #4`
- B: `The moment a Vampire-Survivors-like clicks: when your pet hamster out-DPSes you and you're just the driver`
- C: `Turned a 3am joke about "what if the hamster had a minigun" into 4 months of work — Hamster Survivor devlog`

Recommended: **A**. Devlog framing, specific number (200), concrete mechanic detail (seed vs sunflower). Passes the "not an ad" sniff test.

**Body (markdown, ~180 words — Reddit rewards tight):**

```
Been building Hamster Survivor for four months — 2D pixel-art auto-shooter, you're a hamster,
the wheel is the arena, food pellets are your weapon tree.

The tuning problem I couldn't crack until this week: every run felt the same by minute 3.
Turns out I was scaling enemy HP linearly with player DPS — so every build converged to the
same "brute force" ceiling.

Fix that finally worked: I gave each starter seed its OWN scaling curve.
 - Sunflower seed → wide AoE, soft cap early, keeps feeling generous the whole run
 - Pumpkin seed → single-target crits, HARD cap at min 8, forces a pivot into orbitals
 - Chili seed → burn stacks, no cap but enemies get burn-resist tiers

Runs suddenly stopped feeling like the same run. First time playtesters asked to "try the
other seed" instead of quitting at min 5.

Attaching a 12s GIF of a chili run at min 7 — the burn-tier pivot moment.

Question for anyone who's shipped a survivor-like: how did you decide when a build was
"too dominant" vs "satisfyingly broken"? I keep flip-flopping.
```

**Media attached in post:** 12-second looping GIF, chili-seed run at minute 7, showing the burn-resist tier flip. Max 8 MB. If GIF is too large, use Reddit-hosted MP4.

**First comment (by OP, pinned):**
```
If you want to follow along, Steam page + wishlist is here: [STEAM_URL]
Devlogs also go up on r/HamsterSurvivor and my TikTok (@hamstersurvivor). Happy to answer
build/tuning questions in this thread — I'll be around all day.
```

**Flair:** `Discussion` (NOT `Promotion` — Promotion flair on r/IndieDev tanks reach ~70%).

---

## Timing & posting rules
- **Post Tue or Thu, 09:30–10:30 ET.** Avoid Mon (weekend spillover) and Fri (weekend dropoff). r/IndieDev peak window per Ranqer data.
- **Do NOT crosspost** for 48h — mods and algorithm both punish it. After 48h, adapt for r/IndieGaming (title B) and r/roguelikes (title C + heavier build-detail body).
- **Reply to every comment in the first 3 hours.** Comment velocity is the single biggest ranking signal on niche subs.
- **Do not link wishlist in title or body.** First comment only. This is the rule difference between 200 upvotes and 2,000.

---

## Variants (48h+ reposts, not same day)

**r/IndieGaming** — swap to title B, keep body, replace "devlog" language with "playing my own game" framing. Audience is players not devs; drop the tuning detail, keep the "hamster out-DPSes you" beat.

**r/roguelikes** — title C, expand build-detail section (they want systems talk), add one line about run length (7–15 min) and meta-progression stance (light meta, run-first). This sub hates heavy meta; be explicit.

**r/Unity2D** — reframe entirely as "how I built the burn-tier system" — technical post with a code snippet or shader gif. Wishlist link still first-comment only.

---

## Success metric (this artifact)
- Baseline: any post ≥ 100 upvotes = validated hook.
- Target: ≥ 500 upvotes + ≥ 40 comments on r/IndieDev primary.
- Wishlist attribution: UTM-tag the Steam link (`?utm_source=reddit&utm_campaign=indiedev_devlog4`) so we can measure downstream in the next paid_traffic_notes.md update.

## Risk / counter-signal
Reddit launch posts have a fat left tail — most posts get < 50 upvotes. If this hits < 100, the fault is almost always title + first-3-hours-of-comments, NOT the game. Rework the title (not the body), wait 10 days, re-post to a variant sub.

---
Marketing Guy — 2026-07-12 16:00 ET
