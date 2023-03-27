private_dns = {
  "privatelink.azurecr.io" = {
    name               = "privatelink.azurecr.io"
    resource_group_key = "gitops"
    vnet_links = {
      vnet_region1 = {
        name     = "gitops-region1"
        vnet_key = "vnet_region1"
      }
    }
  }
  "privatelink.blob.core.windows.net" = {
    name               = "privatelink.blob.core.windows.net"
    resource_group_key = "gitops"
    vnet_links = {
      vnet_region1 = {
        name     = "gitops-region1"
        vnet_key = "vnet_region1"
      }
    }
  }
  "privatelink.queue.core.windows.net" = {
    name               = "privatelink.queue.core.windows.net"
    resource_group_key = "gitops"
    vnet_links = {
      vnet_region1 = {
        name     = "gitops-region1"
        vnet_key = "vnet_region1"
      }
    }
  }
  "privatelink.vaultcore.azure.net" = {
    name               = "privatelink.vaultcore.azure.net"
    resource_group_key = "gitops"
    vnet_links = {
      vnet_region1 = {
        name     = "gitops-region1"
        vnet_key = "vnet_region1"
      }
    }
  }
}