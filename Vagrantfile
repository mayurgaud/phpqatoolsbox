# -*- mode: ruby -*-
# vi: set ft=ruby :

# Vagrantfile API/syntax version. Don't touch unless you know what you're doing!
VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "ubuntu/trusty64"
  config.vm.hostname = "phpreboot"

  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.network "private_network", ip: "192.168.255.255"
  #config.vm.network "public_network"
  config.ssh.forward_agent = true
  config.vm.synced_folder "./dev", "/home/vagrant/dev"
  config.vm.synced_folder "./vagrant/provision", "/home/vagrant/provision"
  config.vm.provision "file", source: "conf", destination: "/home/vagrant/provision/conf.sh"

  config.vm.provision "shell", path: "./vagrant/provision/install.sh"
end
