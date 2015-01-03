# == Class: sterlingb2b
#
# Full description of class sterlingb2b here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { sterlingb2b:
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <author@domain.com>
#
# === Copyright
#
# Copyright 2014 Your name here, unless otherwise noted.
#
class sterlingb2b {

  #file { "/apps/ibm": ensure => directory}

  exec { sterlingb2b:
    command => "/bin/bash -c '/opt/b2bi/java-x86_64-70/bin/java -jar /opt/b2bi/ara/files/SI_5020400.jar -f /opt/b2bi/ara/files/silent_db11g.txt'",
    cwd     => '/opt/b2bi',
    creates => '/opt/b2bi/sfg2242',
    timeout => '6000'
  }

}
