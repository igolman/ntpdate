#pp -*- mode: ruby -*-
# vi: set ft=ruby :
#node.vm.provision :shell, :inline => 'gem install chef --no-rdoc --no-ri --conservative'

Vagrant.configure("2") do |config|

    # General
    config.vm.box = "ubuntu-12.04-amd64-vbox.box"
    config.vm.provider :virtualbox do |vb|
        vb.gui = false
        vb.customize ["modifyvm", :id, "--memory", "512", "--cpus", "1"] # change me !
    end

    config.berkshelf.enabled = true
    #config.omnibus.chef_version = :latest

    config.vm.define 'ntpdate' do |node|
        node.vm.box = 'ubuntu-12.04-amd64-vbox.box'
        node.vm.hostname = 'ntpdate'
        node.vm.network :private_network, ip: '10.0.33.16' # change me !
        node.vm.provision :chef_solo do |chef|
            chef.log_level = :debug
            chef.json ={
              :ntpdate => {
                :ntp_servers => %w(ntp1.hetzner.de ntp2.hetzner.de),
                :crontab => {
                    :comment => 'Some other comment',
                    :minute  => '*'
                }
              }
            }
            chef.run_list = %w(ntpdate)
        end
    end
end 
#- end of ALL declarations -
