echo install java version manager
(
    set -exo pipefail ; export DEBIAN_FRONTEND=noninteractive

    apt-get update

    # next line is a required hack due to manpage moving elsewhere
    # Ref: https://bugs.debian.org/cgi-bin/bugreport.cgi?bug=863199
    mkdir -p /usr/share/man/man1

    major_version='8'
    apt-get install -y \
        man \
        "openjdk-$major_version-jre-headless" \
        "openjdk-$major_version-jdk"

    sudo -u vagrant bash <<'EOF'
        set -eo pipefail ; . /etc/provision_functions ; set -x

        export JENV_DIR="$HOME/.jenv"

        git clone https://github.com/gcuisinier/jenv.git "$JENV_DIR"

        cd "$JENV_DIR"
        git fetch origin

        latest_jenv_version=0.4.4
        # latest_jenv_release="$(cd "$JENV_DIR" ; git fetch origin ; git describe --abbrev=0 --tags --match "[0-9]*" $(git rev-list --tags --max-count=1))"

        git checkout -f "$latest_jenv_release"

        bashrc_add_noninteractive <<'BASHRC_EOF'
export JENV_DIR="$HOME/.jenv"
export PATH="$JENV_DIR/bin:$PATH"
eval "$(jenv init -)"
BASHRC_EOF

        # jenv is noisy as hell with set -x enabled
        # disabling it so people can remain sane
        set +x

        jenv rehash

EOF
)