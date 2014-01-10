# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "vagrant-ruby-starter"
  config.vm.box_url = "http://files.vagrantup.com/precise32.box"
  # config.vm.network :forwarded_port, guest: 80, host: 8080
  # config.ssh.forward_agent = true

  config.vm.provider :virtualbox do |vb|
    vb.gui = false
    vb.customize ["modifyvm", :id, "--memory", "1024"]
  end

  config.vm.provision :shell, :path => "provision/essentials.sh", :args => "stable"
  config.vm.provision :shell, :path => "provision/install_rvm.sh", :args => "stable"
  config.vm.provision :shell, :path => "provision/install_ruby.sh", :args => "2.1.0"
end
