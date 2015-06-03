#
# Cookbook Name:: mydevmachine
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

log Chef::Config[:file_cache_path] do
  level :warn
end

include_recipe 'apt'

package 'aptitude'
package 'apt-file'
package 'git'
package 'chromium-browser'
package 'debconf-utils'
package 'ifstat'
package 'zsh'

include_recipe 'users'
users_manage 'dev' do
  group_id 2300
  action [ :remove, :create ]
end

include_recipe 'mydevmachine::atom'
include_recipe 'mydevmachine::java'
include_recipe 'mydevmachine::ruby'
include_recipe 'mydevmachine::python'
include_recipe 'mydevmachine::nodejs'
include_recipe 'mydevmachine::virtualbox'
include_recipe 'mydevmachine::vagrant'
include_recipe 'mydevmachine::chefdk'
include_recipe 'mydevmachine::zsh'
