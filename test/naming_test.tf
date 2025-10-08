terraform {
}

module "name_generator" {
  source      = "../"
  environment = "development"
  location    = "eastus"
}

output "outputs" {
  description = "Generic output."
  value       = module.name_generator
}
