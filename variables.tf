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

##############################################

# Input variables
variable "environment" {
  description = "The name of the Environment to use to generate the names."
  type        = string
}

variable "location" {
  description = "Programmatic name of the Azure Location to use to generate the names."
  type        = string
}
