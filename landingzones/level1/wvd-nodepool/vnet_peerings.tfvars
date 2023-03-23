vnet_peerings_v1 = {

  adds_TO_wvd_vnet = {
    name = "adds_TO_wvd_vnet"
    from = {
      lz_key = "adds"
      vnet_key = "adds_network"
    }
    to = {
      lz_key = "wvd_nodepool"
      vnet_key = "wvd_network"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = false
    allow_gateway_transit        = false
    use_remote_gateways          = false
  }

  wvd_vnet_TO_adds = {
    name = "wvd_vnet_TO_adds"
    from = {
      lz_key = "wvd_nodepool"
      vnet_key = "wvd_network"
    }
    to = {
      lz_key = "adds"
      vnet_key = "adds_network"
    }
    allow_virtual_network_access = true
    allow_forwarded_traffic      = true
    allow_gateway_transit        = true
    use_remote_gateways          = false
  }

}