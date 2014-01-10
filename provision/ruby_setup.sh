 #!/usr/bin/env bash

rvm --default use 2.1.0
gem install bundler

# Heroku toolbelt
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh
