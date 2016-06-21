Vagrant.configure("2") do |config|
  config.vm.provision "shell", inline: "sudo apt-get update"
  config.cache.auto_detect = true
  config.cache.scope = :machine
end
