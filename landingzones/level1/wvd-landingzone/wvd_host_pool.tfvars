wvd_host_pools = {
  wvd_hp1 = {
    resource_group_key   = "wvd_hostpool"
    name                 = "p-wvd-hostpool-poc"
    friendly_name        = "POC Sample Host Pool"
    description          = "Host Pool for POC Sample"
    validate_environment = false
    type                 = "Pooled"
    #Option to specify the preferred Application Group type for the Virtual Desktop Host Pool. Valid options are None, Desktop or RailApplications.
    preferred_app_group_type = "Desktop"
    maximum_sessions_allowed = 2
    load_balancer_type       = "DepthFirst"
    #Expiration value should be between 1 hour and 30 days.
    registration_info = {
      token_validity = "720h" #in hours (30d)
      #expiration_date = "2023-06-15T07:20:50Z"
    }
    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "azurerm_virtual_desktop_host_pool"
        destination_type = "log_analytics"
        lz_key = "mgt-logs"
        destination_key  = "central_logs"
      }
    }

  }
}