# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "debian/jessie64"
  config.vm.disk :disk, size: "10GB", primary: true
  config.vm.provider "virtualbox" do |vb|
    vb.name = "Test"
    vb.memory = "2048"
    vb.cpus = 2
  end

  config.vm.hostname = "Test"

  config.vm.synced_folder ".", "/home/vagrant/code",
    owner: "www-data", group: "www-data"
  
  config.vm.network "forwarded_port", guest: 80, host: 8000
  config.vm.network "forwarded_port", guest: 3306, host: 33060

  config.vm.network "private_network", ip: "192.168.0.230"

  config.vm.provision "shell", path: "autoinstall.sh"
end

