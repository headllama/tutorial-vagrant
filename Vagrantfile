# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|

  # Sistema operacional desejado
  config.vm.box = "ubuntu/xenial64"
    
  # Software de virtualização e quantidade de memória e cpu reservado
  config.vm.provider "virtualbox" do |vb|
  vb.memory = "1024"
  vb.cpus = "4"

  # Irá provisionar os arquivos à partir do arquivo LAMP.sh
  config.vm.provision "shell", 
    path: "LAMP.sh"

  # Configurações de ip e rede
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.33.10"

  # Configuração de sincronismo de arquivos
  config.vm.synced_folder ".", "/var/www/html", :nfs => { :mount_options => ["dmode=777", "fmode=666"] }
  end
end
