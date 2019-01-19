echo install yarn npm package
(
    set -exo pipefail

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . ~/.bashrc ; set -x

        latest_version="v1.13.0"
        # latest_version="latest"
        npm install -g "yarn@$latest_version"

EOF
)
