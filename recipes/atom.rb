
apt_repository 'atom' do
  uri          'ppa:webupd8team/atom'
  distribution node['lsb']['codename']
  notifies :run, 'execute[apt-get update]', :immediately
end

package 'atom'
