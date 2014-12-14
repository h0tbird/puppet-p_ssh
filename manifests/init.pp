class p_ssh (

  # Global parameters:
  $ensure  = undef,
  $version = undef,
  $roles   = undef,

  # Client parameters:
  $client_gss_api_authentication = undef,
  $client_forward_x11_trusted    = undef,
  $client_send_env               = undef,

  # Server parameters:
  $server_accept_env                        = undef,
  $server_authorized_keys_file              = undef,
  $server_challenge_response_authentication = undef,
  $server_gss_api_authentication            = undef,
  $server_gss_api_cleanup_credentials       = undef,
  $server_host_key                          = undef,
  $server_log_level                         = undef,
  $server_password_authentication           = undef,
  $server_permit_user_environment           = undef,
  $server_subsystem                         = undef,
  $server_syslog_facility                   = undef,
  $server_use_dns                           = undef,
  $server_use_pam                           = undef,
  $server_use_privilege_separation          = undef,
  $server_x11_forwarding                    = undef,

) {

  class { '::ssh':
    ensure                                   => $ensure,
    version                                  => $version,
    roles                                    => $roles,
    client_gss_api_authentication            => $client_gss_api_authentication,
    client_forward_x11_trusted               => $client_forward_x11_trusted,
    client_send_env                          => $client_send_env,
    server_accept_env                        => $server_accept_env,
    server_authorized_keys_file              => $server_authorized_keys_file,
    server_challenge_response_authentication => $server_challenge_response_authentication,
    server_gss_api_authentication            => $server_gss_api_authentication,
    server_gss_api_cleanup_credentials       => $server_gss_api_cleanup_credentials,
    server_host_key                          => $server_host_key,
    server_log_level                         => $server_log_level,
    server_password_authentication           => $server_password_authentication,
    server_permit_user_environment           => $server_permit_user_environment,
    server_subsystem                         => $server_subsystem,
    server_syslog_facility                   => $server_syslog_facility,
    server_use_dns                           => $server_use_dns,
    server_use_pam                           => $server_use_pam,
    server_use_privilege_separation          => $server_use_privilege_separation,
    server_x11_forwarding                    => $server_x11_forwarding,
  }
}
