#!/usr/bin/env bash

set -e

if [ -z $(which python) ]; then
    echo "Installing python..."
    sudo apt update
    sudo apt install -y python python-apt
fi

if [ -z $(which pip) ]; then
    echo "Installing pip..."
    sudo apt install -y python-pip
fi

if [ -z $(which git) ]; then
    echo "Installing git..."
    sudo apt install -y git
fi

pip install -r requirements.txt --user

$HOME/.local/bin/ansible-playbook setup.yml -i HOSTS --module-path ./ansible_modules --ask-become-pass --extra-vars "@config.yml"
