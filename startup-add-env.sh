#!/bin/bash

export NVM_DIR=${1:-"/usr/local/share/.nvm"}
export PYENV_ROOT=${2:-"/usr/local/share/.pyenv"}

sudo chown -R user:user "$NVM_DIR" &
sudo chown -R user:user "$PYENV_ROOT" &

# nvm
# shellcheck disable=SC1091
source "$NVM_DIR/nvm.sh"

# pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$("$PYENV_ROOT"/bin/pyenv init -)"

# Google Application Credentials
export GOOGLE_APPLICATION_CREDENTIALS=/home/user/.gcp/default.json
