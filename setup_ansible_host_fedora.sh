#!/bin/bash

pip install --upgrade ansible dnspython

# sudo apt-get update &&
# sudo apt-get install ansible sshpass -y
ansible-galaxy install -r requirements.yaml --force

# sudo apt-get install python3-pip -y
# pip install --upgrade dnspython

sudo dnf install snapd -y

# Might need a sleep here after installing snapd, it takes some time to become active

sudo snap install bw

# ansible-galaxy collection install ansible.posix
