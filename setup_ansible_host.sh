#!/bin/bash

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -
sudo apt-add-repository "deb [arch=$(dpkg --print-architecture)] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt-get update &&
sudo apt-get install software-properties-common terraform -y
sudo add-apt-repository --yes --update ppa:ansible/ansible

sudo apt-get update &&
sudo apt-get install ansible sshpass -y
ansible-galaxy install -r requirements.yaml --force

sudo apt-get install python3-pip -y
pip install --upgrade dnspython

sudo snap install bw

# ansible-galaxy collection install ansible.posix
