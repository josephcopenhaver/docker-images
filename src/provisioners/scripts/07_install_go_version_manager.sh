echo install go version manager
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get update

    apt-get install -y \
        bison

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . /etc/provision_functions ; set -x

        curl -fsSL https://raw.githubusercontent.com/moovweb/gvm/master/binscripts/gvm-installer | bash

        bashrc_add_noninteractive <<'BASHRC_EOF'
. "$HOME/.gvm/scripts/gvm"
BASHRC_EOF

        latest_release="go1.11.4"

        # major_version=1
        # latest_release="go$(set -eo pipefail ; gvm listall | grep -E '^\s*go'"$major_version"'\.[0-9]+(\.[0-9]+)?\s*$' | sed -E 's/^\s*go([^\s]+)\s*/\1/' | sort --version-sort | tail -1)"

        printf 'latest_release=%q' "$latest_release"
        gvm install "$latest_release" -B
        gvm use "$latest_release" --default

EOF
)
