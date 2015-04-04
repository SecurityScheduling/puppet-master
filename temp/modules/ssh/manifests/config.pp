class ssh::config {
  file { ::$ssh::params::ssh_service_config:
    include ssh::params
    ensure => present,
    owner => 'root',
    group => 'root',
    mode => 0600,
    source => "puppet:///modules/ssh/sshd_config",
    require => Class["ssh::package"],
    notify => Class["ssh::service"],
  }
}
