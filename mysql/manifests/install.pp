class mysql::install (
  $user,
  $group,
) {
    package { ["mysql-server"]:
    ensure  => present,
    require => User[$user],
}
user { $user:
  ensure     => present,
  comment => 'MySQL user',
  gid	=> $group,
  shell	=> '/bin/false',
  require => Group[$group],
}

group { $group:
  ensure => present,
  }
}


