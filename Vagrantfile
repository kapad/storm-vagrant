# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"
VAGRANT_DEFAULT_PROVIDER = "virtualbox"

Vagrant.require_version ">= 1.3.5"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

    config.vm.hostname = "storm"

    config.vm.box = "ubuntu_12-04_precise_64"
    config.vm.box_url = "http://files.vagrantup.com/precise64.box"

    config.vm.network :private_network, ip: "10.0.1.11"
    config.vm.network :forwarded_port, guest: 8080, host: 8081, auto_correct: true
    config.vm.network :forwarded_port, guest: 3772, host: 3003, auto_correct: true

    config.vm.provider :virtualbox do |vb|
        vb.gui = false
        vb.memory = 2048
        vb.name = "storm_vagrant"
    end

    config.omnibus.chef_version = :latest

    config.berkshelf.enabled = true
    # config.berkshelf.berksfile_path = "./Berksfile"

    # An array of symbols representing groups of cookbook described in the Vagrantfile
    # to exclusively install and copy to Vagrant's shelf.
    # config.berkshelf.only = []

    # An array of symbols representing groups of cookbook described in the Vagrantfile
    # to skip installing and copying to Vagrant's shelf.
    # config.berkshelf.except = []

    config.vm.provision :chef_solo do |chef|
        chef.run_list = [
            "recipe[stormvagrant::java]",
            "recipe[stormvagrant::zeromq]",
            "recipe[stormvagrant::zookeeper]",
            "recipe[stormvagrant::storm]"
        ]
    end

end
