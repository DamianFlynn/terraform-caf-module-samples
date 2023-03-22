load_balancers = {
  deployment_agents = {
    name                      = "p-iac-agents-lb-vmss"
    sku                       = "basic"
    resource_group_key        = "deployment_agents"
    backend_address_pool_name = "vmss1"
    frontend_ip_configurations = {
      config1 = {
        name                  = "config1"
#        public_ip_address_key = "lb_pip1"
      }
    }
  }
}