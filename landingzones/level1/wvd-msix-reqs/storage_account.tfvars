storage_accounts = {
  msix_sa = {
    name                     = "pmsixsa20230328"
    resource_group_key       = "wvd_msix_reqs"
    account_kind             = "StorageV2"
    account_tier             = "Standard"
    account_replication_type = "LRS"
    min_tls_version          = "TLS1_2"    # Possible values are TLS1_0, TLS1_1, and TLS1_2. Defaults to TLS1_0 for new storage accounts.
    allow_blob_public_access = true
    is_hns_enabled           = false
    
    # network = {
    #   bypass         = ["AzureServices"]
    #   default_action = "Deny"
    #   subnets = {
    #     pep = {
    #       vnet_key   = "vnet1"
    #       subnet_key = "pep"
    #     }
    #   }
    # }
    # private_endpoints = {
    #   pe1 = {
    #     name               = "storage"
    #     resource_group_key = "batch_region1"
    #     vnet_key           = "vnet1"
    #     subnet_key         = "pep"
    #     private_service_connection = {
    #       name                 = "storage"
    #       is_manual_connection = false
    #       subresource_names    = ["blob"]
    #     }
    #     private_dns = {
    #       zone_group_name = "storage"
    #       keys            = ["blob_dns"]
    #     }
    #   }
    # }

    file_shares = {
      share1 = {
        name  = "msix-files"
        quota = "10"

        # directories = {
        #   dir1 = {
        #     name = "testdirectory"
        #   }
        # }
      }
    }

    # enable_system_msi = {
    #   type = "SystemAssigned"
    # }

    containers = {
      dev = {
        name = "scripts"
      }
    }

    # blob_properties = {
    #   delete_retention_policy = {
    #     days = "7"
    #   }

    #   container_delete_retention_policy = {
    #     days = "7"
    #   }
    # }

  }
}