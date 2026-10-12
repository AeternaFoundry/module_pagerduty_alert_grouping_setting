variable "alert_grouping_settings" {
  description = <<EOT
Map of alert_grouping_settings, attributes below
Required:
    - services
    - type
Optional:
    - description
    - name
    - config (block):
        - aggregate (optional)
        - fields (optional)
        - iag_fields (optional)
        - time_window (optional)
        - timeout (optional)
EOT

  type = map(object({
    services    = set(string)
    type        = string
    description = optional(string)
    name        = optional(string)
    config = optional(list(object({
      aggregate   = optional(string)
      fields      = optional(set(string))
      iag_fields  = optional(list(string))
      time_window = optional(number)
      timeout     = optional(number)
    })))
  }))
}

