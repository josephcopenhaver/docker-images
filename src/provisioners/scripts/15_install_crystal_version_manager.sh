echo install crystal version manager
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    echo install crystal dependencies

    apt-get update

    apt-get install -y \
        libssl-dev \
        libxml2-dev \
        libyaml-dev \
        libgmp-dev \
        \
        libreadline-dev \
        \
        libpcre3 \
        libpcre3-dev \
        \
        libgc-dev \
        \
        libevent-dev

    apt autoremove

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . /etc/provision_functions ; set -x

        curl -fsSL https://raw.github.com/pine/crenv/master/install.sh | bash

        bashrc_add_noninteractive <<'BASHRC_EOF'
export CRENV_HOME="$HOME/.crenv"
export PATH="$CRENV_HOME/bin:$PATH"
eval "$(crenv init -)"
BASHRC_EOF

        version="0.25.1"
        # version="$(crenv install -l | sort --version-sort | tail -1 | sed -E 's/^\s+//; s/\s+$//;')"

        crenv install "$version"
        crenv global "$version"

EOF
)
