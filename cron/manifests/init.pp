class cron {
  cron { "rdate":
    command => "/usr/bin/rdate -s tick.greyware.com; /sbin/hwclock --systohc > /dev/null 2>&1",
    user    => "root",
    minute  => "5",
  }

  exec {"crond reload":
    command     => "/etc/init.d/crond reload",
    subscribe   => Cron["rdate"],
    refreshonly => true,
  }
}

