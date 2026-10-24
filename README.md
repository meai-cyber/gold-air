# Gold Pulse cloud news radio

Public station: https://gold-air.onrender.com/

News collection, ranking and Arabic/English speech run in the cloud without the
owner's PC. This separate edition leaves the forecasting/account workspace alone.

## Current programme, 25 October 2026

- Newest reports first; unspoken reports up to 120minutes old announce their
  original publication time. Older reports never become fake breaking news.
- All eligible relevant reports can enter the queue. Gold, economy, oil, energy,
  central banks and inflation rank first, followed by major world developments.
  Sport, promotions and lifestyle fillers do not earn news airtime.
- 29 fixed publisher sources, including liveblog updates, plus 9 pinned public
  Telegram/Bluesky publisher accounts. New feeds: Asharq Al-Awsat main/economy,
  Le Monde world/world-economy, CNBC world/finance, BBC Science/Environment,
  Guardian Economics/Science and NASA news releases. Public direct replies to the
  four pinned Bluesky publishers are optional unverified individual feedback,
  explicitly not a representative opinion sample.
- Six fixed economic discovery searches add allowlisted publisher headlines
  through Google News RSS, preserving the supplied publication clocks. No
  article body, paywall or opaque-link redirect is fetched. Evergreen quote
  pages are excluded. Discovery coverage does not guarantee continuous supply.
- Related unspoken collected reports form source-attributed roundups. All
  underlying report IDs are consumed once. No article body or consensus is
  invented. Original publication/first-seen clocks are retained.
- Target 80% speech/20% music. New reports have priority and the news-share
  target applies when reports are available. During quiet periods, labelled
  recorded gold discussions continue instead of waiting for news credit.
  Podcasts never count as news. Actual news/podcast/music shares stay visible.
  New reports arriving during preparation get the next unscheduled slot.
  The 12-episode/48-turn archive rotates in order, with labelled replays after
  a 10-minute cooldown; the entire library is used before repeats are considered.
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
TradingView/OANDA chart. Price speech requires a genuine observed price change.

No cloud LLM is hosted in this free image. Podcasts are recorded educational
scripts; report roundups contain collected source material. Network voices use
an external speech service. Render Free can sleep when idle; ephemeral receipts
and caches reset on restarts. News shortages are reported without fabrication.

The verified source ZIP excludes models, private history, databases and secrets.
The runtime is non-root and exposes no public prompt,upload,synthesis or model API.
