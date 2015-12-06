
apt_repository "owncloud-client" do
  uri          "http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_#{node['lsb']['release']}/"
  distribution "/"
  key          "http://download.opensuse.org/repositories/isv:/ownCloud:/desktop/xUbuntu_#{node['lsb']['release']}/Release.key"
end

package 'owncloud-client'
