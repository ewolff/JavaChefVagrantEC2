Vagrant::Config.run do |config|
  config.vm.box = "lucid32"
  config.vm.box_url="http://files.vagrantup.com/lucid32.box"

  config.vm.forward_port 8080, 18080
  config.vm.forward_port 8081, 18081

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe("apt")
    chef.add_recipe("tomcat")
    chef.add_recipe("webapp")
    chef.json.merge!({
	:tomcat => {
		:port => 8080
	},
	:webapp => {
		:webapp => "demo.war"
	}
    })
  end

end
