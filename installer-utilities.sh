#!/bin/bash

# Install
sudo apt-get update && sudo apt-get install -y git-flow fish shellcheck

# Install github client
(type -p wget >/dev/null || (sudo apt update && sudo apt-get install wget -y)) \
&& sudo mkdir -p -m 755 /etc/apt/keyrings \
&& wget -qO- https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo tee /etc/apt/keyrings/githubcli-archive-keyring.gpg > /dev/null \
&& sudo chmod go+r /etc/apt/keyrings/githubcli-archive-keyring.gpg \
&& echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli-archive-keyring.gpg] https://cli.github.com/packages stable main" | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null \
&& sudo apt update \
&& sudo apt install gh -y

if [ -f "/opt/code-oss/bin/codeoss-cloudworkstations" ];
then
  # Install important vscode extensions here with command codeoss-cloudworkstations
  /opt/code-oss/bin/codeoss-cloudworkstations \
    --install-extension tabnine.tabnine-vscode \
    --install-extension buianhthang.gitflow \
    --install-extension github.vscode-pull-request-github \
    --install-extension eamodio.gitlens \
    --install-extension equinusocio.vsc-material-theme-icons \
    --install-extension esbenp.prettier-vscode \
    --install-extension github.vscode-pull-request-github \
    --install-extension gitpod.gitpod-theme \
    --install-extension golang.go \
    --install-extension hbenl.test-adapter-converter \
    --install-extension hbenl.vscode-mocha-test-adapter \
    --install-extension hbenl.vscode-test-explorer \
    --install-extension ms-python.debugpy \
    --install-extension ms-python.python \
    --install-extension ms-vscode.vscode-typescript-tslint-plugin \
    --install-extension timonwong.shellcheck \
    --install-extension donjayamanne.githistory \
    --install-extension streetsidesoftware.code-spell-checker	\
    --install-extension alefragnani.Bookmarks	\
    --install-extension christian-kohler.path-intellisense \
    --install-extension johnpapa.vscode-peacock	\
    --install-extension humao.rest-client \
    --install-extension dbaeumer.vscode-eslint \
    --install-extension shardulm94.trailing-spaces \
    --install-extension ms-toolsai.jupyter \
    --install-extension hashicorp.terraform
fi
