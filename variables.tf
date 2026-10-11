variable "core_drg_route_distribution_statements_lookup" {
  description = <<EOT
Map of core_drg_route_distribution_statements_lookup, attributes below
Required:
    - drg_route_distribution_id
Optional:
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    drg_route_distribution_id = string
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

