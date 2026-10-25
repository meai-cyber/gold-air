# Build the reviewed CPU runtime from immutable official source, not host DLLs.
FROM debian:bookworm-slim AS llama-build
ARG LLAMA_CPP_COMMIT=d327bf1f0780f87b8c01b367b61853b0c291d7c4
ARG LLAMA_CPP_SOURCE_SHA256=f808461a7a07acf0b60c0fa08c5bc65bb7641a377d63b758569c941c12ad8a0c
RUN apt-get update && apt-get install -y --no-install-recommends build-essential cmake ca-certificates python3 \
    && rm -rf /var/lib/apt/lists/*
RUN python3 -c "import hashlib,os,pathlib,urllib.request; u='https://codeload.github.com/ggml-org/llama.cpp/tar.gz/'+os.environ['LLAMA_CPP_COMMIT']; r=urllib.request.urlopen(u,timeout=120); b=r.read(157286401); assert len(b)<=157286400; assert hashlib.sha256(b).hexdigest()==os.environ['LLAMA_CPP_SOURCE_SHA256']; pathlib.Path('/tmp/llama-source.tar.gz').write_bytes(b)" \
    && mkdir -p /src/llama \
    && tar -xzf /tmp/llama-source.tar.gz --strip-components=1 -C /src/llama \
    && rm /tmp/llama-source.tar.gz
WORKDIR /src/llama
# Static llama/ggml, system glibc; no build-host -march=native or GPU backend.
# LLAMA_BUILD_* are supported overrides: archive builds otherwise report unknown/0.
RUN cmake -S . -B build -DCMAKE_BUILD_TYPE=Release \
    -DBUILD_SHARED_LIBS=OFF -DGGML_BACKEND_DL=OFF -DGGML_NATIVE=OFF \
    -DGGML_OPENMP=OFF -DGGML_BLAS=OFF -DGGML_CUDA=OFF -DGGML_HIP=OFF \
    -DGGML_VULKAN=OFF -DGGML_METAL=OFF -DGGML_SYCL=OFF -DGGML_RPC=OFF \
    -DLLAMA_BUILD_COMMON=ON -DLLAMA_BUILD_TOOLS=ON -DLLAMA_BUILD_SERVER=ON \
    -DLLAMA_BUILD_TESTS=OFF -DLLAMA_BUILD_EXAMPLES=OFF -DLLAMA_BUILD_APP=OFF \
    -DLLAMA_BUILD_UI=OFF -DLLAMA_USE_PREBUILT_UI=OFF -DLLAMA_CONNECT=OFF \
    -DLLAMA_OPENSSL=OFF -DLLAMA_CURL=OFF -DLLAMA_SUBPROCESS=OFF \
    -DLLAMA_BUILD_NUMBER=11869 -DLLAMA_BUILD_COMMIT="$LLAMA_CPP_COMMIT" \
    -DCMAKE_EXE_LINKER_FLAGS='-static-libgcc -static-libstdc++' \
    && cmake --build build --target llama-server --parallel 2 \
    && strip build/bin/llama-server \
    && install -D -m 0755 build/bin/llama-server /opt/gold-llama/llama-server \
    && install -m 0644 LICENSE /opt/gold-llama/LICENSE \
    && /opt/gold-llama/llama-server --version

FROM node:22-bookworm-slim AS node
FROM python:3.11-slim-bookworm
ENV PYTHONUNBUFFERED=1 PYTHONDONTWRITEBYTECODE=1 PYTHONUTF8=1 \
    CUDA_VISIBLE_DEVICES=-1 OMP_NUM_THREADS=1 MKL_NUM_THREADS=1 \
    OPENBLAS_NUM_THREADS=1 NUMEXPR_NUM_THREADS=1 HF_HUB_OFFLINE=1 \
    TRANSFORMERS_OFFLINE=1 RADIO_MODEL_DIR=/opt/gold-radio-assets \
    RADIO_DATA_DIR=/tmp/gold-radio-data PORT=10000 RADIO_STARTUP_SPEECH_CHECK=1 RADIO_PUBLIC_DISCUSSIONS=0 RADIO_ENGLISH_TTS=edge RADIO_ARABIC_NEWS_TTS=edge \
    RADIO_CLOUD_LLM=1 RADIO_CLOUD_PROVIDER=cloudflare RADIO_LLM_BINARY=/opt/gold-llama/llama-server
COPY --from=node /usr/local/bin/node /usr/local/bin/node
COPY --from=llama-build /opt/gold-llama/ /opt/gold-llama/
RUN apt-get update && apt-get install -y --no-install-recommends ffmpeg ca-certificates \
    && rm -rf /var/lib/apt/lists/*
WORKDIR /app
COPY gold-radio-render-source.zip /tmp/gold-radio-source.zip
RUN python -c "import hashlib,pathlib,zipfile; p=pathlib.Path('/tmp/gold-radio-source.zip'); assert hashlib.sha256(p.read_bytes()).hexdigest()=='c3d6cc95744912419ae3a4e4a4eb8156961fd2c170e66675512a082706c2e5b0'; zipfile.ZipFile(p).extractall('/app'); p.unlink()"
RUN pip install --no-cache-dir -r /app/requirements.txt
RUN python bootstrap.py && python licensed_music.py \
    && python cloud_llm_assets.py --root /opt/gold-radio-assets \
    && useradd --uid 10001 --create-home radio \
    && mkdir -p /tmp/gold-radio-data && chown radio:radio /tmp/gold-radio-data \
    && chmod -R a+rX,a-w /opt/gold-radio-assets
USER radio
EXPOSE 10000
# One server/producer, never multiple workers with conflicting broadcast clocks.
CMD ["python", "server.py"]
