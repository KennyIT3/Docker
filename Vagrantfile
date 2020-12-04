  #Host1
  Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/centos7"
    config.vm.hostname = "DockerHost1"
    config.ssh.port = '2224'
    config.vm.network "private_network", ip: "192.168.122.1/24"
    
    #Host2
    Vagrant.configure("2") do |config|
    config.vm.box = "geerlingguy/centos7"
    config.vm.hostname = "DockerHost2"
    config.ssh.port = '2225'
    config.vm.network "private_network", ip: "192.168.122.1/24"
    
    #Config Setup
    config.vm.provider "virtualbox" do |set|
        set.memory = 1024
        set.cpus = 2
      end
    end
  end  