FROM ibm-semeru-runtimes:open-25-jdk-noble

LABEL org.opencontainers.image.source="https://fantasyrealms.net"

LABEL author="happyareabean"

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

COPY --chown=root:root --chmod=755 ../entrypoint.sh /entrypoint.sh
CMD [ "/bin/bash", "/entrypoint.sh" ]
