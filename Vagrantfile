
Vagrant.configure(2) do |config|
  config.vm.box = 'ubuntu/trusty64'

  config.vm.network :forwarded_port, guest: 80, host: 8080
  config.vm.network :forwarded_port, guest: 8081, host: 8081
  config.vm.network :forwarded_port, guest: 3306, host: 3307

  config.vm.synced_folder "./dev", "/var/www/dev"

  config.vm.provision "shell", path: "./provision/intro.sh", run: "always"
  config.vm.provision "shell", path: "./provision/system.sh"
  config.vm.provision "shell", path: "./provision/php.sh"
  config.vm.provision "shell", path: "./provision/nginx.sh"
  config.vm.provision "shell", path: "./provision/mysql.sh"
  config.vm.provision "shell", path: "./provision/xdebug.sh"
  config.vm.provision "shell", path: "./provision/composer.sh", run: "always"
  config.vm.provision "shell", path: "./provision/phpunit.sh"

  config.vm.provider "virtualbox" do |v|
    v.memory = 1024
  end

  config.hostmanager.enabled = true
  config.hostmanager.manage_host = true
  config.vm.hostname = 'www.one-two-three-four.dev'
end
