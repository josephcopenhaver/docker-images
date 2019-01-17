FROM debian:9.6-slim

MAINTAINER joseph.copenhaver@gmail.com

RUN echo 'First apt-get upgrade ran on `date +%s`=1547715141' \
 && export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get upgrade -y
