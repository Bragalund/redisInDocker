#!/bin/bash

# install pip if not installed
command -v pip >/dev/null 2>&1 || { 
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py;
python get-pip.py --user; 
sudo ln -s ~/.local/bin/pip /usr/local/bin;
exit 1;
}

# install ansible with pip
pip install --user ansible;