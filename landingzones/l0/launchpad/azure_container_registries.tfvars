azure_container_registries = {
  platform = {
    admin_enabled = true
    name          = "platform"
    network_rule_set = {
      whitelist = {
        default_action = "Deny"
        ip_rules = {
          rule_1 = {
            ip_range = "88.81.97.90"
          }
        }
      }
    }
    private_endpoints = {
      platform = {
        name = "acr-platform"
        private_dns = {
          keys = [
            "privatelink.azurecr.io"
          ]
          zone_group_name = "default"
        }
        private_service_connection = {
          is_manual_connection = false
          name                 = "acr-platform"
          subresource_names = [
            "registry"
          ]
        }
        resource_group_key = "gitops"
        subnet_key         = "gitops"
        vnet_key           = "vnet_region1"
      }
    }
    public_network_access_enabled = true
    resource_group_key            = "gitops"
    sku                           = "Premium"
  }
}