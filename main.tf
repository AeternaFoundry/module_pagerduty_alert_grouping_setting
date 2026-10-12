resource "pagerduty_alert_grouping_setting" "alert_grouping_settings" {
  for_each = var.alert_grouping_settings

  services    = each.value.services
  type        = each.value.type
  description = each.value.description
  name        = each.value.name

  dynamic "config" {
    for_each = each.value.config != null ? each.value.config : []
    content {
      aggregate   = config.value.aggregate
      fields      = config.value.fields
      iag_fields  = config.value.iag_fields
      time_window = config.value.time_window
      timeout     = config.value.timeout
    }
  }
}

