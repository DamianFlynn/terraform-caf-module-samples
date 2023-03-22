vnets = {
  deployment_agents_network = {
    resource_group_key = "deployment_agents_network"
    vnet = {
      name          = "p-iac-network-vnet"
      address_space = ["10.101.10.0/24", "10.101.8.0/23"]
    }
    subnets = {
      level0 = {
        name                                           = "level0Subnet"
        cidr                                           = ["10.101.10.0/27"]
        enforce_private_link_endpoint_network_policies = true
      }
    }
  }
}