output "core_drg_route_distribution_statements_lookup_id" {
  description = "Map of id values across all core_drg_route_distribution_statements_lookup, keyed the same as var.core_drg_route_distribution_statements_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_core_drg_route_distribution_statements.core_drg_route_distribution_statements_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_drg_route_distribution_statements_lookup_drg_route_distribution_id" {
  description = "Map of drg_route_distribution_id values across all core_drg_route_distribution_statements_lookup, keyed the same as var.core_drg_route_distribution_statements_lookup except keys with no drg_route_distribution_id are omitted"
  value       = { for k, v in data.oci_core_drg_route_distribution_statements.core_drg_route_distribution_statements_lookup : k => v.drg_route_distribution_id if v.drg_route_distribution_id != null && length(v.drg_route_distribution_id) > 0 }
}
output "core_drg_route_distribution_statements_lookup_drg_route_distribution_statements" {
  description = "Map of drg_route_distribution_statements values across all core_drg_route_distribution_statements_lookup, keyed the same as var.core_drg_route_distribution_statements_lookup except keys with no drg_route_distribution_statements are omitted"
  value       = { for k, v in data.oci_core_drg_route_distribution_statements.core_drg_route_distribution_statements_lookup : k => v.drg_route_distribution_statements if v.drg_route_distribution_statements != null && length(v.drg_route_distribution_statements) > 0 }
}
output "core_drg_route_distribution_statements_lookup_filter" {
  description = "Map of filter values across all core_drg_route_distribution_statements_lookup, keyed the same as var.core_drg_route_distribution_statements_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_core_drg_route_distribution_statements.core_drg_route_distribution_statements_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}

