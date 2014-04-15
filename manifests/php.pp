##################
#  PHP Packages  #
##################

$phpPackages = [
	"php5", 
	"php5-json",
	"php5-mysql",
	"php5-curl", 
	"php5-gd", 
	"php5-intl", 
	"php5-imagick", 
	"php5-imap", 
	"php5-mcrypt", 
	"php5-memcache", 
	"php5-ming", 
	"php5-ps", 
	"php5-pspell", 
	"php5-recode", 
	"php5-sqlite",
	"php5-tidy",
	"php5-xmlrpc",
	"php5-xsl" 
]

package {
	$phpPackages:
		ensure => "present",
		require => Package["curl"],
}

########################
#  PEAR/PECL Packages  #
########################

# Composer
class {
	"composer":
		require => Package["curl"]
}


# PHPUnit
include php
include php::params
include php::pear

class { 'php::phpunit':
  ensure => latest
}