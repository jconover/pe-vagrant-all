class resolver($search = "localdomain") {
  augeas { 'set resolve.conf search':
    context => '/files/etc/resolve.conf',
    changes => [
      "set search/domain '${search}'"
    ],
  }
}
