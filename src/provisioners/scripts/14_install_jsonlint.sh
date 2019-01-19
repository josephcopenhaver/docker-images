echo install jsonlint from nodejs packages
(
    set -exo pipefail

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . ~/.bashrc ; set -x

        version='v1.6.3'
        # version='latest'

        npm install -g "jsonlint@${version}"

EOF
)
