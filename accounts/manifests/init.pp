# Used to define/realize titles on Puppet-managed systems

class accounts {
  @accounts::virtual {'jwayne':
    uid      => 1000,
    realname => 'John Wayne',
    password => '$1$pjKlkxbN$gxfIPcVYb6w19bUUhUP/f.',
    shell    => '/bin/bash',
  }
  
  @accounts::virtual {'blightyear':
    uid      => 1001,
    realname => 'Buzz Lightyear',
    password => '$1$9D2V5Svz$nasNORG4Zfij0hJs80lNU0',
    shell    => '/bin/bash',
  }

  @accounts::virtual {'ckent':
    uid      => 1002,
    realname => 'Clark Kent',
    password => '$1$6gd6grGT$pHBre1oJMKofdkYOK.way/',
    shell    => '/bin/bash',
  }

  @accounts::virtual {'llane':
    uid      => '1003',
    realname => 'Lois Lane',
    password => '$1$1PfXRL3Y$NCQ/s.lygqFzHRWVaiKKe0',
    shell    => '/bin/bash',
  }
  
  @accounts::virtual {'jkirk':
    uid      => 1004,
    realname => 'James Kirk',
    password => '$1$GJMJdbyk$YJR7JeYo49Ohex0cNlP/6/',
    shell    => '/bin/zsh',
  }

  @accounts::virtual {'mscott':
    uid      => 1005,
    realname => 'Montgomery Scott',
    password => '$1$XTBKX72o$hUXujp4XxR/O2RprfeVXv.',
    shell    => '/bin/tsch',
  }
}
