# Gold Pulse cloud news radio

Public station: https://gold-air.onrender.com/

This edition collects news and observed gold quotes, ranks relevant fresh
reports, and generates shared Arabic/English speech entirely in cloud services.
It never initializes the previous PC-backed discussion importer, even if its
old environment flag remains set. No home computer, local LLM, Windows account
or Cloudflare station is needed for this radio.

Fixed public sources include BBC, Al Jazeera, France 24, DW, Sky News Arabic,
CNN Business Arabic, CNBC Top News/Energy, Guardian World/Business and Federal
Reserve releases/speeches. Individual Al Jazeera liveblog updates are collected
through bounded fixed public publisher operations with cache and backoff rules.

A transparent bilingual gold/macro topic filter selects ceil(70% of relevant
unique fresh reports) per language. It never pads the quota with unrelated
stories. Original publication and receipt clocks stay separate; only reports
within ten minutes can be newly scheduled. Counts and named relevance topics
are available in manifests. This is editorial selection, not a prediction or
verification of publisher claims. Arabic and English use their publisher feeds;
coverage is not all world news.

Arabic Nabra FP32 with offline vowel restoration runs on Render CPU; English
speech is requested by Render from Microsoft's existing online voice provider.
The same shared station clock is used by listeners. Source-attributed speech
and real Gold API observations take priority; music breaks are at most eight
seconds. There is no public prompt, synthesis, arbitrary-fetch or upload route.
Models/assets are fixed and hash-checked at build time. The process is non-root.

The free Render instance can sleep after 15 minutes idle and loses ephemeral
queues on restarts. No keepalive bypass or 24/7 guarantee is provided. This
package hosts no LLM podcasts, account database or prediction models. The full
workspace is a separate deployment at https://g.au7.workers.dev/app.

The source ZIP includes source/tests/licenses only, without credentials,
private data, model weights or generated audio. Docker verifies its SHA256.
Read TTS_DEPLOYMENT.md for model pins and notices.
