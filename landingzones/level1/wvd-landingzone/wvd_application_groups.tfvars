wvd_application_groups = {
  wvd_app1 = {
    resource_group_key = "wvd_hostpool"
    host_pool_key      = "wvd_hp1"
    wvd_workspace_key  = "wvd_ws1"
    name               = "firstapp"
    friendly_name      = "Desktopapp"
    description        = "A description of my workspace"
    #Type of Virtual Desktop Application Group. Valid options are RemoteApp or Desktop.
    type = "Desktop"
    
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "azurerm_virtual_desktop_application_group"
        destination_type = "log_analytics"
        lz_key = "mgt-logs"
        destination_key  = "central_logs"
      }
    }
    
  }
}
