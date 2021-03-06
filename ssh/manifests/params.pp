class ssh::params {
  case $::osfamily {
    Solaris: {
      $ssh_package_name = 'openssh'
      $ssh_service_config = '/etc/opt/csq/ssh/sshd_config'
      $ssh_service_name = 'cwopenssh'
    }
    Debian: {
      $ssh_package_name = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name = 'ssh'
    }
    RedHat: {
      $ssh_package_name = 'openssh-server'
      $ssh_service_config = '/etc/ssh/sshd_config'
      $ssh_service_name = 'sshd'
    }
    default: {
      fail("Module propuppet-ssh does not support osdamily: ${::osfamily}")
    }
  }
}

