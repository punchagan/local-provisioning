#!/usr/bin/env bash

set -e

if [ -z $(which pip3) ]; then
    echo "Installing pip..."
    sudo apt install -y python3-pip
fi

if [ -z $(which git) ]; then
    echo "Installing git..."
    sudo apt install -y git
fi

pip3 install -r requirements.txt --user

$HOME/.local/bin/ansible-playbook setup.yml -i HOSTS --module-path ./ansible_modules --ask-become-pass --extra-vars "@config.yml"
