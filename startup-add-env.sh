#!/bin/bash
#
echo "export PATH=$PYENV_ROOT/bin:$PATH" >> /home/user/.bash_profile
echo 'eval "$($PYENV_ROOT/bin/pyenv init -)"' >> /home/user/.bash_profile
