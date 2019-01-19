echo install basic linux packages
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get update

    apt-get install -y locales
    sed -i -r 's/^\s*#\s*en_US\.UTF-8\s+UTF-8\s*$/en_US.UTF-8 UTF-8/g' /etc/locale.gen
    locale-gen

    apt-get install -y \
        apt-transport-https \
        ca-certificates \
        gnupg2 \
        software-properties-common \
        rsync \
        bash \
        make \
        jq \
        openssh-client \
        tar \
        netcat \
        curl \
        net-tools \
        dnsutils \
        vim \
        procps \
        htop \
        netcat \
        git \
        tmux \
        tmate \
        build-essential
)