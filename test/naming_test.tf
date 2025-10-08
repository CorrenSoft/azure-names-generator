terraform {
}

module "name_generator" {
  source      = "../"
  environment = "develoopment"
  location    = "eastus"
}

output "outputs" {
  description = "Generic output."
  value       = module.name_generator
}
