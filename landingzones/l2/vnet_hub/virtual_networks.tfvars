vnets = {
  hub_vnet = {
    resource_group_key = "hub_network"
    region             = "region1"
    vnet = {
      name          = "p-we1net-network-vnet"
      address_space = ["172.17.0.0/22"]
    }
    specialsubnets = {
      AzureFirewallSubnet = {
        name = "AzureFirewallSubnet" 
        cidr = ["172.17.1.0/24"]
      }
      GatewaySubnet = {
        name = "GatewaySubnet" 
        cidr = ["172.17.0.0/24"]
      }
    }
    subnets = {}
  }
}