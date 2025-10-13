output "environment" {
  description = "Environment value received as input."
  value       = var.environment
}

output "location" {
  description = "Location object used in the module instance."
  value       = var.location
}

output "warning_short_name" {
  description = "Shows a 'warning' if duplicate short_name values are detected."
  value       = local.has_duplicates ? "Warning: Duplicate short_name values found: ${join(", ", keys(local.duplicate_short_names))}" : null
}
