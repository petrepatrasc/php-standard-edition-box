# Puppet modules

mkdir -p /etc/puppet/modules;
puppet module install tPl0ch-composer --force;
puppet module install nodes/php --force;

# HEROKU

wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh