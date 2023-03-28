dynamic_keyvault_secrets = {
    wvd_msix_sa_keyvault = {
    sa_key = {
      # this secret is retrieved automatically from the module run output
      secret_name   = "msix-sa-key"
      output_key    = "storage_accounts"
      resource_key  = "msix_sa"
      attribute_key = "primary_access_key"
    }
  }
}