echo configure python version manager
(
    set -exo pipefail

    sudo -u vagrant bash <<'EOF'

        set -eo pipefail ; . /etc/provision_functions ; set -x

        curl -fsSL https://github.com/pyenv/pyenv-installer/raw/master/bin/pyenv-installer | bash

        bashrc_add_noninteractive <<'BASHRC_EOF'

# FROM: configure python version manager

export PYTHONUNBUFFERED=1
export PIPENV_VENV_IN_PROJECT=1
export PYENV_ROOT=~/.pyenv
export PYENV_HOME=$PYENV_ROOT
export PATH="$PYENV_HOME/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
BASHRC_EOF

        pyenv install --skip-existing 3.6.1

EOF
)