wvd_workspaces = {
  wvd_ws1 = {
    resource_group_key = "wvd_workspace"
    name               = "p-wvd-workspace"
    friendly_name      = "My Sample Workspace"
    description        = "A description of my workspace"

    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "azurerm_virtual_desktop_workspace"
        destination_type = "log_analytics"
        lz_key = "mgt-logs"
        destination_key  = "central_logs"
      }
    }
  }
}