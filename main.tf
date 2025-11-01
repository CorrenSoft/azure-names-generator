locals {
  environment_abbr  = local.environments_map[var.environment]
  location_abbr     = local.selected_location.short_name
  prefix_parts      = [var.product_area, "${local.environment_abbr}${local.location_abbr}"]
  selected_location = local.locations_map[var.location]

  # Generator configuration for resources
  generator_config = {
    for domain, resources in var.generator : domain => {
      for type, count in resources : type => {
        count     = count
        type      = type
        separator = tobool(local.resource_types[type].support_dashes) ? "-" : ""
        name_parts = compact(flatten([
          local.prefix_parts,
          domain,
          local.resource_types[type].abbr
        ]))
        max_name_length = try(local.resource_types[type].max_name_length, -1)
        index_format    = try(local.resource_types[type].index_format, "%03d")
      }
    }
  }

  generated_names = { for
    domain, resources in local.generator_config : domain => { for # For each 'domain' in the 'generator' map
      type, config in resources : type => [for                    # For each 'resource_type' in the domain
        index in range(1, config.count + 1) :
        "${substr(join(config.separator, config.name_parts), 0, config.max_name_length)}${format(config.index_format, index)}"
    ] }
  }
}

