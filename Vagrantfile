Vagrant.configure("2") do |config|
  config.vm.box = "wesdemos/ubuntu2404-arm"
  config.vm.provider "parallels" do |v|
    v.name = "MyARMVagrantVM"
    v.memory = 2048
    v.cpus = 2
  end

  config.vm.define "master" do |master|
    master.vm.network "private_network", ip: "192.168.33.10"
    master.vm.provider "parallels" do |prl|
      prl.name = "MasterVM"  # Unique name for the master VM
    end
  end

  config.vm.define "slave" do |slave|
    slave.vm.network "private_network", ip: "192.168.33.11"
    slave.vm.provider "parallels" do |prl|
      prl.name = "SlaveVM"  # Unique name for the slave VM
    end
  end

end