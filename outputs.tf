output "environment" {
  description = "Environment value received as input."
  value       = var.environment
}

output "environment_abbr" {
  description = "The abbreviated environment name."
  value       = local.environment_abbr
}

output "generated_names" {
  description = "A map containing the generated names."
  value       = local.generated_names
}

output "location" {
  description = "Location object used in the module instance."
  value       = local.selected_location
}

output "warning_short_name" {
  description = "Shows a 'warning' if duplicate short_name values are detected."
  value       = local.has_duplicates ? "Warning: Duplicate short_name values found: ${join(", ", keys(local.duplicate_short_names))}" : null
}
