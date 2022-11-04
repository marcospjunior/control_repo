node default {
}

node '0117e8c64c1c.mylabserver.com' {
  include role::master_server
  file { '/root/README':
    ensure => file,
    content => "Welcome to ${fqdn}\n",
  }
}

node /^web/ {
  include role::app_server
}

node /^db/ {
  include role::db_server
}
