FROM bellsoft/liberica-runtime-container:jdk-25-cds-glibc

LABEL org.opencontainers.image.source="https://fantasyrealms.net"
LABEL org.opencontainers.image.licenses=MIT

LABEL author="HappyAreaBean"

RUN apk add --no-cache bash fontconfig ttf-dejavu eudev eudev-dev eudev-libs libstdc++

RUN addgroup -S container && adduser -h /home/container container -S container -G container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ../entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]
