FROM debian:bullseye-slim

LABEL maintainer="VergilGao"
LABEL org.opencontainers.image.source="https://github.com/VergilGao/docker-debian-baseimage"

RUN echo "deb http://deb.debian.org/debian bullseye contrib non-free" >> /etc/apt/sources.list && \
    apt-get update && \
    apt-get -y install --no-install-recommends \
      wget \
      gosu \
      locales \
      procps && \
      apt-get -y install --reinstall ca-certificates && \
      rm -rf /var/lib/apt/lists/* && \
    localedef -i en_US -c -f UTF-8 -A /usr/share/locale/locale.alias en_US.UTF-8
