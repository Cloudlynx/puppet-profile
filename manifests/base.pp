class profile::base (
  $sshd_options = {},
  $sshd_subsystems = {},
  $certificates = {},
  $vhosts = {}
) {
  include certtool

  create_resources('sshd_config',$sshd_options)
  create_resources('sshd_config_subsystem',$sshd_subsystems)

  create_resources('certtool::cert',$certificates)

  create_resources('apache::vhost', $vhosts)
}
