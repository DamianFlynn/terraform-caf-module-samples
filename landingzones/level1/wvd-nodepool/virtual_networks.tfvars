
vnets = {
  wvd_network = {
    region             = "region1"
    resource_group_key = "wvd_network"
    vnet = {
      name          = "p-wvd-network"
      address_space = ["10.75.12.0/23"]
      dns_servers   = ["10.75.6.4"]
    }
    subnets = {
      wvd_hosts = {
        name = "wvdHostsSubnet"
        cidr = ["10.75.12.0/26"]
        nsg_key = "wvd_hosts"
      }
      AzureBastionSubnet = {
        name    = "AzureBastionSubnet" #Must be called AzureBastionSubnet
        cidr    = ["10.75.12.128/26"]
        nsg_key = "azure_bastion_nsg"
      }
    }

    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "networking_all"
        destination_type = "log_analytics"
        lz_key = "mgt-logs"
        destination_key  = "central_logs"
      }
    }

  }
}


