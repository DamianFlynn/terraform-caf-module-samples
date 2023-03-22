keyvaults = {
  deployment_agents = {
    name               = "p-iac-agents-20230222-kv"
    resource_group_key = "deployment_agents"
    sku_name           = "standard"
    creation_policies = {
      logged_in_user = {
        secret_permissions = ["Set", "Get", "List", "Delete", "Purge", "Recover"]
      }
    }
  }
}