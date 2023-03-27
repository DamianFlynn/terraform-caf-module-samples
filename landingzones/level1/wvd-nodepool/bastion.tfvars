bastion_hosts = {
  bastion_hub_re1 = {
    name               = "p-wvd-network-bastion"
    region             = "region1"
    resource_group_key = "wvd_network"
    vnet_key           = "wvd_network"
    subnet_key         = "AzureBastionSubnet"
    public_ip_key      = "bastion_host"

    # you can setup up to 5 profiles
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "bastion_host"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
      }
    }
  }

}