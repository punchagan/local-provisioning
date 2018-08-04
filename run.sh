#!/usr/bin/env bash

if [ -z $(which pip) ]; then
    echo "Installing pip..."
    sudo apt install python-pip
fi

pip install -r requirements.txt --user
