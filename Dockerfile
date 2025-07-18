FROM pandoc/latex:latest-ubuntu

RUN --mount=type=cache,target=/var/cache/apt,sharing=locked \
    --mount=type=cache,target=/var/lib/apt,sharing=locked \
    apt-get update && apt-get --no-install-recommends install -y ca-certificates && \
    find /etc/apt -type f -name "*.sources" | xargs -I{} sed -i 's|http://|https://|g' {} && \
    apt-get update && apt-get install -y --no-install-recommends \
        latex-cjk-all fonts-noto-cjk

RUN tlmgr install xecjk
