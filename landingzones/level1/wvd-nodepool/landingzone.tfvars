landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "wvd_nodepool"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "sandpit_bootstrap.tfstate"
    }
    
    mgt-logs = {
      level   = "current"
      tfstate = "mgt_logs.tfstate"
    }
    
    adds = {
      level   = "current"
      tfstate = "adds.tfstate"
    }

    wvd = {
      level   = "current"
      tfstate = "wvd.tfstate"
    }

  }
}
