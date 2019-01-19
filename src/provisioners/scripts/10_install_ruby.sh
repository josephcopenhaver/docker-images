echo install ruby
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get install -y gnupg2 dirmngr

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . /etc/provision_functions ; set -x

        echo "use 'rvm get stable' command to update to the latest version of rvm in the future"

        gpg --no-tty \
            --keyserver hkp://pool.sks-keyservers.net \
            --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 \
            7D2BAF1CF37B13E2069D6956105BD0E739499BDB

        curl -fsSL https://get.rvm.io | bash -s stable --ruby --ignore-dotfiles

        bashrc_add_noninteractive <<'BASHRC_EOF'
export RVM_HOME="$HOME/.rvm"
. $RVM_HOME/scripts/rvm
BASHRC_EOF

EOF
)
