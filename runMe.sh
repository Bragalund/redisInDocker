#!/bin/bash

# install ansible if not already installed...
if hash ansible 2>/dev/null; then
    echo 'Ansible is already installed...';
elif [[uname -a | grep -i ubuntu] -eq 0]; then
    echo "installing ansible with apt...";
    sh installAnsibleWithApt.sh
else 
    echo "installing ansible with pip...";
    sh installAnsibleWithPip.sh;
fi

# install docker with ansible
ansible-playbook main.yml --ask-become-pass;

# Pull redis image
docker pull redis;

# Set up a docker volume
docker volume create --name redis-docker-volume;

# Run redis image and assign volume
docker run -p 6379:6379 -d -v redis-docker-volume --name redis-docker-instance redis; 


