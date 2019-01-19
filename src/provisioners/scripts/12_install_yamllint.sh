echo install yamllint from https://github.com/adrienverge/yamllint
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get install -y \
        libyaml-dev

    version='==1.13.0'
    # version=''

    pip install "yamllint${version}"
)