# Defined type for creating virtual title accounts

define accounts::virtual ($uid,$realname,$password,$shell){
  user { $title:
    ensure     => 'present',
    home       => "/home/${title}",
    password   => $password,
    managehome => true,
    uid        => $uid,
    gid        => $title,
    shell      => $shell,
    comment    => $realname,
    require    => Group[$title],
  }

  group { $title:
    gid => $uid,
  }

  file { "/home/${title}":
    ensure  => directory,
    owner   => $title,
    group   => $title,
    mode    => 0750,
    require => [ User[$title], Group[$title] ],
  }
}

