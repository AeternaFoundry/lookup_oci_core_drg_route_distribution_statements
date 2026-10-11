data "oci_core_drg_route_distribution_statements" "core_drg_route_distribution_statements_lookup" {
  for_each = var.core_drg_route_distribution_statements_lookup

  drg_route_distribution_id = each.value.drg_route_distribution_id

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

