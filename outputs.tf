output "ssoadmin_account_assignments_id" {
  description = "Map of id values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ssoadmin_account_assignments_instance_arn" {
  description = "Map of instance_arn values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.instance_arn if v.instance_arn != null && length(v.instance_arn) > 0 }
}
output "ssoadmin_account_assignments_permission_set_arn" {
  description = "Map of permission_set_arn values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.permission_set_arn if v.permission_set_arn != null && length(v.permission_set_arn) > 0 }
}
output "ssoadmin_account_assignments_principal_id" {
  description = "Map of principal_id values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.principal_id if v.principal_id != null && length(v.principal_id) > 0 }
}
output "ssoadmin_account_assignments_principal_type" {
  description = "Map of principal_type values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.principal_type if v.principal_type != null && length(v.principal_type) > 0 }
}
output "ssoadmin_account_assignments_region" {
  description = "Map of region values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ssoadmin_account_assignments_target_id" {
  description = "Map of target_id values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.target_id if v.target_id != null && length(v.target_id) > 0 }
}
output "ssoadmin_account_assignments_target_type" {
  description = "Map of target_type values across all ssoadmin_account_assignments, keyed the same as var.ssoadmin_account_assignments"
  value       = { for k, v in aws_ssoadmin_account_assignment.ssoadmin_account_assignments : k => v.target_type if v.target_type != null && length(v.target_type) > 0 }
}

