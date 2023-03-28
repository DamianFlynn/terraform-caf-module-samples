landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "state"
  level               = "level1"
  key                 = "management"
  tfstates = {
    state = {
      level   = "lower"
      tfstate = "state.tfstate"
      workspace = "tfstate"
    }
  }
}