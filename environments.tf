locals {
  default_environments_map = {
    demo                    = "dm"
    development             = "dv"
    integration             = "in"
    non_production          = "np"
    playground              = "pg"
    pre_production          = "pp"
    production              = "pd"
    quality_assurance       = "qa"
    sandbox                 = "sb"
    staging                 = "st"
    testing                 = "ts"
    user_acceptance_testing = "ut"
    performance_testing     = "pt"
  }
}

locals {
  environments_map = merge(local.default_environments_map, var.custom_environments_map)
}
