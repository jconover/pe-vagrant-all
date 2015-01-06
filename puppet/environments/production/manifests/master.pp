node 'master' inherits 'default' {
  include syslog
  include resolver
  #include base
  #include sudo
  #include puppet
  #include stdlib
}
