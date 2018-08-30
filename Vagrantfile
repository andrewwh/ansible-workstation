# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "ubuntu/bionic64"
  config.vm.synced_folder "./", "/vagrant", type: "rsync", disabled: false

  config.vm.define "workstation" do |workstation|
    # workstation.vm.network :private_network, ip: "192.168.56.100", dhcp_enabled: false
    workstation.vm.hostname = "workstation.local"
    
    workstation.vm.provider "virtualbox" do |v|
        v.name = "localhost"
        v.memory = 4048
        v.cpus = 1
        v.gui = true
    end

    workstation.vm.provision "ansible_local" do |ansible|
      ansible.playbook = "workstation.yml"
      ansible.verbose = false
      ansible.install_mode = :pip
    end    
  end
end
