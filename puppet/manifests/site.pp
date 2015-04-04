node /puppet-client/ {
    file{'motd':
      path => '/etc/motd',
      content => 'Welcome to your Puppet Lab',
    }
}

