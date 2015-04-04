node /puppet-client/ {
    include ssh
    file{'motd':
      path => '/etc/motd',
      content => 'Welcome to your Puppet Lab',
    }
}

