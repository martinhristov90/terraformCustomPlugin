Vagrant.configure("2") do |config|
  config.vm.box = "martinhristov90/ubuntu1604"
  config.vm.box_version = "0.1"
  config.vm.provision "shell", path: "scripts/provision.sh"
  config.vm.provision "shell", path: "scripts/setupPlugin.sh", privileged: false
  config.vm.provision "file", source: "./main.tf", destination: "$HOME/"
end
