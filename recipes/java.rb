
apt_repository 'java' do
  uri          'ppa:webupd8team/java'
  distribution node['lsb']['codename']
  notifies :run, 'execute[apt-get update]', :immediately
end

execute 'accept-oracle-license' do
  not_if 'debconf-get-selections|grep accepted-oracle-license'
  command <<-EOF
  echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
  echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections
  EOF
end

package 'oracle-java8-installer'

package 'maven'
