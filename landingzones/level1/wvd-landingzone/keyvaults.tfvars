
keyvaults = {
  host_pool_secrets = {
    region              = "region1"
    name                = "pwvdhostpool20230323kv"
    resource_group_key  = "wvd_hostpool"
    sku_name            = "standard"
    soft_delete_enabled = true
    creation_policies = {
      logged_in_user = {
        # if the key is set to "logged_in_user" add the user running terraform in the keyvault policy
        # More examples in /examples/keyvault
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
    
  }

}

