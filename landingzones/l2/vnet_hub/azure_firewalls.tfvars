azurerm_firewalls = {
  azfw = {
    name                = "p-we1net-network-fw"
    resource_group_key  = "hub_network"
    vnet_key            = "hub_vnet"
    sku_tier            = "Premium"
    zones               = [1, 2, 3]
    firewall_policy_key = "policy1"
    public_ips = {
      ip1 = {
        name          = "p-we1net-network-fw-pip1"
        public_ip_key = "fw_pip1"
        vnet_key      = "hub_vnet"
        subnet_key    = "AzureFirewallSubnet"
        # lz_key = "lz_key"
      }
    }
  }
}
