public_ip_addresses = {

  bastion_host = {
    name                    = "p-wdv-network-bastion-pip1"
    region                  = "region1"
    resource_group_key      = "wvd_network"
    sku                     = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"

    
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "public_ip_address"
        destination_type = "log_analytics"
        lz_key = "mgt-logs"
        destination_key  = "central_logs"
      }
    }
  }

}

