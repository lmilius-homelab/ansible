#!/bin/bash

sudo apt-get update &&
sudo apt-get install software-properties-common -y
sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt-get update &&
sudo apt-get install ansible sshpass -y
ansible-galaxy install -r requirements.yaml --force

sudo apt-get install python3-pip -y
pip install --upgrade dnspython

sudo snap install bw

# ansible-galaxy collection install ansible.posix
