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
observational briefings rather than LLM-generated podcasts. Twelve-second music
breaks follow complete news bursts or briefings, with more music in empty gaps.

Speech is prepared ahead in bounded queues. Original 120-second relaxing
instrumental music loops throughout waiting, download and retry gaps; ready
speech replaces it on the same element. Pause stops both. The old eight-second
music cap no longer applies. No downloaded songs or copyrighted recordings are
included in the original synthesized bed.

Arabic Nabra FP32 and offline vowel restoration run on Render CPU. English
speech uses the existing online voice provider, requested by Render. This
package hosts no LLM podcasts or predictive/account models. The full workspace
at https://g.au7.workers.dev/app is a separate deployment.

All collection destinations are fixed. There is no public synthesis, prompt,
arbitrary-fetch, model-upload or private-data route. The Docker process is
non-root, assets are hash-checked at build time, and runtime inference downloads
are disabled. Read TTS_DEPLOYMENT.md for model pins and licenses.

Free Render can sleep after 15 minutes idle, loses ephemeral receipts/queues on
restart and has limited CPU. No keepalive workaround or 24/7 guarantee is added.
The source ZIP contains source/tests/licenses without model weights, private
data, credentials or generated audio. Docker checks its SHA256 before extracting.
