resource_groups = {
  hub_network = {
    name = "p-we1net-network"
    region  = "region1"
    tags = {
      level = "level2"
      workload = "ACF Platform"
      service = "ACF Connectivity"
      environment = "Production"
      purpose =  "This resource is part of core infrastructure. Do not delete."
    }
  }
}