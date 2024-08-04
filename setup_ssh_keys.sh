source unlock_bw.sh

ansible-vault view vars/ssh_key > ~/.ssh/ansible_key
ansible-vault view vars/ssh_key_ed25519 > ~/.ssh/ansible_key_ed25519

chmod 600 ~/.ssh/ansible_key
chmod 600 ~/.ssh/ansible_key_ed25519

ssh-keygen -f ~/.ssh/ansible_key -y > ~/.ssh/ansible_key.pub
ssh-keygen -f ~/.ssh/ansible_key_ed25519 -y > ~/.ssh/ansible_key_ed25519.pub

eval "$(ssh-agent -s)"
ssh-add ~/.ssh/ansible_key
ssh-add ~/.ssh/ansible_key_ed25519