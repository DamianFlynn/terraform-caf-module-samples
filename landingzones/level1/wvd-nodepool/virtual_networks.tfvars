
vnets = {
  wvd_network = {
    region             = "region1"
    resource_group_key = "wvd_network"
    vnet = {
      name          = "p-wvd-network"
      address_space = ["10.75.12.0/25"]
      dns_servers   = ["10.75.10.4"]
    }
    subnets = {
      wvd_hosts = {
        name = "wvdHostsSubnet"
        cidr = ["10.75.12.0/26"]
        nsg_key = "node_nsg"
      }
    }

  }
}


