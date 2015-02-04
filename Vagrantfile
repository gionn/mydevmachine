# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.require_version ">= 1.5.0"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.hostname = "mydevmachine-berkshelf"
  config.omnibus.chef_version = :latest
  config.berkshelf.enabled = true
  config.vm.box = "chef/ubuntu-14.04"

  config.vm.provider :virtualbox do |vb|
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision "chef_zero" do |chef|
    chef.log_level = :info
    chef.data_bags_path = './data_bags'
    chef.json = {
      mysql: {
        server_root_password: 'rootpass',
        server_debian_password: 'debpass',
        server_repl_password: 'replpass'
      }
    }

    chef.run_list = [
        "recipe[mydevmachine::default]"
    ]
  end

end
