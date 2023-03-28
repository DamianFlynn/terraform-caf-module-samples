role_mapping = {
  built_in_role_mapping = {
    storage_accounts = {
      msix_sa = {        
        lz_key = "wvd_msix_reqs"
        
        "Storage Blob Data Reader" = {
          managed_identities = {                     
            lz_key = "wvd_nodepool"
            keys = ["wvd_node_mi"]
          }
        }

        # "Storage Blob Data Contributor" = {
        #   logged_in = {
        #     keys = ["user"]
        #   }
        # }
      }
    }
  }
}