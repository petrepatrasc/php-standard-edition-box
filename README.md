# Description

This project contains the files required to set up a minimal Vagrant working environment for:

* PHP 5.5
* Apache 2.4
* MySQL 5.5
* Composer 

Provisioning is handled via Puppet, and the box used is the one from [Vagrant Cloud](https://vagrantcloud.com/petrepatrasc/php-standard-edition). At the time of this writing, it means Ubuntu 13.10, 64bit.

## PHP Extensions

A variety of PHP extensions are also configured: 

- php5-mysql 
- php5-curl 
- php5-gd 
- php5-intl 
- php-pear 
- php5-imagick 
- php5-imap 
- php5-mcrypt 
- php5-memcache 
- php5-ming 
- php5-ps 
- php5-pspell 
- php5-recode 
- php5-snmp 
- php5-sqlite 
- php5-tidy 
- php5-xmlrpc 
- php5-xsl
 
## Usage

1. Clone the repository.
2. Create the Vagrantfile by starting from the Vagrantfile.sample file provided -> the IP address labeled CHANGEME needs to be changed.
3. Run **vagrant up**.

SSH Details are the usual Vagrant ones - user *vagrant*, password *vagrant*, on port 22.