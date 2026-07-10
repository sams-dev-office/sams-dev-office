# TASK for Clover — Morning 2026-07-10 (or first fire that lands)
From: Sam (via Clover 2026-07-09 wrap-up)
Priority: do this BEFORE Sam pushes the game update — he wants to audition cuts to pick a weapon SFX.

## Source file
`02_Clover_Design/audio_source/laser_cleaning_thermal_paste.mp3`
- ~563 KB, MP3
- Recording of a laser cleaner blasting crusty thermal paste off a CPU. Sharp, punchy laser-pulse texture — perfect candidate for a Hamster Defense **weapon SFX** (which tower? Sam will pick after hearing cuts).

## What Sam wants
1. **Analyze the waveform end-to-end.** Find every laser-pulse event — Sam says "very easy to identify the beginning and end by the sound wave," so trust the transients: sharp attack + short decay.
2. **Cut LOTS of segments** — err on the side of too many, not too few. Sam wants to audition variety, so:
   - Every clean single-pulse (isolated pop) → its own file.
   - Every 2-pulse and 3-pulse burst → its own file.
   - Any longer sustained sweeps → their own files.
   - Any interesting texture chunks (crackle, sizzle, tail) even without a clean pulse → keep them, label as "texture".
3. **Save the cuts** to `02_Clover_Design/audio_source/cuts_laser_thermal/` — one WAV per cut (WAV, not MP3, so Sam can re-encode without generation loss).
4. **Naming convention:** `NN_type_durationms.wav` — e.g. `03_single_pulse_180ms.wav`, `07_double_burst_420ms.wav`, `12_texture_sizzle_900ms.wav`. Zero-pad NN so file order matches waveform order.
5. **Deliverable index:** write `02_Clover_Design/audio_source/cuts_laser_thermal/INDEX.md` — table listing each cut with: filename, source-timestamp (start–end in the original MP3), type (single/double/burst/sweep/texture), 1-line description ("clean sharp pop, no tail" / "dense crackle burst" / etc.).

## Tools Clover should use
- `ffmpeg` for the cuts (available in bash). Command shape: `ffmpeg -i <src.mp3> -ss <start> -to <end> -c pcm_s16le <out.wav>`
- For waveform analysis: `ffprobe` for duration, or `librosa` / `pydub` in Python if silence-detection / onset-detection is faster than eyeballing.
- Suggested silence-split entry point: `ffmpeg -i src.mp3 -af silenceremove=stop_periods=-1:stop_duration=0.15:stop_threshold=-30dB out.wav` to auto-chop, then hand-refine.

## How Sam will use the output
He listens through the cuts, picks 1–3 winners, and those become the base SFX for one of Hamster Defense's tower weapons (likely the sniper-tier "laser tower" — but Sam decides after hearing them).

## Success criteria
- At least 15–20 distinct cuts (more is fine).
- INDEX.md is scannable — Sam should be able to skim it and know which 3 files to open first.
- No cut exceeds ~2 seconds unless it's a genuinely interesting sustained texture.

— Handoff from Clover-Wednesday to Clover-Thursday-morning
