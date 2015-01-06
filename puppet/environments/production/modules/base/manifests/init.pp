class base {
  $welcome = hiera('welcome','Welcome')
  file {'/etc/motd':
    mode    => '0644',
    owner   => '0',
    group   => '0',
    content =>  inline_template("<%= welcome %>\nManaged Node: <%= hostname %>\nManaged by Puppet version <%=puppetversion %>\nOperating System: <%= operatingsystem %> <%= operatingsystemrelease %>\n"),
    #  content =>  inline_template("\nManaged Node: <%= hostname %>\nManaged by Puppet version <%=puppetversion %>\nOperating System: <%= operatingsystem %> <%= operatingsystemrelease %>\n"),
  }
}
