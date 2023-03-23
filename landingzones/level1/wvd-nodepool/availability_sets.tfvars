availability_sets = {
  avset1 = {
    name               = "p-wvd-avset"
    region             = "region1"
    resource_group_key = "wvd_nodes"
    # Depends on the region, update and fault domain count availability varies.
    platform_update_domain_count = 2
    platform_fault_domain_count  = 2
    # By default availability set is configured as managed. Below can be used to change it to unmanged.
    # managed                      = false
  }
}