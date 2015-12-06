#!/bin/bash
if ! chef-client -v; then
  curl https://omnitruck.chef.io/install.sh | sudo bash -s -- -c current -P chefdk
fi

berks vendor cookbooks
sudo chef-client -z -c chef.rb
