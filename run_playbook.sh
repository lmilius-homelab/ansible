if [ $# -eq 0 ]
then
	echo "Usage: ./run_playbook.sh playbook_name.yml additional_ansible_args"
	exit 1
fi

ansible-playbook $@
