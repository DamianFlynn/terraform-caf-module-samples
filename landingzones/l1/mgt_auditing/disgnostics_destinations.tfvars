diagnostics_destinations = {
  log_analytics = {
    central_logs = {
      log_analytics_key              = "mgt_logs"
      log_analytics_destination_type = "Dedicated"
    }
  }

  event_hub_namespaces = {
    central_logs = {
      event_hub_namespace_key = "central_logs_region1"
    }
  }

  storage = {
    all_regions = {
      westeurope = {
        storage_account_key = "diaglogs_region1"
      }
      # northeurope = {
      #   storage_account_key = "diagsiem_region2"
      # }
    }
  }
}