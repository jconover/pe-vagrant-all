#node 'master' {
#  class { 'base': }
  #include base
  #include sudo
  #include puppet
  #include stdlib
  #}
