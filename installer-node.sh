#!/bin/bash

export NODE_VERSION=${1:-"18.20.4"}
export NVM_DIR=${2:-"/usr/local/share/.nvm"}

mkdir -p $NVM_DIR \
    && curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.7/install.sh | bash \
    && . $NVM_DIR/nvm.sh \
    && nvm install $NODE_VERSION \
    && nvm alias default $NODE_VERSION \
    && npm install yarn -g

# Install other versions of node
nvm install 16.20.2 && npm install yarn -g
nvm install 20.16.0 && npm install yarn -g

nvm use default
