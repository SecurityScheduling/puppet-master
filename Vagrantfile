Vagrant.configure(2) do |config|
  config.vm.box = "ubuntu/trusty64"

  config.vm.define "puppet-master" do |master|
    master.vm.network "private_network", ip: "192.168.33.100"
    master.vm.hostname = "puppet"
    master.vm.provision :shell, path: "puppet-repo.sh"
    master.vm.synced_folder "puppet/manifests", "/etc/puppet/manifests", type: "rsync", rsync__exlude: ".git/"
  end

  config.vm.define "puppet-client" do |client|
    client.vm.network "private_network", ip: "192.168.33.110"
    client.vm.hostname = "puppet-client"
    client.vm.provision :shell, path: "set-hosts.sh"
    client.vm.provision :shell, path: "client.sh"
  end

end
