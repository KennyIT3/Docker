Vagrant.configure("2") do |config|
  ansible=[
    {
      :hostname => "node1",
      :box => "geerlingguy/centos8",
      :ip => "192.168.56.10",
      :ssh_port => '2224'
    },
    {
      :hostname => "node2",
      :box => "geerlingguy/centos8",
      :ip => "192.168.56.11",
      :ssh_port => '2225'
    }

  ]

  ansible.each do |machine|

    config.vm.define machine[:hostname] do |workstation|
      workstation.vm.box = machine[:box]
      workstation.vm.hostname = machine[:hostname]

      workstation.vm.network :private_network, ip: machine[:ip]
      workstation.vm.network "forwarded_port", guest: 22, host: machine[:ssh_port], id: "ssh"

      workstation.vm.provider :virtualbox do |set|
        set.memory = 1024
        set.cpus = 2
        set.customize ["modifyvm", :id, "--name", machine[:hostname]]
      end
    end
  end

end
