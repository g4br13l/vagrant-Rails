# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/xenial64"
  config.vm.hostname = "rails-dev-box"
  config.vm.define "vagrant_default1"
  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.memory = 2048
    vb.name = "railsbox"
  end
# config.vm.network :forwarded_port, guest: 80, host: 9001
# config.vm.network :forwarded_port, guest: 3306, host: 3307
  config.vm.network :private_network, ip: "192.168.56.101"
  config.vm.synced_folder "data", "/home/vagrant/app"
  config.vm.provision :shell, path: "provision/setup.sh"
end
