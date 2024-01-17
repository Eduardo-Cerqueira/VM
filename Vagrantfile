# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure("2") do |config|
  config.vm.define "database" do |database|
    database.vm.box = "debian/bullseye64"

    # Provider-specific configuration so you can fine-tune various
    # backing providers for Vagrant. These expose provider-specific options.
    database.vm.provider "virtualbox" do |vb|
      # Display the VirtualBox GUI when booting the machine
      # vb.gui = true
      # Customize the amount of memory on the VM:
      vb.memory = 2048
      vb.cpus   = 2
    end
    #
    # View the documentation for the provider you are using for more
    # information on available options.

    # Enable provisioning with a shell script. Additional provisioners such as
    # Ansible, Chef, Docker, Puppet and Salt are also available. Please see the
    # documentation for more information about their specific syntax and use.
    database.vm.provision "ansible" do |ansible|
      #ansible.verbose = "v"
      ansible.playbook = "ansible/database.yml"
      ansible.compatibility_mode = "2.0"
    end
  end
end
