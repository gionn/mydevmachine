
apt_repository 'owncloud-client' do
  uri          "http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_#{node['lsb']['release']}/"
  distribution '/'
  key          'http://download.opensuse.org/repositories/isv:ownCloud:desktop/xUbuntu_15.04/Release.key'
end

package 'owncloud-client'
