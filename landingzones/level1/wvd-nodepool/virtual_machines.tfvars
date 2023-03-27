# Virtual machines


virtual_machines = {

  # Configuration to deploy a bastion host linux virtual machine
  hostpool_vm1 = {
    region             = "region1"
    resource_group_key = "wvd_nodes"
    provision_vm_agent = true
    # when boot_diagnostics_storage_account_key is empty string "", boot diagnostics will be put on azure managed storage
    # when boot_diagnostics_storage_account_key is a non-empty string, it needs to point to the key of a user managed storage defined in diagnostic_storage_accounts
    # if boot_diagnostics_storage_account_key is not defined, but global_settings.resource_defaults.virtual_machines.use_azmanaged_storage_for_boot_diagnostics is true, boot diagnostics will be put on azure managed storage

    os_type = "windows"

    # the auto-generated ssh key in keyvault secret. Secret name being {VM name}-ssh-public and {VM name}-ssh-private
    keyvault_key = "wvd_nodes_keyvault"

    # Define the number of networking cards to attach the virtual machine
    networking_interfaces = {
      nic0 = {
        # Value of the keys from networking.tfvars
        vnet_key                = "wvd_network"
        subnet_key              = "wvd_hosts"
        name                    = "nic0"
        enable_ip_forwarding    = false
        internal_dns_name_label = "p-wvdnodes-vm01"
        public_ip_address_key   = "hostpool_vm1_pip"
      }
    }

    virtual_machine_settings = {
      windows = {
        name                 = "p-wvdnodes-vm01"
        size                 = "Standard_B2ms"
        availability_set_key = "avset1"

        admin_username_key = "vmadmin-username"
        admin_password_key = "vmadmin-password"

        # Value of the nic keys to attach the VM. The first one in the list is the default nic
        network_interface_keys = ["nic0"]

        os_disk = {
          name                 = "p-wvdnodes-vm01-os"
          caching              = "ReadWrite"
          storage_account_type = "StandardSSD_LRS"
          managed_disk_type    = "StandardSSD_LRS"
          disk_size_gb         = "128"
          create_option        = "FromImage"
        }

        source_image_reference = {
          publisher = "MicrosoftWindowsDesktop"
          offer     = "windows-11"
          sku       = "win11-22h2-avd"
          version   = "latest"
        }
      }
    }

    ## REQUIRED EXTENSIONS FOR WVD SESSION HOSTS

    virtual_machine_extensions = {
      microsoft_azure_domainjoin = {
        domain_name = "contoso.com"
        # ou_path     = ""
        ou_path     = "OU=AVD,DC=contoso,DC=com"
        restart     = "true"
        #specify the AKV location of the password to retrieve for domain join operation
        domain_join_password_keyvault = {
          lz_key = "adds"
          keyvault_key = "adds_keyvault"
          secret_name  = "domain-join-password"
        }
        domain_join_username_keyvault = {
          lz_key = "adds"
          keyvault_key = "adds_keyvault"
          secret_name  = "domain-join-username"
        }
      }
      session_host_dscextension = {
        host_pool = {
          host_pool_key = "wvd_hp1"
          keyvault_key  = "host_pool_secrets"
          secret_name   = "newwvd-hostpool-token"
          lz_key        = "wvd"
        }
        # base_url = "https://raw.githubusercontent.com/Azure/RDS-Templates/master/ARM-wvd-templates"
        base_url = "https://wvdportalstorageblob.blob.core.windows.net/galleryartifacts/Configuration_02-23-2022.zip"
      }

      # custom_script = {
        #fileuris            = ["https://somelocation/container/script.ps1"]
        # can define fileuris directly or use fileuri_sa_ reference keys and lz_key:
        # fileuri_sa_key   = "sa1"
        # fileuri_sa_path  = "files/helloworld.ps1"
        # commandtoexecute = "PowerShell -encodedCommand ${textencodebase64(file("Script/attach-fileshare_import-cert.ps1"), "UTF-16LE")}"
        # commandtoexecute = "Script/attach-fileshare_import-cert.ps1"
        
        # scriptpath = "Script/attach-fileshare_import-cert.ps1"
        
        # managed_identity_id = optional to define managed identity principal_id directly
        # identity_type        = "UserAssigned" #optional to use managed_identity for download from location specified in fileuri, UserAssigned or SystemAssigned.
        # managed_identity_key = "user_mi"
        #lz_key               = "other_lz" optional for managed identity defined in other lz
      # } 
    }
  }
}
