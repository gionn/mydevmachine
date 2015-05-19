
apt_repository 'virtualbox' do
  uri           'http://download.virtualbox.org/virtualbox/debian'
  components    ['contrib']
  distribution  node['lsb']['codename']
  key           'https://www.virtualbox.org/download/oracle_vbox.asc'
  notifies :run, 'execute[apt-get update]', :immediately
end

package 'dkms'
package 'virtualbox-4.3'
