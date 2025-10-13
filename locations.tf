locals {
  locations_map = merge(local.default_locations_map, var.custom_locations_map)
}

locals {
  effective_locations_map = merge(local.locations_map, var.custom_locations_map)

  short_names = {
    for k, v in local.locations_map : v.short_name => k
  }

  duplicate_short_names = {
    for sn, region in local.short_names :
    sn => region
    if length([
      for rk, rv in local.locations_map : rk
      if rv.short_name == sn
    ]) > 1
  }

  has_duplicates = length(local.duplicate_short_names) > 0
}


# Regions included are based on https://learn.microsoft.com/en-us/azure/reliability/regions-list
locals {
  default_locations_map = {
    australiacentral = {
      display_name  = "Australia Central"
      paired_region = "australiacentral2"
      short_name    = "auc"
    }
    australiacentral2 = {
      display_name  = "Australia Central 2"
      paired_region = "australiacentral"
      short_name    = "auc2"
    }
    australiaeast = {
      display_name  = "Australia East"
      paired_region = "australiasoutheast"
      short_name    = "aue"
    }
    australiasoutheast = {
      display_name  = "Australia Southeast"
      paired_region = "australiaeast"
      short_name    = "ause"
    }
    austriaeast = {
      display_name  = "Austria East"
      paired_region = null
      short_name    = "ate"
    }
    belgiumcentral = {
      display_name  = "Belgium Central"
      paired_region = null
      short_name    = "bec"
    }
    brazilsouth = {
      display_name  = "Brazil South"
      paired_region = "southcentralus"
      short_name    = "brs"
    }
    brazilsoutheast = {
      display_name  = "Brazil Southeast"
      paired_region = "brazilsouth"
      short_name    = "brse"
    }
    canadacentral = {
      display_name  = "Canada Central"
      paired_region = "canadaeast"
      short_name    = "cac"
    }
    canadaeast = {
      display_name  = "Canada East"
      paired_region = "canadacentral"
      short_name    = "cae"
    }
    centralindia = {
      display_name  = "Central India"
      paired_region = "southindia"
      short_name    = "inc"
    }
    centralus = {
      display_name  = "Central US"
      paired_region = "eastus2"
      short_name    = "uc"
    }
    chilecentral = {
      display_name  = "Chile Central"
      paired_region = null
      short_name    = "clc"
    }
    eastasia = {
      display_name  = "East Asia"
      paired_region = "southeastasia"
      short_name    = "ae"
    }
    eastus = {
      display_name  = "East US"
      paired_region = "westus"
      short_name    = "ue"
    }
    eastus2 = {
      display_name  = "East US 2"
      paired_region = "centralus"
      short_name    = "ue2"
    }
    francecentral = {
      display_name  = "France Central"
      paired_region = "francesouth"
      short_name    = "fc"
    }
    francesouth = {
      display_name  = "France South"
      paired_region = "francecentral"
      short_name    = "fs"
    }
    germanynorth = {
      display_name  = "Germany North"
      paired_region = "germanywestcentral"
      short_name    = "gn"
    }
    germanywestcentral = {
      display_name  = "Germany West Central"
      paired_region = "germanynorth"
      short_name    = "gwc"
    }
    indonesiacentral = {
      display_name  = "Indonesia Central"
      paired_region = null
      short_name    = "idc"
    }
    israelcentral = {
      display_name  = "Israel Central"
      paired_region = null
      short_name    = "ilc"
    }
    italynorth = {
      display_name  = "Italy North"
      paired_region = null
      short_name    = "itn"
    }
    japaneast = {
      display_name  = "Japan East"
      paired_region = "japanwest"
      short_name    = "jpe"
    }
    japanwest = {
      display_name  = "Japan West"
      paired_region = "japaneast"
      short_name    = "jpw"
    }
    koreacentral = {
      display_name  = "Korea Central"
      paired_region = "koreasouth"
      short_name    = "krc"
    }
    koreasouth = {
      display_name  = "Korea South"
      paired_region = "koreacentral"
      short_name    = "krs"
    }
    malaysiawest = {
      display_name  = "Malaysia West"
      paired_region = null
      short_name    = "myw"
    }
    mexicocentral = {
      display_name  = "Mexico Central"
      paired_region = null
      short_name    = "mxc"
    }
    newzealandnorth = {
      display_name  = "New Zealand North"
      paired_region = null
      short_name    = "nzn"
    }
    northcentralus = {
      display_name  = "North Central US"
      paired_region = "southcentralus"
      short_name    = "unc"
    }
    northeurope = {
      display_name  = "North Europe"
      paired_region = "westeurope"
      short_name    = "en"
    }
    norwayeast = {
      display_name  = "Norway East"
      paired_region = "norwaywest"
      short_name    = "nwe"
    }
    norwaywest = {
      display_name  = "Norway West"
      paired_region = "norwayeast"
      short_name    = "nww"
    }
    notapplicable = {
      display_name  = "Not Applicable"
      paired_region = null
      short_name    = ""
    }
    polandcentral = {
      display_name  = "Poland Central"
      paired_region = null
      short_name    = "plc"
    }
    qatarcentral = {
      display_name  = "Qatar Central"
      paired_region = null
      short_name    = "qac"
    }
    southafricanorth = {
      display_name  = "South Africa North"
      paired_region = "southafricawest"
      short_name    = "san"
    }
    southafricawest = {
      display_name  = "South Africa West"
      paired_region = "southafricanorth"
      short_name    = "saw"
    }
    southcentralus = {
      display_name  = "South Central US"
      paired_region = "northcentralus"
      short_name    = "usc"
    }
    southeastasia = {
      display_name  = "Southeast Asia"
      paired_region = "eastasia"
      short_name    = "ase"
    }
    southindia = {
      display_name  = "South India"
      paired_region = "centralindia"
      short_name    = "ins"
    }
    spaincentral = {
      display_name  = "Spain Central"
      paired_region = null
      short_name    = "esc"
    }
    swedencentral = {
      display_name  = "Sweden Central"
      paired_region = "swedensouth"
      short_name    = "sec"
    }
    swedensouth = {
      display_name  = "Sweden South"
      paired_region = null
      short_name    = "ses"
    }
    switzerlandnorth = {
      display_name  = "Switzerland North"
      paired_region = "switzerlandwest"
      short_name    = "szn"
    }
    switzerlandwest = {
      display_name  = "Switzerland West"
      paired_region = "switzerlandnorth"
      short_name    = "szw"
    }
    uaecentral = {
      display_name  = "UAE Central"
      paired_region = "uaenorth"
      short_name    = "uac"
    }
    uaenorth = {
      display_name  = "UAE North"
      paired_region = "uaecentral"
      short_name    = "uan"
    }
    uksouth = {
      display_name  = "UK South"
      paired_region = "ukwest"
      short_name    = "uks"
    }
    ukwest = {
      display_name  = "UK West"
      paired_region = "uksouth"
      short_name    = "ukw"
    }
    westcentralus = {
      display_name  = "West Central US"
      paired_region = "westus2"
      short_name    = "uwc"
    }
    westeurope = {
      display_name  = "West Europe"
      paired_region = "northeurope"
      short_name    = "ew"
    }
    westindia = {
      display_name  = "West India"
      paired_region = "southindia"
      short_name    = "inw"
    }
    westus = {
      display_name  = "West US"
      paired_region = "eastus"
      short_name    = "uw"
    }
    westus2 = {
      display_name  = "West US 2"
      paired_region = "westcentralus"
      short_name    = "uw2"
    }
    westus3 = {
      display_name  = "West US 3"
      paired_region = "eastus"
      short_name    = "uw3"
    }
  }
}
