variable "ssoadmin_account_assignments" {
  description = <<EOT
Map of ssoadmin_account_assignments, attributes below
Required:
    - instance_arn
    - permission_set_arn
    - principal_id
    - principal_type
    - target_id
    - target_type
Optional:
    - region
EOT

  type = map(object({
    instance_arn       = string
    permission_set_arn = string
    principal_id       = string
    principal_type     = string
    target_id          = string
    target_type        = string
    region             = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.ssoadmin_account_assignments : (
        (length(v.principal_id) >= 1 && length(v.principal_id) <= 47) && (can(regex("^([0-9a-f]{10}-|)[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}$", v.principal_id)))
      )
    ])
    error_message = "all of: must be between 1 and 47 characters; must match ([0-9a-f]{10}-|)[0-9A-Fa-f]{8}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{4}-[0-9A-Fa-f]{12}"
  }
  # Note: 5 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

