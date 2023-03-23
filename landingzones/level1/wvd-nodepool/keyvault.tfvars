keyvaults = {
  wvd_nodes_keyvault = {
    name               = "p-wvd-nodes-20220323-kv"
    resource_group_key = "wvd_nodes"
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