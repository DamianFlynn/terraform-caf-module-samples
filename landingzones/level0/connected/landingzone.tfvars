landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level0"
  key                 = "connected"
  tfstates = {
    launchpad = {
      level   = "current"
      tfstate = "sandpit_bootstrap.tfstate"
    }
    deployment_agents = {
      level   = "current"
      tfstate = "deployment_agents.tfstate"
    }
  }
}
