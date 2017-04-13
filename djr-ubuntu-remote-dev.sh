#!/bin/bash

set -e

if ! [ -e ~/.ssh/id_rsa ]; then 
	echo "Expect the SSH private key to be copied here manually (it is in brain.org.gpg)"
	exit 1
fi

if ! [ -e ~/.gnupg ]; then 
	echo "Expect the GnuPG private key to be copied here manually (it is in brain.org.gpg)"
	exit 1
fi

if ! [ -x "$(command -v ansible-playbook)" ]; then
	echo "Installing ansible"
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update && sudo apt-get install ansible
fi

echo "Setting ansible to connect and work locally only"
sudo bash -c "echo 'localhost ansible_connection=local' > /etc/ansible/hosts"

ansible-playbook djr-ubuntu-remote-dev.yml
