#!/usr/bin/env bash

apt-get update

# Essential software
apt-get -y install build-essential git-core python-software-properties
apt-get -y install vim emacs curl

# Install RVM
curl -sSL https://get.rvm.io | bash -s stable

# Ruby installation and setup
rvm install $1
source /usr/local/rvm/scripts/rvm
rvm --default use $1
gem install bundler

# Heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
