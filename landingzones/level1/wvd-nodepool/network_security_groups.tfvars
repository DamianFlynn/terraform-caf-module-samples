
network_security_group_definition = {
  # This entry is applied to all subnets with no NSG defined

  empty_nsg = {
    resource_group_key = "wvd_network"
    name               = "empty_nsg"

    diagnostic_profiles = {
#      nsg = {
#        definition_key   = "network_security_group"
#        destination_type = "storage"
#        destination_key  = "all_regions"
#        lz_key = "mgt-logs"
#      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
        lz_key = "mgt-logs"
      }
    }
    nsg = []
  }

  azure_bastion_nsg = {
    resource_group_key = "wvd_network"
    name               = "azure_bastion_nsg"

    diagnostic_profiles = {
#      nsg = {
#        definition_key   = "network_security_group"
#        destination_type = "storage"
#        destination_key  = "all_regions"
#      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
        lz_key = "mgt-logs"
      }
    }

    nsg = [
      {
        name                       = "bastion-in-allow",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-control-in-allow-443",
        priority                   = "120"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "135"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "Kerberos-password-change",
        priority                   = "121"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "4443"
        source_address_prefix      = "GatewayManager"
        destination_address_prefix = "*"
      },
      {
        name                       = "bastion-vnet-out-allow-22",
        priority                   = "103"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-vnet-out-allow-3389",
        priority                   = "101"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "*"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "bastion-azure-out-allow",
        priority                   = "120"
        direction                  = "Outbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "443"
        source_address_prefix      = "*"
        destination_address_prefix = "AzureCloud"
      }

    ]
  }


  wvd_hosts = {
    resource_group_key = "wvd_network"
    name               = "wvdhosts"

    diagnostic_profiles = {
#      nsg = {
#        definition_key   = "network_security_group"
#        destination_key  = "all_regions"
#        destination_type = "storage"
#      }
      operations = {
        name             = "operations"
        definition_key   = "network_security_group"
        destination_type = "log_analytics"
        destination_key  = "central_logs"
        lz_key = "mgt-logs"
      }
    }

    nsg = [
      {
        name                       = "AllowDNSfromDC",
        priority                   = "100"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Udp"
        source_port_range          = "*"
        destination_port_range     = "53"
        source_address_prefix      = "10.75.6.4"
        destination_address_prefix = "*"
      },
      {
        name                       = "AllowSshInboundFromBastion",
        priority                   = "200"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "10.75.12.128/26"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "AllowRdpInboundFromBastion",
        priority                   = "210"
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "tcp"
        source_port_range          = "*"
        destination_port_range     = "3389"
        source_address_prefix      = "10.75.12.128/26"
        destination_address_prefix = "VirtualNetwork"
      },
      {
        name                       = "DenyAll",
        priority                   = "4000"
        direction                  = "Inbound"
        access                     = "Deny"
        protocol                   = "*"
        source_port_range          = "*"
        destination_port_range     = "*"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
      }
    ]
  }

}