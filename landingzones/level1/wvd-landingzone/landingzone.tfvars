landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "wvd"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "sandpit_bootstrap.tfstate"
    }
    mgt-logs = {
      level   = "current"
      tfstate = "mgt_logs.tfstate"
    }


  }
}
