Vagrant::Config.run do |config|
  config.vm.box = "base"

  config.vm.forward_port "http", 8080, 4567
  config.vm.forward_port "http2", 8081, 4568

  config.vm.provision :chef_solo do |chef|
    chef.cookbooks_path = ["cookbooks"]
    chef.add_recipe("apt")
    chef.add_recipe("tomcat")
    chef.add_recipe("webapp")
    chef.json.merge!({
	:tomcat => {
		:port => 8081
	},
	:webapp => {
		:webapp => "demo.war"
	}
    })
  end

end
