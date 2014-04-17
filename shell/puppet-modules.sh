#!/bin/sh
sudo apt-get --purge autoremove puppet puppet-common puppetmaster puppetmaster-common -y;
cd /tmp;
wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb;
sudo dpkg -i puppetlabs-release-precise.deb;
sudo apt-get update;
sudo apt-get install puppetmaster puppet -y;
mkdir -p /etc/puppet/modules;
puppet module install tPl0ch-composer --force;
puppet module install nodes/php --force;