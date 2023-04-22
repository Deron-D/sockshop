FROM ubuntu:22.04
RUN apt update && \
    apt install curl git -y
RUN curl -sSLO https://werf.io/install.sh
RUN chmod +x install.sh
RUN ./install.sh --ci
RUN source "$(~/bin/trdl use werf 1.2 stable)"



