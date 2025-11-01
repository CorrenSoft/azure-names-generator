terraform {
}

module "name_generator" {
  source       = "../"
  environment  = "development"
  location     = "eastus"
  product_area = "xyz"
  generator = {
    domain = {
      resource_group  = 1
      storage_account = 2
    }
  }
}

output "outputs" {
  description = "Generic output."
  value       = module.name_generator
}
