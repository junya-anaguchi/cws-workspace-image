#!/bin/bash

if [ -f "/opt/code-oss/bin/codeoss-cloudworkstations" ];
then
  declare -a plugins=(
    "alefragnani.Bookmarks"
    "buianhthang.gitflow"
    "christian-kohler.path-intellisense"
    "dbaeumer.vscode-eslint"
    "dbaeumer.vscode-eslint"
    "donjayamanne.githistory"
    "eamodio.gitlens"
    "equinusocio.vsc-material-theme-icons"
    "esbenp.prettier-vscode"
    "github.vscode-pull-request-github"
    "gitpod.gitpod-theme"
    "golang.go"
    "hashicorp.terraform"
    "hbenl.test-adapter-converter"
    "hbenl.vscode-mocha-test-adapter"
    "hbenl.vscode-test-explorer"
    "humao.rest-client"
    "johnpapa.vscode-peacock"
    "ms-python.debugpy"
    "ms-python.python"
    "ms-toolsai.jupyter"
    "ms-vscode.vscode-typescript-tslint-plugin"
    "shardulm94.trailing-spaces"
    "streetsidesoftware.code-spell-checker"
    "tabnine.tabnine-vscode"
    "timonwong.shellcheck"
  )
  # Install important vscode extensions here with command codeoss-cloudworkstations
  for plugin_id in "${plugins[@]}"; do
    /opt/code-oss/bin/codeoss-cloudworkstations --install-extension "${plugin_id}"
  done
  rm /root/.codeoss-cloudworkstations/extensions/extensions.json
  cp -r /root/.codeoss-cloudworkstations/extensions/* /opt/code-oss/extensions/
  ls -l /opt/code-oss/extensions/
fi

if [ -f "/installer-scripts/plugin-installer.sh" ];
then
  # Declare an array of plugin ids
  # (Tabnine, Rainbow Brackets, dotenv support, .ignore)
  declare -a plugins=("12798" "10080" "9525" "7495")

  # Install
  for plugin_id in "${plugins[@]}"; do
    /installer-scripts/plugin-installer.sh -d /opt/WebStorm/plugins/ "${plugin_id}"
  done
fi
