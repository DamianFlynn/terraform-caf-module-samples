passthrough = true
inherit_tags = true
random_length = 3
prefix = ""

# Default region. When not set to a resource it will use that value
default_region = "region1"

# You can reference the regions by using region1, region2 or set your own keys
regions = {
  region1 = "westeurope"
  region2 = "northeurope"
}

# Rover will adjust some tags to enable the discovery of the launchpad.
launchpad_key_names = {
#  azuread_app            = "caf_launchpad_level0"
#  keyvault_client_secret = "aadapp-caf-launchpad-level0"
  keyvault = "level0"
  tfstates = [
    "level0",
    "level1",
    "level2"
  ]
}
