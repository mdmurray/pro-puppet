class mysql::service (
  $enabled,
  $ensure,
){

  service { "mysql":
    ensure	=> running,
    hasstatus	=> true,
    hasrestart	=> true,
    enable	=> true,
    require	=> Class['mysql::config'],
  }
}

