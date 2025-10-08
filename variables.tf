variable "environment" {
  description = "The name of the Environment used to generate the names."
  type        = string
  validation {
    condition = (
      var.environment != null
      && contains(["shared_services", "production", "staging", "development"], var.environment)
    )
    error_message = "Invalid 'environment'. It must not be null and be one of: production, staging, development, shared_services."
  }
}

variable "location" {
  description = "Location used to generate the names."
  type        = string
}
