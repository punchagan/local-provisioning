#!/usr/bin/env bash

if [ -z $(which pip3) ]; then
    echo "Installing pip..."
    sudo apt install python3-pip
fi

pip3 install -r requirements.txt --user

ansible-playbook setup.yml -i HOSTS --module-path ./ansible_modules --ask-become-pass --extra-vars "@config.yml"
