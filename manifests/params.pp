# @summary Parameter definiton
#
# @example
#   include chronograf::params
class chronograf::params (
  Boolean $manager_repo = true,
  String $package_name = 'chronograf',
  String $ensure_package = 'present',
  String $repo_location = 'https://repos.influxdata.com/',
  String $repo_type = 'stable',

  String $group = 'chronograf',
  Enum['present', 'absent'] $group_manage = 'present',
  Boolean $group_system = true,
  String $user = 'chronograf',
  Enum['present', 'absent'] $user_manage = 'present',
  Boolean $user_system = true,
  Boolean $user_manage_home = true,
  String $user_home = '/var/lib/',

  String $service_defaults = '/etc/default/chronograf',
  Enum['present', 'absent'] $service_defaults_manage = 'present',
  String $service_defaults_template = 'chronograf/service-defaults.erb',
  String $service_definition = '/lib/systemd/system/chronograf.service',
  Enum['present', 'absent'] $service_definition_manage = 'present',
  String $service_definition_template = 'chronograf/systemd.service.erb',
  String $service_name = 'chronograf',
  String $service_provider = 'systemd',
  Enum['running', 'absent'] $service_ensure = 'running',
  Boolean $service_enable = true,
  Boolean $service_has_status = true,
  Boolean $service_has_restart = true,
  Boolean $manage_service = true,
  Boolean $notify_service = true,

  String $host = '0.0.0.0',
  String $port = '8888',
  String $bolt_path ='/var/lib/chronograf/chronograf-v1.db',
  String $canned_path = '/usr/share/chronograf/canned',
  String $protoboards_path = '/usr/share/chronograf/protoboards',
  String $resources_path = '/usr/share/chronograf/resources',
  Enum['directory', 'absent'] $resources_path_manage = 'directory',
  String $basepath = '',
  String $status_feed_url = 'https://www.influxdata.com/feed/json',

  Hash $connection_influx = {},
  String $influx_connection_template = 'chronograf/influx_connection.erb',
  Hash $connection_kapacitor = {},
  String $kapacitor_connection_template = 'chronograf/kapacitor_connection.erb',
){

}