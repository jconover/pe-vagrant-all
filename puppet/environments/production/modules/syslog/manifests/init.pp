class syslog {
  $syslogpkg = hiera('syslogpkg','rsyslog')
  #package {"redhat-lsb":
    #ensure => 'installed',
    #}
    #package {"crontabs":
    #ensure => 'installed',
    #}
  package {"$syslogpkg":
    ensure => 'installed',
    #require => Package['crontabs','redhat-lsb']
  }
  service {"$syslogpkg":
    ensure  => true,
    enable  => true,
  }
}
