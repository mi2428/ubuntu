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
      tcpdump \
      telnet \
      wget \
 && apt-get clean
