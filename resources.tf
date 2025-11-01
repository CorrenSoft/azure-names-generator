locals {
  resource_types = merge(local.default_resource_types_map, var.custom_resource_types_map)
}

locals {
  default_resource_types_map = {
    active_directory_domain_services = {
      abbr           = "adds"
      max_length     = null
      name           = "active_directory_domain_services"
      reg_exp        = null
      support_dashes = true
    }
    app_service = {
      abbr           = "app"
      max_length     = 60
      name           = "app_service"
      reg_exp        = "^[a-zA-Z0-9\\-]{1,60}$"
      support_dashes = true
    }
    app_service_plan = {
      abbr           = "asp"
      max_length     = null
      name           = "app_service_plan"
      reg_exp        = null
      support_dashes = true
    }
    application_load_balancer = {
      abbr           = "alb"
      max_length     = null
      name           = "application_load_balancer"
      reg_exp        = null
      support_dashes = false
    }
    audit_logs = {
      abbr           = "al"
      max_length     = null
      name           = "audit_logs"
      reg_exp        = null
      support_dashes = false
    }
    availability_set = {
      abbr           = "as"
      max_length     = null
      name           = "availability_set"
      reg_exp        = null
      support_dashes = true
    }
    bastion_host = {
      abbr           = "bas"
      max_length     = null
      name           = "bastion_host"
      reg_exp        = null
      support_dashes = true
    }
    communication_service = {
      abbr           = "cs"
      max_length     = null
      name           = "communication_service"
      reg_exp        = null
      support_dashes = true
    }
    compute_gallery = {
      abbr           = "gal"
      max_length     = null
      name           = "compute_gallery"
      reg_exp        = null
      support_dashes = false
    }
    container_instance = {
      abbr           = "aci"
      max_length     = null
      name           = "container_instance"
      reg_exp        = null
      support_dashes = true
    }
    container_registry = {
      abbr           = "acr"
      max_length     = 50
      name           = "container_registry"
      reg_exp        = "^[a-zA-Z0-9]{5,50}$"
      support_dashes = false
    }
    cosmosdb_account = {
      abbr           = "cdb"
      max_length     = null
      name           = "cosmosdb_account"
      reg_exp        = null
      support_dashes = true
    }
    data_collection_rule = {
      abbr           = "dcr"
      max_length     = null
      name           = "data_collection_rule"
      reg_exp        = null
      support_dashes = true
    }
    database_migration_service = {
      abbr           = "dms"
      max_length     = null
      name           = "database_migration_service"
      reg_exp        = null
      support_dashes = true
    }
    express_route_circuit = {
      abbr           = "erc"
      max_length     = null
      name           = "express_route_circuit"
      reg_exp        = null
      support_dashes = true
    }
    express_route_gateway = {
      abbr           = "egw"
      max_length     = null
      name           = "express_route_gateway"
      reg_exp        = null
      support_dashes = true
    }
    firewall = {
      abbr           = "afw"
      max_length     = null
      name           = "firewall"
      reg_exp        = null
      support_dashes = true
    }
    firewall_policy = {
      abbr           = "afwp"
      max_length     = null
      name           = "firewall_policy"
      reg_exp        = null
      support_dashes = true
    }
    frontdoor = {
      abbr           = "ftd"
      max_length     = null
      name           = "frontdoor"
      reg_exp        = null
      support_dashes = true
    }
    function_app = {
      abbr           = "func"
      max_length     = null
      name           = "function_app"
      reg_exp        = null
      support_dashes = true
    }
    ip_group = {
      abbr           = "ipg"
      max_length     = null
      name           = "ip_group"
      reg_exp        = null
      support_dashes = true
    }
    key_vault = {
      abbr           = "kv"
      max_length     = 24
      name           = "key_vault"
      reg_exp        = "^[a-zA-Z0-9\\-]{3,24}$"
      support_dashes = true
    }
    kubernetes_cluster = {
      abbr           = "aks"
      max_length     = null
      name           = "kubernetes_cluster"
      reg_exp        = null
      support_dashes = true
    }
    log_analytics_workspace = {
      abbr           = "log"
      max_length     = null
      name           = "log_analytics_workspace"
      reg_exp        = null
      support_dashes = true
    }
    managed_disk = {
      abbr           = "disk"
      max_length     = null
      name           = "managed_disk"
      reg_exp        = null
      support_dashes = true
    }
    managed_identity = {
      abbr           = "mid"
      max_length     = null
      name           = "managed_identity"
      reg_exp        = null
      support_dashes = true
    }
    management_group = {
      abbr           = "mg"
      max_length     = null
      name           = "management_group"
      reg_exp        = null
      support_dashes = true
    }
    nat_gateway = {
      abbr           = "natgw"
      max_length     = null
      name           = "nat_gateway"
      reg_exp        = null
      support_dashes = true
    }
    network_ddos_protection_plan = {
      abbr           = "ddp"
      max_length     = null
      name           = "network_ddos_protection_plan"
      reg_exp        = null
      support_dashes = true
    }
    network_interface = {
      abbr           = "nic"
      max_length     = null
      name           = "network_interface"
      reg_exp        = null
      support_dashes = true
    }
    network_security_group = {
      abbr           = "nsg"
      max_length     = null
      name           = "network_security_group"
      reg_exp        = null
      support_dashes = true
    }
    network_watcher = {
      abbr           = "nw"
      max_length     = null
      name           = "network_watcher"
      reg_exp        = null
      support_dashes = true
    }
    network_watcher_flow_log = {
      abbr           = "flow"
      max_length     = null
      name           = "network_watcher_flow_log"
      reg_exp        = null
      support_dashes = true
    }
    portal_dashboard = {
      abbr           = "pdb"
      max_length     = null
      name           = "portal_dashboard"
      reg_exp        = null
      support_dashes = true
    }
    postgresql_server = {
      abbr           = "psql"
      max_length     = null
      name           = "postgresql_server"
      reg_exp        = null
      support_dashes = true
    }
    private_dns_forwarding_ruleset = {
      abbr           = "dnsfrs"
      max_length     = null
      name           = "private_dns_forwarding_ruleset"
      reg_exp        = null
      support_dashes = true
    }
    private_dns_resolver = {
      abbr           = "pdnsr"
      max_length     = null
      name           = "private_dns_resolver"
      reg_exp        = null
      support_dashes = true
    }
    private_endpoint = {
      abbr           = "pe"
      max_length     = null
      name           = "private_endpoint"
      reg_exp        = null
      support_dashes = true
    }
    public_ip = {
      abbr           = "pip"
      max_length     = null
      name           = "public_ip"
      reg_exp        = null
      support_dashes = true
    }
    public_ip_prefix = {
      abbr           = "ippre"
      max_length     = null
      name           = "public_ip_prefix"
      reg_exp        = null
      support_dashes = true
    }
    resource_group = {
      abbr           = "rg"
      max_length     = 90
      name           = "resource_group"
      reg_exp        = "^[a-zA-Z0-9_.()\\-]{1,90}$"
      support_dashes = true
    }
    route_table = {
      abbr           = "udr"
      max_length     = null
      name           = "route_table"
      reg_exp        = null
      support_dashes = true
    }
    servicebus_namespace = {
      abbr           = "sbn"
      max_length     = null
      name           = "servicebus_namespace"
      reg_exp        = null
      support_dashes = true
    }
    sql_server = {
      abbr           = "sql"
      max_length     = null
      name           = "sql_server"
      reg_exp        = null
      support_dashes = true
    }
    sql_server_failover_group = {
      abbr           = "sqlfog"
      max_length     = null
      name           = "sql_server_failover_group"
      reg_exp        = null
      support_dashes = true
    }
    storage_account = {
      abbr           = "sa"
      max_length     = 24
      name           = "storage_account"
      reg_exp        = "^[a-z0-9]{3,24}$"
      support_dashes = false
    }
    storage_management_policy = {
      abbr           = "samp"
      max_length     = null
      name           = "storage_management_policy"
      reg_exp        = null
      support_dashes = false
    }
    subscription = {
      abbr           = "sub"
      max_length     = null
      name           = "subscription"
      reg_exp        = null
      support_dashes = true
    }
    user_assigned_identity = {
      abbr           = "id"
      max_length     = null
      name           = "user_assigned_identity"
      reg_exp        = null
      support_dashes = true
    }
    virtual_machine = {
      abbr           = "vm"
      max_length     = 15
      name           = "virtual_machine"
      reg_exp        = "^[a-zA-Z0-9\\-]{1,15}$"
      support_dashes = true
    }
    virtual_machine_scale_set = {
      abbr           = "ss"
      max_length     = null
      name           = "virtual_machine_scale_set"
      reg_exp        = null
      support_dashes = true
    }
    virtual_network = {
      abbr           = "vnet"
      max_length     = null
      name           = "virtual_network"
      reg_exp        = null
      support_dashes = true
    }
    virtual_network_gateway = {
      abbr           = "vgw"
      max_length     = null
      name           = "virtual_network_gateway"
      reg_exp        = null
      support_dashes = true
    }
    vpn_gateway = {
      abbr           = "vpn"
      max_length     = null
      name           = "vpn_gateway"
      reg_exp        = null
      support_dashes = true
    }
  }
}
