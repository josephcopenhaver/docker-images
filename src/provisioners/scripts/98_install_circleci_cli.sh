echo install circleci cli
(
    set -exo pipefail

    sudo -u vagrant bash <<'EOF'
        set -eo pipefail ; . /etc/provision_functions ; set -x

        bashrc_add_noninteractive <<'BASHRC_EOF'
export CIRCLECI_HOME="$HOME/.circleci"
export PATH="$CIRCLECI_HOME/bin:$PATH"
BASHRC_EOF

        mkdir -p "$CIRCLECI_HOME/bin"

        curl -fsSL https://circle.ci/cli | DESTDIR="$CIRCLECI_HOME/bin" bash

EOF
)
