FROM eclipse-temurin:25-jre-alpine-3.23

LABEL org.opencontainers.image.source="https://fantasyrealms.net"

LABEL author="happyareabean"

RUN apk add --no-cache bash fontconfig ttf-dejavu eudev eudev-dev eudev-libs libstdc++

RUN addgroup -S container && adduser -h /home/container container -S container -G container

USER container
ENV USER=container HOME=/home/container
WORKDIR /home/container

COPY ./../entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]
