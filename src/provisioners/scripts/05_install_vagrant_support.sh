echo install vagrant ssh support
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get update

    apt-get install -y \
        sudo \
        openssh-server \
        systemd-sysv

    groupadd vagrant
    useradd -d /home/vagrant -m -s `which bash` -g vagrant vagrant
    install -d /home/vagrant/.ssh -m 0700 -o vagrant -g vagrant

    install -m 0700 <(printf '%s' 'vagrant  ALL=(ALL:ALL)       NOPASSWD: ALL') /etc/sudoers.d/01_allow_vagrant_sudo

    sudo -u vagrant bash -c 'set -eo pipefail ; . /etc/provision_functions ; set -x ; bashrc_initialize_provisioning ;'
)