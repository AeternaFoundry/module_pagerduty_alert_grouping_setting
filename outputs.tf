output "alert_grouping_settings_id" {
  description = "Map of id values across all alert_grouping_settings, keyed the same as var.alert_grouping_settings except keys with no id are omitted"
  value       = { for k, v in pagerduty_alert_grouping_setting.alert_grouping_settings : k => v.id if v.id != null && length(v.id) > 0 }
}
output "alert_grouping_settings_config" {
  description = "Map of config values across all alert_grouping_settings, keyed the same as var.alert_grouping_settings except keys with no config are omitted"
  value       = { for k, v in pagerduty_alert_grouping_setting.alert_grouping_settings : k => v.config if v.config != null && length(v.config) > 0 }
}
output "alert_grouping_settings_description" {
  description = "Map of description values across all alert_grouping_settings, keyed the same as var.alert_grouping_settings except keys with no description are omitted"
  value       = { for k, v in pagerduty_alert_grouping_setting.alert_grouping_settings : k => v.description if v.description != null && length(v.description) > 0 }
}
output "alert_grouping_settings_name" {
  description = "Map of name values across all alert_grouping_settings, keyed the same as var.alert_grouping_settings except keys with no name are omitted"
  value       = { for k, v in pagerduty_alert_grouping_setting.alert_grouping_settings : k => v.name if v.name != null && length(v.name) > 0 }
}
output "alert_grouping_settings_services" {
  description = "Map of services values across all alert_grouping_settings, keyed the same as var.alert_grouping_settings except keys with no services are omitted"
  value       = { for k, v in pagerduty_alert_grouping_setting.alert_grouping_settings : k => v.services if v.services != null && length(v.services) > 0 }
}
output "alert_grouping_settings_type" {
  description = "Map of type values across all alert_grouping_settings, keyed the same as var.alert_grouping_settings except keys with no type are omitted"
  value       = { for k, v in pagerduty_alert_grouping_setting.alert_grouping_settings : k => v.type if v.type != null && length(v.type) > 0 }
}

