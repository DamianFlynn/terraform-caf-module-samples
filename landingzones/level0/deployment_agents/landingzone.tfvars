landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "deployment_agents"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "sandpit_bootstrap.tfstate"
    }
  }
}
