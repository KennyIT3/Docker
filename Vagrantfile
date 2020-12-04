Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.hostname = "DockerHost1"
  config.ssh.port = '2224'
  config.vm.network "private_network", ip: "192.168.122.1/24"
  end

  Vagrant.configure("2") do |config|
  config.vm.box = "geerlingguy/centos7"
  config.vm.hostname = "DockerHost2"
  config.ssh.port = '2225'
  config.vm.network "private_network", ip: "192.168.122.1/24"
  end 
