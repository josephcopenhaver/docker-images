echo install cfn-lint from https://github.com/awslabs/cfn-python-lint
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get install -y \
        libyaml-dev

    version='==0.11.1'
    # version=''

    pip install "cfn-lint${version}"
)
