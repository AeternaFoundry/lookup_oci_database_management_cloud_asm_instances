data "oci_database_management_cloud_asm_instances" "database_management_cloud_asm_instances_lookup" {
  for_each = var.database_management_cloud_asm_instances_lookup

  cloud_asm_id   = each.value.cloud_asm_id
  compartment_id = each.value.compartment_id
  display_name   = each.value.display_name

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

