Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  config.vm.box_url="http://files.vagrantup.com/lucid32.box"

  config.vm.forward_port 8080, 18080
  config.vm.forward_port 8081, 18081

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.roles_path=["roles"]
    chef.add_role("tomcatserver")
  end

end
