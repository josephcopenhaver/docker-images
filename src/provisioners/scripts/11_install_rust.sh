echo install rust
(
    set -exo pipefail

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . /etc/provision_functions ; set -x

        export CARGO_HOME="$HOME/.cargo"

        curl -fsSL https://sh.rustup.rs | sh -s -- -y --no-modify-path

        bashrc_add_noninteractive <<'BASHRC_EOF'
export CARGO_HOME="$HOME/.cargo"
export PATH="$CARGO_HOME/bin:$PATH"
BASHRC_EOF

        bashrc_add_interactive <<'BASHRC_EOF'
eval "$(rustup completions bash)"
BASHRC_EOF

EOF
)
