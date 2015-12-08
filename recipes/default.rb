include_recipe 'apt'

execute 'apt-get autoremove -y'

# Setup users and base configs as defined in data_bag
include_recipe 'mydevmachine::users'

# base tools
include_recipe 'mydevmachine::zsh'

# desktop tools
include_recipe 'mydevmachine::atom'
include_recipe 'mydevmachine::owncloud-client'
include_recipe 'mydevmachine::vagrant'
include_recipe 'mydevmachine::virtualbox'

# language tools
include_recipe 'mydevmachine::java'
include_recipe 'mydevmachine::ruby'
include_recipe 'mydevmachine::python'
include_recipe 'mydevmachine::nodejs'
