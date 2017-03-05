#!/usr/bin/env bash

export DEBIAN_FRONTEND=noninteractive

echo "ø create project folder"
sudo mkdir "/home/vagrant/app"

echo "ø updating system packages"
sudo apt-get -y install build-essential > /dev/null
sudo apt-get update > /dev/null

echo "ø installing git"
apt-get -y install git > /dev/null
echo "ø installing ruby"
# apt-get -y install ruby > /dev/null
apt-get -y install ruby-dev > /dev/null
ruby -v
gem -v
echo "ø installing bundler via gem..."
gem install bundler
bundle -v
echo "ø installing rails via gem..."
apt-get -y install ruby-railties > /dev/null
gem install rails
rails -v
echo "ø installing passenger via gem..."
gem install passenger
passenger -v
echo "ø installing nodejs"
apt-get -y install nodejs-legacy > /dev/null
node -v
echo "ø installing nginx"
apt-get -y install nginx > /dev/null
nginx -v
echo "ø installing htop"
apt-get -y install htop > /dev/null
echo "ø preparing mysql instalation"
apt-get install debconf-utils -y > /dev/null
debconf-set-selections <<< 'mysql-server mysql-server/root_password password secret'
debconf-set-selections <<< 'mysql-server mysql-server/root_password_again password secret'
echo "ø installing mysql"
apt-get install -y mysql-server
apt-get install -y mysql-client
apt-get install -y libmysqlclient-dev
echo "ø installing npm and bower"
apt-get install -y npm
npm install -g bower
echo "ø installing or updating dependent packages"
npm install
bower install
echo "ø passenger preparing nginx server module to provider rails application"
sudo fuser -k 80/tcp
# service nginx start
cd /home/vagrant/app/ && bundle install && rake db:create && rake db:migrate && sudo bundle exec passenger start
# passenger-install-nginx-module
