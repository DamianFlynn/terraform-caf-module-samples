

azurerm_firewall_policies = {
  policy1 = {
    name               = "firewall_policy"
    resource_group_key = "hub_network"
    region             = "region1"
    sku                = "Premium"

    # Required if you want to use Network rules with FQDNs
    dns = {
      proxy_enabled = true
    }

    #   threat_intelligence_mode = "Alert"

    #   threat_intelligence_allowlist = {
    #     ip_addresses = []
    #     fqdns        = []
    #   }

    #   intrusion_detection = {
    #     mode                = "Alert"
    #     signature_overrides = {
    #       id    = ""
    #       state = ""
    #     }
    #     traffic_bypass      = {
    #       name                  = ""
    #       protocol              = ""
    #       description           = ""
    #       destination_addresses = ""
    #       destination_ip_groups = ""
    #       destination_ports     = ""
    #       source_addresses      = ""
    #       source_ip_groups      = ""
    #     }
  }
}

azurerm_firewall_policy_rule_collection_groups = {
  group1 = {
    #firewall_policy_id = "Azure Resource ID"
    firewall_policy_key = "policy1"
    name                = "example-fwpolicy-rcg"
    priority            = 500

    application_rule_collections = {
      rule1 = {
        name     = "app_rule_collection1"
        priority = 500
        action   = "Deny"
        rules = {
          rule1 = {
            name = "app_rule_collection1_rule1"
            protocols = {
              1 = {
                type = "Http"
                port = 80
              }
              2 = {
                type = "Https"
                port = 443
              }
            }
            source_addresses  = ["10.0.0.1"]
            destination_fqdns = ["*.microsoft.com"]
          }
        }
      }
    }

    network_rule_collections = {
      group1 = {
        name     = "network_rule_collection1"
        priority = 400
        action   = "Deny"
        rules = {
          rule1 = {
            name                  = "network_rule_collection1_rule1"
            protocols             = ["TCP", "UDP"]
            source_addresses      = ["10.0.0.1"]
            destination_addresses = ["192.168.1.1", "192.168.1.2"]
            destination_ports     = ["80", "1000-2000"]
          }
        }
      }
      group2 = {
        name     = "network_rule_collection2"
        priority = 600
        action   = "Deny"
        rules = {
          rule1 = {
            name              = "network_rule_collection1_rule1"
            protocols         = ["TCP", "UDP"]
            source_addresses  = ["10.0.0.1"]
            destination_fqdns = ["www.microsoft.com"]
            destination_ports = ["80", "1000-2000"]
          }
        }
      }
    }

    nat_rule_collections = {
      group1 = {
        name     = "nat_rule_collection1"
        priority = 300
        action   = "Dnat"
        rules = {
          rule1 = {
            name             = "nat_rule_collection1_rule1"
            protocols        = ["TCP"]
            source_addresses = ["*"]
            # destination_address = "192.168.1.1"
            destination_address_public_ip_key = "fw_pip1"
            destination_ports                 = ["80"]
            translated_address                = "192.168.0.1"
            translated_port                   = "8080"
          }
        }
      }
    }
  }

}