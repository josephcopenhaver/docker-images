ARG VERSION=1.12.0

FROM golang:${VERSION}

MAINTAINER joseph.copenhaver@gmail.com

RUN echo 'First apt-get upgrade ran on `date +%s`=1552110255' \
 && export DEBIAN_FRONTEND=noninteractive \
 && apt-get update \
 && apt-get install bash \
 && apt-get upgrade -y \
 && rm -rf /var/lib/apt/lists/*

COPY ./provisioners/scripts/00_test_bash /tmp/00_test_bash
RUN /tmp/00_test_bash \
 && rm /tmp/00_test_bash \
 && rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGRTMIN+3

ENTRYPOINT [ "build" ]
