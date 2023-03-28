landingzone = {
  backend_type        = "azurerm"
  global_settings_key = "state"
  level               = "level1"
  key                 = "mgt_groups"
  tfstates = {
    state = {
      level   = "lower"
      tfstate = "opus_state.tfstate"
    }
  }
}
