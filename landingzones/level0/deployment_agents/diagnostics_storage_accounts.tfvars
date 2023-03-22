diagnostic_storage_accounts = {
  # Stores boot diagnostic for region1
  deployment_agents = {
    name                     = "p-iac-agents-diag"
    resource_group_key       = "deployment_agents"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    access_tier              = "Cool"
  }
}