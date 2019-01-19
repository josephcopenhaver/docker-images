echo install node version manager
(
    set -exo pipefail

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . /etc/provision_functions ; set -x

        export NVM_DIR="$HOME/.nvm"
        git clone https://github.com/creationix/nvm.git "$NVM_DIR"
        cd "$NVM_DIR"
        git fetch origin
        latest_nvm_release="v0.34.0"
        # latest_nvm_release="$(cd "$NVM_DIR" ; git describe --abbrev=0 --tags --match "v[0-9]*" $(git rev-list --tags --max-count=1))"
        git checkout -f "$latest_nvm_release"

        bashrc_add_noninteractive <<'BASHRC_EOF'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"
BASHRC_EOF

        bashrc_add_interactive <<'BASHRC_EOF'
[[ -r $NVM_DIR/bash_completion ]] && . $NVM_DIR/bash_completion
BASHRC_EOF

        # nvm is noisy as hell with set -x enabled
        # disabling it so people can remain sane
        set +x

        latest_node_release="v10.15.0"
        # latest_node_release="$(nvm ls-remote --lts | grep Latest | sed -E 's/^\s*(v[0-9.]+)\s+.*$/\1/' | sort --version-sort | tail -1)"
        nvm install "$latest_node_release"
        nvm alias default "$latest_node_release"

        npm --version
        latest_npm_version=v6.6.0
        # latest_npm_version=latest
        npm install -g "npm@$latest_npm_version"

EOF
)
