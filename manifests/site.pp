import "aptitude.pp"
import "tools.pp"
import "lamp.pp"
import "apache.pp"
import "php.pp"
import "solr.pp"

group { "puppet":
  ensure => "present",
}

File { owner => 0, group => 0, mode => 0644 }

file { '/etc/motd':
  content => "PHP Standard Edition Box"
}