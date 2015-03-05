class profile::base (
  $sshd_options = {},
  $sshd_subsystems = {},
) {
  create_resources('sshd_config',$sshd_options)
  create_resources('sshd_config_subsystem',$sshd_subsystems)
}
