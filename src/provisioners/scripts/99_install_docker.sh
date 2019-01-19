echo install docker
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    version='=5:18.09.1~3-0~debian-stretch'
    # set version to an empty string if this hardcoded version is no longer available for install
    # version=''

    curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -

    printf 'deb [arch=amd64] https://download.docker.com/linux/debian %s stable' "$(lsb_release -cs)" > /etc/apt/sources.list.d/docker.list

    apt-get update

    apt-get install -y "docker-ce$version"

    usermod -a -G docker vagrant
)