#
# Cookbook Name:: mydevmachine
# Recipe:: default
#
# Copyright (C) 2015 YOUR_NAME
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'apt'

package 'git'
package 'chromium-browser'
package 'debconf-utils'
package 'ifstat'

include_recipe 'users'
users_manage 'dev' do
  group_id 2300
  action [ :remove, :create ]
end
include_recipe 'prezto::shared'

include_recipe 'mydevmachine::atom'

include_recipe 'mydevmachine::java'

include_recipe 'mydevmachine::vagrant'
include_recipe 'mydevmachine::chefdk'
