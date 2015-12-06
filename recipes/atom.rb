
apt_repository 'atom' do
  uri          'ppa:webupd8team/atom'
  distribution node['lsb']['codename']
end

package 'atom'
