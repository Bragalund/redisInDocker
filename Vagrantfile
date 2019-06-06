Vagrant.configure("2") do |config|
  config.vm.box="ubuntu/bionic64"
  config.vm.provision "ansible" do |ansible|
      ansible.verbose = "v"
      ansible.playbook="main.yml"
      ansible.groups = {
        "somehost" => ["vm1"]
      }

  end
end