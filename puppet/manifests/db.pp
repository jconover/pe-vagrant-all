node 'db' inherits 'default' {
  include sudo
  #include postgresql::server
  include ::mysql::server
}
