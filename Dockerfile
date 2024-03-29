FROM ghcr.io/mi2428/dotfiles:latest
LABEL maintainer "mi2428 <sh@mi2428.io>"
LABEL org.opencontainers.image.source https://github.com/mi2428/ubuntu

RUN apt-get update \
 && apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
      arp-scan \
      arping \
      arpwatch \
      asciinema \
      build-essential \
      dnsutils \
      docker-compose \
      docker.io \
      golang \
      hping3 \
      httpie  \
      iperf3 \
      iputils-ping \
      jq \
      knot-dnsutils \
      ldnsutils \
      mtr \
      net-tools \
      netcat \
      nmap \
      openssh-client \
      psmisc \
      tcpdump \
      telnet \
      wget \
      zip \
 && apt-get clean \
 && rm -rf /var/lib/apt/*

RUN pip3 install -U pipenv
RUN git clone --depth 1 https://github.com/upa/deadman /usr/local/src/deadman \
 && ln -snf /usr/local/src/deadman/deadman /usr/local/bin/deadman
