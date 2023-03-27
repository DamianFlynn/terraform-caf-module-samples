vnets = {
  vnet_region1 = {
    resource_group_key = "gitops"
    vnet = {
      name          = "gitops"
      address_space = ["10.101.10.0/24", "10.101.8.0/23"]
    }
    subnets = {
      level0 = {
        name                                           = "level0"
        cidr                                           = ["10.101.10.0/27"]
        enforce_private_link_endpoint_network_policies = true
      }
      level1 = {
        name                                           = "level1"
        cidr                                           = ["10.101.10.32/27"]
        enforce_private_link_endpoint_network_policies = true
      }
      level2 = {
        name                                           = "level2"
        cidr                                           = ["10.101.10.64/27"]
        enforce_private_link_endpoint_network_policies = true
      }
      credentials = {
        name                                           = "credentials"
        cidr                                           = ["10.101.10.96/27"]
        enforce_private_link_endpoint_network_policies = true
      }
      gitops = {
        name                                           = "gitops"
        cidr                                           = ["10.101.10.128/27"]
        enforce_private_link_endpoint_network_policies = true
      }
      runners = {
        name    = "runners"
        cidr    = ["10.101.8.0/23"]
        nsg_key = "empty_nsg"
      }
    }
  }
}