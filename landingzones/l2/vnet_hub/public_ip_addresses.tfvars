public_ip_addresses = {
  fw_pip1 = {
    name               = "p-we1net-network-fw-pip001"
    resource_group_key = "hub_network"
    sku                = "Standard"
    allocation_method       = "Static"
    ip_version              = "IPv4"
    idle_timeout_in_minutes = "4"
  }
}