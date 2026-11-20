FROM --platform=$TARGETOS/$TARGETARCH bellsoft/liberica-runtime-container:jdk-27-cds-musl

LABEL org.opencontainers.image.source="https://fantasyrealms.net"
LABEL org.opencontainers.image.licenses=MIT

LABEL author="HappyAreaBean"

RUN apk add --no-cache bash fontconfig ttf-dejavu eudev eudev-dev eudev-libs libstdc++ tini libcurl

RUN addgroup -S container && adduser -h /home/container container -S container -G container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

STOPSIGNAL SIGINT

COPY        --chown=container:container entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/sbin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
