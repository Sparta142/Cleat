# syntax=docker/dockerfile:1

FROM alpine:3

LABEL org.opencontainers.image.title="Cleat" \
    org.opencontainers.image.description="A slim container environment for initialization tasks." \
    org.opencontainers.image.version="1.0.0" \
    org.opencontainers.image.authors="Sparta142" \
    org.opencontainers.image.licenses="MIT" \
    org.opencontainers.image.source="https://github.com/Sparta142/Cleat"

RUN apk add --no-cache bash curl envsubst jq yq \
    && rm -rf /var/cache/apk/*

ENTRYPOINT ["/bin/bash", "-u"]
