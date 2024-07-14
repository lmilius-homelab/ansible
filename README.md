# ansible
Repository containing all host configuration IaC using Ansible

## SSH Key Setup

`ansible-vault view vars/ssh_key > ~/.ssh/ansible_key`

`chmod 600 ~/.ssh/ansible_key`

## Nix

`nix develop .`

`source unlock_bw.sh`
