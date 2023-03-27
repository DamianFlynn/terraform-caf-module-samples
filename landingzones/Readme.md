# ACF Deployment Sequence

## Level 0 `l0`

### Bootstrapping `p-iac`

This workload is responsible for State Management and Secret storage, and is core to the complete deployment structure moving forward.


* subscription: p-iac
  * resourceGroup: p-iac-statelevel0
    * storageAccount: p-iac-statelevel0
      * container: tfstate