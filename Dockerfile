FROM node:22-bookworm-slim AS node
FROM python:3.11-slim-bookworm
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 PYTHONUTF8=1 \
    CUDA_VISIBLE_DEVICES=-1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 \
    OPENBLAS_NUM_THREADS=1 NUMEXPR_NUM_THREADS=1 HF_HUB_OFFLINE=1 \
    TRANSFORMERS_OFFLINE=1 RADIO_MODEL_DIR=/opt/gold-radio-assets \
    RADIO_DATA_DIR=/tmp/gold-radio-data PORT=10000 RADIO_STARTUP_SPEECH_CHECK=1 RADIO_PUBLIC_DISCUSSIONS=0 RADIO_ENGLISH_TTS=edge RADIO_ARABIC_NEWS_TTS=edge
COPY --from=node /usr/local/bin/node /usr/local/bin/node
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY gold-radio-render-source.zip /tmp/gold-radio-source.zip
RUN python -c "import hashlib,pathlib,zipfile; p=pathlib.Path('/tmp/gold-radio-source.zip'); assert hashlib.sha256(p.read_bytes()).hexdigest()=='548ab24d3388ed4d30a821c9b50546d4806a2b0d6a6cd1fb7411b9e8619d8abf'; zipfile.ZipFile(p).extractall('/app'); p.unlink()"
RUN pip install --no-cache-dir -r /app/requirements.txt
RUN python bootstrap.py && python licensed_music.py && useradd --uid 10001 --create-home radio \
    && mkdir -p /tmp/gold-radio-data && chown radio:radio /tmp/gold-radio-data \
    && chmod -R a+rX,a-w /opt/gold-radio-assets
USER radio
EXPOSE 10000
# One server/producer, never multiple workers with conflicting broadcast clocks.
CMD ["python", "server.py"]
