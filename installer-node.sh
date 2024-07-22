#!/bin/bash

export NODE_VERSION=${1:-"18.12.1"}
export NVM_DIR=${2:-"/usr/local/share/.nvm"}

mkdir -p $NVM_DIR \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && nvm use default \
    && npm install yarn -g
    && chown -R user:user $NVM_DIR
