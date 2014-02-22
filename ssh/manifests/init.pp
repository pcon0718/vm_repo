class ssh {
  package { 'openssh':
    ensure => present,
  }

  file { '/etc/ssh/sshd_config':
    ensure  => present,
    owner   => 'root',
    group   => 'root',
    mode    => 0600,
    source  => 'puppet:///modules/ssh/sshd_config',
    require => Package ['openssh'],
  }

  service {'sshd':
    ensure    => running,
    subscribe => File ['/etc/ssh/sshd_config'],
  }
}

