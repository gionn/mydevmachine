
remote_file "#{Chef::Config[:file_cache_path]}/vagrant_1.7.2_x86_64.deb" do
  source "https://dl.bintray.com/mitchellh/vagrant/vagrant_1.7.2_x86_64.deb"
  mode '0644'
  notifies :run, "execute[install-vagrant]", :immediately
end

execute "install-vagrant" do
  command "dpkg -i #{Chef::Config[:file_cache_path]}/vagrant_1.7.2_x86_64.deb"
  action :nothing
end
