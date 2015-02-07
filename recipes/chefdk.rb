
remote_file "#{Chef::Config[:file_cache_path]}/chefdk_0.4.0-1_amd64.deb" do
  source "https://opscode-omnibus-packages.s3.amazonaws.com/ubuntu/12.04/x86_64/chefdk_0.4.0-1_amd64.deb"
  mode '0644'
  notifies :run, "execute[install-chefdk]", :immediately
  not_if "dpkg -l | grep chefdk | grep 0.4.0-1"
end

execute "install-chefdk" do
  command "dpkg -i #{Chef::Config[:file_cache_path]}/chefdk_0.4.0-1_amd64.deb"
  action :nothing
end
