mkdir -p /etc/puppet/modules;
puppet module install tPl0ch-composer --force;
puppet module install nodes/php --force;
puppet module install puppetlabs-stdlib --force;
puppet module install example42-puppi --force;
puppet module install example42-solr --force;