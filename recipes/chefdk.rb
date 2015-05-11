
if node['kernel']['machine'] == 'x86_64'
  arch = 'amd64'
else
  arch = 'i386'
end

remote_file "#{Chef::Config[:file_cache_path]}/chefdk_#{node['mydevmachine']['chefdk_version']}_amd64.deb" do
  source "https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/#{node['kernel']['machine']}/chefdk_#{node['mydevmachine']['chefdk_version']}_#{arch}.deb"
  mode '0644'
  notifies :run, "execute[install-chefdk]", :immediately
  not_if "dpkg -l | grep chefdk | grep #{node['mydevmachine']['chefdk_version']}"
end

execute "install-chefdk" do
  command "dpkg -i #{Chef::Config[:file_cache_path]}/chefdk_#{node['mydevmachine']['chefdk_version']}_#{arch}.deb"
  action :nothing
end
