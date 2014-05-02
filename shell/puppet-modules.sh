<<<<<<< HEAD
#!/bin/sh
cd /tmp;

# FFmpeg + FFprobe
#wget http://ffmpeg.gusari.org/static/64bit/ffmpeg.static.64bit.latest.tar.gz -O ffmpeg.tar.gz; - 64bit link, if required.
wget http://ffmpeg.gusari.org/static/32bit/ffmpeg.static.32bit.latest.tar.gz -O ffmpeg.tar.gz;
tar -xzvf ffmpeg.tar.gz;
sudo mv ffmpeg /usr/bin
sudo mv ffprobe /usr/bin

# Get latest Puppet - not supported by default on Ubuntu 12.04.
sudo apt-get --purge autoremove puppet puppet-common puppetmaster puppetmaster-common -y;
wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb;
sudo dpkg -i puppetlabs-release-precise.deb;
sudo apt-get update;
sudo apt-get install puppetmaster puppet -y;

# Puppet modules
mkdir -p /etc/puppet/modules;
puppet module install tPl0ch-composer --force;
puppet module install nodes/php --force;

# HEROKU
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh