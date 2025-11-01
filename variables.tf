# Custom Maps to override default values.
variable "custom_environments_map" {
  description = "Optional map to override or extend the default environment names. Keys are environment names, values are the abbreviation."
  type        = map(string)
  default     = {}
}

variable "custom_locations_map" {
  description = "Optional map to override or extend the default Azure locations. 'display_name' and 'paired_region' are optional."
  type = map(object({
    display_name  = optional(string)
    paired_region = optional(string)
    short_name    = string
  }))
  default = {}
}

variable "custom_resource_types_map" {
  description = "Optional map to override or extend the default resource types. Keys are resource type names. 'max_length' and 'reg_exp' are optional."
  type = map(object({
    abbr           = string
    support_dashes = bool
    max_length     = optional(number)
    reg_exp        = optional(string)
  }))
  default = {}
}

####################################### Input variables #######################################
variable "environment" {
  description = "The name of the Environment to use to generate the names."
  type        = string
}

variable "location" {
  description = "Programmatic name of the Azure Location to use to generate the names."
  type        = string
}

variable "generator" {
  description = <<EOT
Map of domains and resource types with the quantity of names to generate.
Each domain is a key, and its value is a map of resource types to quantities.
EOT

  type = map(map(number))
  default = {
    domain = {
      resource_group = 1
    }
  }

  validation {
    condition = alltrue([
      for domain, resources in var.generator : (
        domain != null &&
        alltrue([
          for resource_type, count in resources : (
            resource_type != null && count >= 0
          )
        ])
      )
    ])
    error_message = "Each domain must contain valid resource types with non-negative quantities."
  }
}


variable "product_area" {
  type        = string
  description = "Short code (2-4 characters) representing the owning organization, functional team, or portfolio associated with the resources."

  validation {
    condition     = length(var.product_area) >= 2 && length(var.product_area) <= 4
    error_message = "Invalid 'product_area'. It must be between 2 and 4 characters long."
  }
}
