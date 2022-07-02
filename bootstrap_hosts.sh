#!/bin/bash

# To override the ansible user, add `-e "ansible_user=username"` when calling this script to use a user other than the default

ansible-playbook envsetup.yml --ask-pass $@
