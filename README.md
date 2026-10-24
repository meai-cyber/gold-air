# Gold Pulse cloud news radio

Public station: https://gold-air.onrender.com/

News collection, relevance ranking and Arabic/English speech run in the cloud,
without a home PC, local inference server, private history or account database.
19 fixed public sources include Arabic/English Euronews and individually dated
Al Jazeera liveblog updates alongside BBC, CNBC, Guardian, CNN Business Arabic,
France 24, DW, Sky News Arabic and Federal Reserve releases/speeches.

Additional fixed public publisher accounts on Telegram (Arabic) and Bluesky
(English) feed the same ranked speech queue. Public posts are attributed and
labelled unverified; source-reported author times stay separate from collection
times. Static public pages and documented APIs are parsed without a login,
browser engine, private content, arbitrary URL or owner-PC dependency. Denied
public searches are not used or bypassed.
Two due social sources are admitted per polling batch, oldest due first, so
the limited free CPU cannot starve later sources behind an oversized batch.

Five Arabic channels cover Al Arabiya, Al Hadath, Al Jazeera, Al Jazeera Mubasher
and Asharq; four pinned English publishers cover Reuters, Bloomberg, CNBC and
Al Jazeera. Gold/economic reports rank first, with important world security,
diplomacy, policy and market context following at lower priority. No causal
effect on gold or factual verification is inferred from a relevance score.

Latest-ten-minute reports have priority. When none is waiting, relevant unplayed
reports from ages 601-3600 seconds are announced with their original publication
time and clearly labelled EARLIER REPORT. Both cohorts use rounded top-40%
selection before playback receipts. Already-spoken reports are not recycled to
fill airtime. Original source clocks are retained. Full collected titles and
whole retrieved teaser sentences are spoken, without the old 24-word cutoff.
Source bodies remain bounded at 800 characters and audio slots at 90 seconds.

Factual gold briefings approximately every three minutes describe observed
minute-level moves, sampled ranges and actual publisher topics. These are
observational briefings rather than LLM-generated podcasts. A rolling airtime budget targets 80% speech and 20% music; recorded
educational podcasts fill quiet news periods, with target and actual airtime shown separately.

Three factual briefing formats rotate between observed movement, sampled range
and curve reading. Compact price bulletins retain all available 1/5/10-minute
changes, with provider-minute wording variants. Same-priority selected reports
rotate topics and sources without changing the news quota or gold priority.
Speech preparation estimates its likely air time and defers quotes that would
already be stale, while the original final freshness check remains enforced.
The player shows a separately clocked Gold API reference strip, clears stale
numbers and keeps full spoken text in an expandable panel below audio controls.

Speech is prepared ahead in bounded queues. Three creator-released CC0 relaxing MP3 tracks are stored in the
cloud and shuffled without adjacent repeats. Their shared music-only clock
pauses for speech and resumes the same song from the paused position. The
original station WAV remains a fallback. Ready speech takes priority. Pause stops both. The old eight-second
music cap no longer applies. No downloaded songs or copyrighted recordings are
included in the original synthesized bed.

Arabic Nabra FP32 and offline vowel restoration run on Render CPU. Every
complete English report goes directly to the previous en-US-JennyNeural
network voice via edge-tts 7.3.1. RADIO_ENGLISH_TTS=edge disables native Phonon.
The active image no longer installs ptts, downloads Phonon weights or requires
its temporary build grant. The native trial source is preserved but inactive.
Price commentary now requires a changed observed price at spoken-cent precision;
the first quote silently seeds its reference. News continues independently. This
package hosts recorded educational podcasts, with no live LLM or predictive/account models. The full workspace
at https://g.au7.workers.dev/app is a separate deployment.

All collection destinations are fixed. There is no public synthesis, prompt,
arbitrary-fetch, model-upload or private-data route. The Docker process is
non-root, assets are hash-checked at build time, and runtime inference downloads
are disabled. Read TTS_DEPLOYMENT.md for model pins and licenses.

Free Render can sleep after 15 minutes idle, loses ephemeral receipts/queues on
restart and has limited CPU. No keepalive workaround or 24/7 guarantee is added.
The source ZIP contains source/tests/licenses without model weights, private
data, credentials or generated audio. Docker checks its SHA256 before extracting.


Current programme: 12 bilingual educational episodes, four complete turns each;
recorded/replay labels and independent channel progress. A bounded disk cache
reuses recorded speech. One English network producer can work alongside the
Arabic CPU producer. Music and source/license pins are in licensed_music.py.
