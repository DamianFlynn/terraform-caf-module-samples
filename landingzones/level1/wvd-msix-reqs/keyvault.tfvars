keyvaults = {
  wvd_msix_sa_keyvault = {
    name               = "p-wvd-msix-230328-kv"
    resource_group_key = "wvd_msix_reqs"
    sku_name           = "standard"
    tags = {
      env = "Standalone"
    }
    creation_policies = {
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}