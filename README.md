# Gold Pulse Radio

Shared Arabic and English news, observed gold-price briefs, and optional
published Gold Pulse discussions, with an OANDA/TradingView chart.
Full accounts, forecasts and virtual practice remain at
https://g.au7.workers.dev/app.

Fresh attributed headlines have a strict ten-minute publication/receipt window.
An independent price desk polls the fixed public Gold API endpoint every
30 seconds and prepares a source-clocked spoken update per language about
every minute when fresh data is available. Genuine sampled 1/5/10-minute
changes appear only after enough history exists. Exact provider values remain
in metadata; spoken prices are explicitly approximate cents. These are
observations, never invented price forecasts.

Music is limited to quiet breaks of at most eight seconds. The same audio
element is unlocked by Join live and switches automatically to shared speech.
The current transcript, clip type, speaker/source and source clocks are shown.

Arabic2 uses Nabra FP32 and offline vowel restoration on the Render CPU.
English speech is requested by the server from Microsoft's online voices.
Basic news and price speech run without a personal computer. The optional
RADIO_PUBLIC_DISCUSSIONS=1 owner setting reads only already-published public
Gold Pulse scripts at the existing Cloudflare station and renders new speech
here. These discussions depend on that source station/PC; no raw model API,
private history, prompt, credentials or household data are accessed. Forecast
and forecast-review turns are excluded from this small imported edition.

All external fetch URLs are fixed. HTTP routes are read-only: /, /health,
/radio.json?language=ar|en, /audio/<id>.wav and /station-bed-v1.wav.
There is no public synthesis, prompt or arbitrary URL endpoint.

The archive contains application source, tests, dependency pins and license
notices, without credentials, model weights or live data. Docker verifies its
SHA256 then downloads fixed hash-verified public speech assets at build time.
Consult TTS_DEPLOYMENT.md in the archive for model revisions and notices.

Deploy the root Dockerfile to Render's Free Web Service with /health. Free
instances can sleep and have ephemeral storage. Their capacity cannot host
the full language-model and forecasting stack. Verify manifests and actual
new speech WAVs after deployment; HTTP health alone does not prove playback.
