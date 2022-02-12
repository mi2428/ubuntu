FROM docker.pkg.github.com/mi2428/dotfiles/dotfiles:latest

RUN apt-get update \
 && apt-get upgrade -y \
 && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
      iputils \
      knot-dnsutils \
      ldnsutils \
      mtr \
      tcpdump \
      tshark

