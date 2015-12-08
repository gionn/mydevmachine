#!/bin/bash
if ! chef-client -v > /dev/null; then
  sudo apt-get update
  sudo apt-get install -y curl
  curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -c current -P chefdk
fi

berks vendor "${HOME}/.local/share/chef-client-cache/cookbooks"
sudo chef-client -z -c chef.rb
