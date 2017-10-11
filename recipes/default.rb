include_recipe 'apt'

execute 'apt-get autoremove -y'

# Setup users and base configs as defined in data_bag
include_recipe 'mydevmachine::users'

# shell tools
include_recipe 'mydevmachine::zsh'
include_recipe 'mydevmachine::autoenv'

# desktop tools
include_recipe 'mydevmachine::atom'
#include_recipe 'mydevmachine::owncloud-client'
#include_recipe 'mydevmachine::vagrant'
include_recipe 'mydevmachine::virtualbox'
include_recipe 'mydevmachine::docker'

# language tools
include_recipe 'mydevmachine::java'
include_recipe 'mydevmachine::ruby'
include_recipe 'mydevmachine::python'
include_recipe 'mydevmachine::nodejs'
