#!/bin/bash

# install ansible
if [[ command -v ansible ] -eq 0 ]; then
    echo 'Ansible is already installed...'
elif [[uname -a | grep -i ubuntu] -eq 0]; then
    echo "installing ansible with apt...";
    sh installAnsibleWithApt.sh
else 
    echo "installing ansiebl with pip...";
    sh installAnsibleWithPip.sh;
fi

# install docker with ansible
ansible-playbook main.yml --ask-become-pass

# Set up docker volumes
docker volume create --name some-docker-volume;

# Pull redis image
docker pull redis;

# Run redis image and assign volume
docker run -p 6379:6379 -d redis -v some-docker-volume; 


