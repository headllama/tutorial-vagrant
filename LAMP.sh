# Atualizando pacotes
apt-get update
apt-get upgrade

# Instalando o Apache
apt-get install -y apache2

# Habilitando módulos do Apache
a2enmod rewrite

#Add Onrej PPA Repo
apt-add-repository ppa:ondrej/php
apt-get update

# Instalando o PHP
apt-get install -y php7.2

# PHP Apache Mod
apt-get install -y libapache2-mod-php7.2

# Reiniciando o Apache
service apache2 restart

# Modulos PHP
apt-get install -y php7.2-common
apt-get install -y php7.2-mcrypt
apt-get install -y php7.2-zip

# Setando user e password do MYSQL
debconf-set-selections <<< 'mysql-server mysql-server/root_password password root'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password root'

# Instalando MYSQL
apt-get install -y mysql-server

# Biblioteca PHP-MYSQL
apt-get install -y php7.2-mysql

# Reiniciando o Apache
sudo service apache2 restart
