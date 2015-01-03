node 'web' inherits 'default' {
  include sudo

  apache::vhost { 'www.example.com':
    port          => '80',
    docroot       => '/var/www/www.example.com',
    ssl           => false,
    priority      => '10',
    serveraliases => 'home.example.com',
  }
}
