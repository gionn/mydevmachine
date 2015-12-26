apt_repository 'docker' do
  uri          'https://apt.dockerproject.org/repo'
  distribution "#{node['lsb']['id'].downcase}-#{node['lsb']['codename']}"
  components   ['main']
  keyserver    'hkp://p80.pool.sks-keyservers.net:80'
  key          '58118E89F3A912897C070ADBF76221572C52609D'
end

package 'docker-engine'

remote_file '/usr/local/bin/docker-machine' do
  source 'https://github.com/docker/machine/releases/download/v0.5.3/docker-machine_linux-amd64'
  owner 'root'
  group 'root'
  mode '755'
  checksum '909cae9be74b39cc529fc015aa7c015e1d8f96322d7d92a64004957054965a81'
end

remote_file '/usr/local/bin/docker-compose' do
  source 'https://github.com/docker/compose/releases/download/1.5.2/docker-compose-Linux-x86_64'
  owner 'root'
  group 'root'
  mode '755'
  checksum 'b6b975badc5389647ef1c16fe8a33bdc5935c61f6afd5a15a28ff765427d01e3'
end
