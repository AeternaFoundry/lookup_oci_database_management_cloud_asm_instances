variable "database_management_cloud_asm_instances_lookup" {
  description = <<EOT
Map of database_management_cloud_asm_instances_lookup, attributes below
Optional:
    - cloud_asm_id
    - compartment_id
    - display_name
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    cloud_asm_id   = optional(string)
    compartment_id = optional(string)
    display_name   = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

