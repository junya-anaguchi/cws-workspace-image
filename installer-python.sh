#!/bin/bash

export PYTHON_VERSION=${1:-"3.12.3"}
export PYENV_ROOT=${2:-"/usr/local/share/.pyenv"}

apt-get update && apt-get install -y libssl-dev libbz2-dev libffi-dev libreadline-dev lzma liblzma-dev libsqlite3-dev

curl https://pyenv.run | bash \
    && $PYENV_ROOT/bin/pyenv install ${PYTHON_VERSION} \
    && $PYENV_ROOT/bin/pyenv global ${PYTHON_VERSION} \
    && $PYENV_ROOT/shims/python3 -m pip install pipenv

