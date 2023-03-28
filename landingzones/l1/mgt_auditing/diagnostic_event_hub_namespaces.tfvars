
# Event hub diagnostics
diagnostic_event_hub_namespaces = {
  central_logs_region1 = {
    name               = "p-mgt-logs-events"
    resource_group_key = "mgt_logs"
    sku                = "Standard"
    region             = "region1"

    diagnostic_profiles = {
      central_logs_region1 = {
        definition_key   = "event_hub_namespace"
        destination_type = "storage"
        destination_key  = "all_regions"
      }
    }
  }
}


