landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "launchpad"
  level               = "level1"
  key                 = "adds"
  tfstates = {
    launchpad = {
      level   = "lower"
      tfstate = "sandpit_bootstrap.tfstate"
    }
  }
}
