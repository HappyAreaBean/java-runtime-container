FROM --platform=$TARGETOS/$TARGETARCH ibm-semeru-runtimes:open-25-jdk

LABEL org.opencontainers.image.source="https://fantasyrealms.net"
LABEL org.opencontainers.image.licenses=MIT

LABEL author="HappyAreaBean"

# hadolint ignore=DL3015
RUN         apt-get update -y \
            && apt-get upgrade -y \
            && apt-get install -y \
                curl \
                lsof \
                ca-certificates \
                openssl \
                git \
                tar \
                sqlite3 \
                fontconfig \
                tzdata \
                iproute2 \
                libfreetype6 \
                tini \
				zip \
				unzip \
			&& rm -rf /var/lib/apt/lists/*

ENV USER=container HOME=/home/container
WORKDIR /home/container

STOPSIGNAL SIGINT

COPY        --chown=container:container entrypoint.sh /entrypoint.sh
RUN         chmod +x /entrypoint.sh
ENTRYPOINT    ["/usr/bin/tini", "-g", "--"]
CMD         ["/entrypoint.sh"]
