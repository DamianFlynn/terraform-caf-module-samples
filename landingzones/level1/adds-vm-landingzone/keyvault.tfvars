keyvaults = {
  adds_keyvault = {
    name               = "p-we1dc-adds-20220323-kv"
    resource_group_key = "adds"
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