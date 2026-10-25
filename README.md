# Gold Pulse cloud news radio

Public station: https://gold-air.onrender.com/

## One-hour source clocks and public reactions, 25 October 2026

Release `2026-10-25-fresh-hour-radio-16` admits only original publisher/author
clocks within one hour, checks them through the scheduled clip end, and excludes
unverified Google discovery items from speech. Publisher polling is 15 seconds;
new reports can move ahead of older queued items without splitting a discussion.
Strictly screened individual financial opinions are checked from pinned public
threads and four fixed Mastodon timelines, always labelled unverified and never
used as factual model context. No eligible reaction existed in the initial sample;
the station does not invent opinions to fill that gap. 479 Python and 56 player
checks passed. News and all radio runtime work remain independent of the PC.

## Live cloud writer activation, 25 October 2026

The existing Gold Pulse Workers account was visually verified as Workers Free,
and its scoped account-owned Workers AI credential was saved directly in Render.
No credential is included in this repository. Real requests completed in roughly
one second, but initial script generation hit over-broad lexical checks. Release
`2026-10-25-live-cloud-radio-15` keeps each host question and analyst answer
together, while allowing a changed-price bulletin between complete turns.
Source-led prompts replace arbitrary topic facets for collected reports; name
checks use the same bounded public text actually sent to the provider. Earlier
whole-word guard repairs and failure backoff remain. Prompt wording now matches
the strict direction checks for every variable and requires gold in each question.
An observed satellite-story-to-mining leap is now rejected unless the same
bounded source text actually mentions the energy/mining sector. Each analyst
reply must explicitly address gold; host prompts request a concrete subject.
These checks remain heuristics, not independent fact verification. Real Arabic and English
pairs have generated and played; broader quality and airtime still require
measured live checks. Configuration and mock tests alone are not quality evidence.

## News supply repair, 25 October 2026

Release `2026-10-25-news-supply-radio-11` scopes the existing six discovery
queries to approved worldwide publishers, corrects bounded economy/news
selection misses and excludes static quote/history pages. News-index clocks
are labelled as unverified original publication times. Both channels retain
the two-hour window and speak each selected report once; no regional Arab
publisher or PC source is added. The cloud podcast writer is now connected.
Unmoderated individual listener replies are disabled
after live review found speculative allegations; the five pinned publisher
social feeds remain active. Neither archive nor weak native model substitutes
for it. Improved supply is not proof of continuous news or the 80/20 target.

## Initial stronger cloud writer preparation, 25 October 2026

The live activation section above supersedes the setup state recorded below.

The native 350M trial produced short audio, but live tests also found awkward
Arabic concepts and mismatched answers. It is an experimental writer and has
not achieved the 80% speech target. This release adds an owner-configured
Cloudflare Workers AI adapter for the fixed multilingual model
`@cf/qwen/qwen3-30b-a3b-fp8`. Its real quality and latency remain untested until
the owner supplies credentials. No API token is part of this source.

After verifying the intended account's **Workers Free** subscription, its owner
can select the adapter in the existing Render service's Environment settings:

```text
RADIO_CLOUD_PROVIDER=cloudflare
CF_ACCOUNT_ID=<the owner-selected Gold Pulse account ID>
CF_API_TOKEN=<secret entered directly in Render>
RADIO_CF_FREE_PLAN_CONFIRMED=1
```

Use only an account-scoped Workers AI Read/Edit token. Do not paste it into
chat, this file, the source ZIP or browser code. Do not upgrade or purchase a
plan. The default now waits for the Cloudflare account configuration. The weak
native experiment is no longer selected automatically; a Cloudflare failure
never silently substitutes it or a prerecorded programme. Collection and TTS
continue on Render with no PC
dependency. Public visitors still cannot submit prompts.

The adapter enforces a conservative local reservation estimate of 5,000
neurons per UTC day; failed attempts count. This ephemeral ledger is not the
provider's actual global usage or a spending cap. The account must actually be
on Workers Free, whose 10,000-neuron daily allowance stops further requests
when exhausted. Other account usage shares that allowance. Check current
[Cloudflare pricing](https://developers.cloudflare.com/workers-ai/platform/pricing/)
and [token setup](https://developers.cloudflare.com/workers-ai/get-started/rest-api/).

News collection, ranking and Arabic/English speech run in the cloud without the
owner's PC. This separate edition leaves the forecasting/account workspace alone.

## Current programme, 25 October 2026

- Newest reports first; unspoken reports up to 120minutes old announce their
  original publication time. Older reports never become fake breaking news.
- All eligible relevant reports can enter the queue. Gold, economy, oil, energy,
  central banks and inflation rank first, followed by major world developments.
  Sport, promotions and lifestyle fillers do not earn news airtime.
- 22 fixed feeds from worldwide operators, including BBC, DW, France24,
  Euronews, CNBC, Guardian, LeMonde, NASA and the FederalReserve. Arabic news
  uses the international broadcasters' Arabic editions. Arab regional outlets,
  all AlJazeera editions, their social accounts and the old liveblog collector
  are excluded by a central destination policy before network requests.
- Five exact global Bluesky publisher identities: Reuters, Bloomberg, CNBC,
  AssociatedPress and TheGuardian. Individual replies are disabled after live
  review found speculative allegations; publisher posts remain attributed and
  are never treated as a representative public consensus.
  No Telegram feeds, external linked articles or publisher thumbnails are fetched.
- Six fixed economic discovery searches add allowlisted publisher headlines
  through Google News RSS, preserving the supplied publication clocks. No
  article body, paywall or opaque-link redirect is fetched. Evergreen quote
  pages are excluded. Discovery coverage does not guarantee continuous supply.
- Related unspoken collected reports form source-attributed roundups. All
  underlying report IDs are consumed once. No article body or consensus is
  invented. Original publication/first-seen clocks are retained.
- Target 80% speech/20% music. New reports have priority and the news-share
  target applies when reports are available. During quiet periods, freshly generated
  cloud discussions can continue instead of waiting for news credit.
  Podcasts never count as news. Actual news/podcast/music shares stay visible.
  New reports arriving during preparation get the next unscheduled slot.
  The recorded archive is disabled when the cloud writer is enabled.
- Arabic news: fast Zariyah network speech, with Nabra FP32/offline vowels loaded
  only on an actual fallback. English news: Jenny network
  voice. Distinct podcast cast: Maia uses Arabic Layla/English Aria; Omar uses
  genuine male Arabic Rami/English Guy at requested+60% speed(1.6x). Cast failure
  retries; a man is never silently replaced with the female news voice.
  Script speaker labels are not read aloud; presenter names stay on screen.
- Five verified CC0 MP3s in the cloud: three HoliznaCC0 instrumentals plus vocal
  songs Missing Person(Stefan Kartenberg feat.Orrisroot) and Scintillating Love
  (Stefan Kartenberg feat.Asiansaints). Music pauses for speech and resumes the
  same song position. Source URLs, publisher identities, SHA256 pins and license
  credits are fixed in licensed_music.py. Audio supports bounded range streaming.

The player joins a shared language-channel clock, shows full collected text,
original source times and actual cast names, and retains the separate rich
TradingView/OANDA chart. Gold API quotes are polled every 10seconds. Genuine
cent-level changes trigger a coalesced, short whole-dollar price call with
up/down direction at the next complete speaking boundary (15second cooldown).
A periodic price check targets at least one call every 10minutes, including
flat prices. Curve reports target four minutes, prepared early to allow speech
latency. They describe observed moves and tentative support/resistance, with an
explicitly experimental CPU trend projection when actual source samples support
it. Flat/sparse data is reported honestly. The 1/3/5minute targets preserve their
original clocks; a bounded forward ledger compares later quotes with no change.
This fixed statistical recipe is not a trained ML model and has no demonstrated
predictive edge. Stale quotes are not spoken as current; external feed/voice
outages can delay these cadence targets. Priority slots preserve complete
news/podcast audio and recheck delayed source freshness.

The cloud writer uses LiquidAI/LFM2.5-350M-GGUF, exact
LFM2.5-350M-QAD-Q4_0.gguf (219312832 bytes), pinned revision
657e078c94084481950a2d555a941481f715536b. Its checksum and embedded native
chat template are verified at build/startup. The official llama.cpp b11869
source is compiled inside Debian for CPU-only inference with one thread,
context1536, one slot, no GPU layers or weight repacking. Its authenticated
API binds only to127.0.0.1:18083 inside Render; public visitors cannot submit
prompts or select models. The app exposes only port10000.

Fresh short source-grounded or explicitly educational questions/commentary
are produced in the background. Candidate access never blocks the broadcast
lock. Source clocks, complete collected facts and measured price/outlook values
remain independently checked; model text cannot invent numeric predictions or
turn a public opinion into verified news. The small model is not an autonomous
investigative or advanced reasoning system. Failed/incomplete/unsafe outputs
are discarded and status is shown honestly. In cloud-writer mode the static
recorded-script archive is disabled. Prepared audio remains shared by everyone
on the selected language clock, with distinct Maia/Omar voices.

Network voices use the existing external speech service. Before a native
Arabic fallback allocates its weights, the owned LLM process is released; it can
resume after the fallback cools down. Render Free has512MiB/0.1CPU and can sleep
when idle. Memory headroom and generation deadlines are bounded; generation
speed and news supply can affect the80/20programme target. Ephemeral state resets
on restart. The owner PC is never an inference or collection dependency.

The verified source ZIP excludes models, private history, databases and secrets.
The runtime is non-root and exposes no public prompt,upload,synthesis or model API.


Worldwide source policy (25October2026): Google discovery also rejects regional
publishers before their rows are admitted; cached old reports are filtered on
load and ingestion. Requests use a generic PublicNewsReader useragent without
site domain/name, referrer, origin, credentials or cookies. External article
links are not fetched by the station. The player sends no referrer when a listener
chooses to open a source link. These changes control future destinations; they
cannot remove historical publisher logs or conceal Render's shared outbound IP
from providers that remain allowed. Source policy and current collector counts
are exposed in the public manifest for verification.
