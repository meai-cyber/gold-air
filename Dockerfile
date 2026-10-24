FROM node:22-bookworm-slim AS node
FROM python:3.11-slim-bookworm
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 PYTHONUTF8=1 \
    CUDA_VISIBLE_DEVICES=-1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 \
    OPENBLAS_NUM_THREADS=1 NUMEXPR_NUM_THREADS=1 HF_HUB_OFFLINE=1 \
    TRANSFORMERS_OFFLINE=1 RADIO_MODEL_DIR=/opt/gold-radio-assets \
    RADIO_DATA_DIR=/tmp/gold-radio-data PORT=10000 RADIO_STARTUP_SPEECH_CHECK=1 RADIO_PUBLIC_DISCUSSIONS=0 RADIO_ENGLISH_TTS=phonon40
COPY --from=node /usr/local/bin/node /usr/local/bin/node
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY gold-radio-render-source.zip /tmp/gold-radio-source.zip
RUN python -c "import hashlib,pathlib,zipfile; p=pathlib.Path('/tmp/gold-radio-source.zip'); assert hashlib.sha256(p.read_bytes()).hexdigest()=='89fc82ae9e1b4ed02aae4a491d34fee67f729fe347808fe3e136e34765c8d455'; zipfile.ZipFile(p).extractall('/app'); p.unlink()"
RUN pip install --no-cache-dir -r /app/requirements.txt
RUN --mount=type=secret,id=phonon-build_json,dst=/run/secrets/phonon_build_json,required=true python phonon_assets.py
RUN python bootstrap.py && useradd --uid 10001 --create-home radio \
    && mkdir -p /tmp/gold-radio-data && chown radio:radio /tmp/gold-radio-data \
    && chmod -R a-w /opt/gold-radio-assets
USER radio
EXPOSE 10000
# One server/producer, never multiple workers with conflicting broadcast clocks.
CMD ["python", "server.py"]
