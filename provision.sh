#!/usr/bin/env bash

apt-get update

# Install ansible
apt-get -y install python-software-properties
add-apt-repository -y ppa:rquillo/ansible
apt-get -y install ansible
echo localhost > /etc/ansible/hosts

# Use ansible to install remaining dependencies
export PYTHONUNBUFFERED=1
ansible-playbook /ansible/playbook.yml --connection=local
