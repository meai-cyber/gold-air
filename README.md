# Gold Pulse Radio

A small Render edition with shared English and Arabic news broadcasts and an
interactive OANDA/TradingView gold chart. The complete account and forecasting
workspace remains at https://g.au7.workers.dev/app.

Original instrumental music plays between fresh bulletins. Join live starts
audio immediately; language channels share the station clock. Ten fixed public
publisher feeds are collected. Short news clips have six seconds of preload
time, and recent clip metadata remains available for two minutes for verification.
Music is composed from source at build time, with no sampled songs or GPU.

Arabic2 uses Nabra FP32 and offline vowel restoration on the server CPU.
English speech is requested by the server from Microsoft's online voices.
This edition has no connection to a personal computer, private model API,
household history, account database or broker.

The source archive contains the application, pinned dependency setup, tests and
third-party license notices. It contains no credentials, model weights or live
data. The Docker build checks its SHA256, extracts the source, and downloads
fixed hash-verified public model assets. Consult `TTS_DEPLOYMENT.md` inside the
archive for exact revisions, notices and local verification results.

Deploy the root `Dockerfile` as a Render Web Service. The health path is
`/health`. Select the Free plan deliberately. Free instances can sleep and use
ephemeral storage; their CPU/RAM limits do not support the full language-model
and forecasting stack. HTTP health alone does not prove speech generation:
check both language manifests and newly generated audio after deployment.

Public endpoints: `/`, `/health`, `/radio.json?language=ar`,
`/radio.json?language=en` and generated `/audio/<id>.wav` files. There is no
public prompt, synthesis or arbitrary-URL endpoint.
