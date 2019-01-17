echo install base python runtime
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get update

    apt-get install -y python-setuptools

    command -v pip || easy_install pip

    pip install -U \
        pip \
        pipenv

    apt-get install -y \
        python-dev \
        zlib1g-dev \
        zlib1g \
        gzip \
        \
        libbz2-dev \
        bzip2 \
        \
        libreadline-dev \
        \
        openssl \
        libssl-dev \
        python-openssl \
        \
        build-essential
)
