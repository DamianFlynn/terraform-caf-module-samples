resource_groups = {
  mgt_actions = {
    name   = "p-mgt-actions"
    region = "region1"
    description = "Management Action Groups"
    tags = {
      level = "level1"
      workload = "ACF Platform"
      service = "ACF Management"
      environment = "Production"
      purpose =  "This resource is part of core infrastructure. Do not delete."
    }
  }
  mgt_logs = {
    name        = "p-mgt-logs"
    region      = "region1"
    description = "Management Logs Storage"
    tags = {
      level = "level1"
      workload = "ACF Platform"
      service = "ACF Management"
      environment = "Production"
      purpose =  "This resource is part of core infrastructure. Do not delete."
    }
  }
  mgt_audit = {
    name        = "p-mgt-audit"
    region      = "region1"
    description = "Management Logs Storage"
    tags = {
      level = "level1"
      workload = "ACF Platform"
      service = "ACF Management"
      environment = "Production"
      purpose =  "This resource is part of core infrastructure. Do not delete."
    }
  }
  mgt_auto = {
    name        = "p-mgt-auto"
    region      = "region1"
    description = "Management Automation"
    tags = {
      level = "level1"
      workload = "ACF Platform"
      service = "ACF Management"
      environment = "Production"
      purpose =  "This resource is part of core infrastructure. Do not delete."
    }
  }
}