# Virtual Machine Scale Set

virtual_machine_scale_sets = {
  
  # Configuration to deploy a linux virtual machine
  vmss1 = {
    resource_group_key                   = "deployment_agents"
    boot_diagnostics_storage_account_key = "deployment_agents"

    os_type                              = "linux"

    keyvault_key                         = "deployment_agents"

    network_interfaces = {
      nic0 = {

        name       = "0"
        primary    = true
        lz_key     = "deployment_agents"
        vnet_key   = "deployment_agents_network"
        subnet_key = "level0"

        load_balancers = {
          lb1 = {
            lb_key = "deployment_agents"
            # lz_key = ""
          }
        }

        application_security_groups = {
          asg1 = {
            asg_key = "deployment_agents"
            # lz_key = ""
          }
        }

        enable_accelerated_networking = false
        enable_ip_forwarding          = false
        internal_dns_name_label       = "nic0"
      }
    }

    vmss_settings = {
      linux = {
        name                            = "p-iac-agents"
        computer_name_prefix            = "lnx"
        sku                             = "Standard_F2"
        instances                       = 1
        admin_username                  = "adminuser"
        disable_password_authentication = true
        provision_vm_agent              = true
        priority                        = "Spot"
        eviction_policy                 = "Deallocate"
        ultra_ssd_enabled               = false # required if planning to use UltraSSD_LRS

        upgrade_mode = "Manual" # Automatic / Rolling / Manual


        # rolling_upgrade_policy = {
        #   # Only for upgrade mode = "Automatic / Rolling "
        #   max_batch_instance_percent = 20
        #   max_unhealthy_instance_percent = 20
        #   max_unhealthy_upgraded_instance_percent = 20
        #   pause_time_between_batches = ""
        # }
        # automatic_os_upgrade_policy = {
        #   # Only for upgrade mode = "Automatic"
        #   disable_automatic_rollback = false
        #   enable_automatic_os_upgrade = true
        # }


        os_disk = {
          caching              = "ReadWrite"
          storage_account_type = "Standard_LRS"
          disk_size_gb         = 128
          # disk_encryption_set_key = ""
          # lz_key = ""
        }

        identity = {
          # type = "SystemAssigned"
          type                  = "UserAssigned"
          managed_identity_keys = ["deployment_agents"]

          remote = {
            lz_key_name = {
              managed_identity_keys = []
            }
          }
        }

        # custom_image_id = ""

        source_image_reference = {
          publisher = "Canonical"
          offer     = "UbuntuServer"
          sku       = "18.04-LTS"
          version   = "latest"
        }

      }
    }



    data_disks = {
      data1 = {
        caching                   = "None"  # None / ReadOnly / ReadWrite
        create_option             = "Empty" # Empty / FromImage (only if source image includes data disks)
        disk_size_gb              = "10"
        lun                       = 1
        storage_account_type      = "Standard_LRS" # UltraSSD_LRS only possible when > additional_capabilities { ultra_ssd_enabled = true }
        disk_iops_read_write      = 100            # only for UltraSSD Disks
        disk_mbps_read_write      = 100            # only for UltraSSD Disks
        write_accelerator_enabled = false          # true requires Premium_LRS and caching = "None"
        # disk_encryption_set_key = "set1"
        # lz_key = "" # lz_key for disk_encryption_set_key if remote
      }
    }

  }

}