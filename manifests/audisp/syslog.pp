class auditd::audisp::syslog (
  $path = $auditd::params::auditd_audisp_syslog_path,
  $type = $auditd::params::auditd_audisp_syslog_type,
  $args = 'LOG_INFO',

) {
  auditd::audisp::plugin { 'syslog':
    path    => $path,
    type    => $type,
    args    => $args,
    require => Package['auditd'],
  }
}
