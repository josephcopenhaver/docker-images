FROM debian:9.6-slim

MAINTAINER joseph.copenhaver@gmail.com

RUN echo 'First apt-get upgrade ran on `date +%s`=1547715141' \
 && export DEBIAN_FRONTEND=noninteractive && apt-get update && apt-get upgrade -y

COPY ./provision/scripts/01_basic_linux_packages /tmp/01_basic_linux_packages
RUN bash /tmp/01_basic_linux_packages \
 && rm /tmp/01_basic_linux_packages \
 && rm -rf /var/lib/apt/lists/*

COPY ./provision/scripts/02_base_python_runtime /tmp/02_base_python_runtime
RUN bash /tmp/02_base_python_runtime \
 && rm /tmp/02_base_python_runtime \
 && rm -rf /var/lib/apt/lists/*

COPY ./provision/scripts/03_install_rcode_rmate /tmp/03_install_rcode_rmate
RUN bash /tmp/03_install_rcode_rmate \
 && rm /tmp/03_install_rcode_rmate \
 && rm -rf /var/lib/apt/lists/*

COPY ./provision/scripts/04_install_vagrant_support /tmp/04_install_vagrant_support
RUN bash /tmp/04_install_vagrant_support \
 && rm /tmp/04_install_vagrant_support \
 && rm -rf /var/lib/apt/lists/*

STOPSIGNAL SIGRTMIN+3

ENTRYPOINT [ "/sbin/init" ]
