Vagrant.configure("2") do |config|
  config.vm.box = "generic/ubuntu2010"
  config.vm.hostname = "gahgas"

  id_rsa_pub = File.read("#{Dir.home}/.ssh/id_rsa.pub")
  config.vm.provision "copy ssh public key", type: "shell",
  inline: "echo \"#{id_rsa_pub}\" >> /home/vagrant/.ssh/authorized_keys"

  config.vm.provider :libvirt do |libvirt|
    libvirt.cpus = 2
    libvirt.memory = 2048
  end
end
