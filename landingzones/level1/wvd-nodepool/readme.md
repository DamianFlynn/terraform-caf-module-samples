```bash
rover \
  -lz /tf/caf/acf/platform/workloads \
  -var-folder /tf/caf/acf/landingzones/level1/wvd-nodepool \
  -tfstate_subscription_id 7f798b1d-5b09-491f-82e1-5aed7d81f8c1 \
  -target_subscription 955bb80c-1a11-4c68-ae00-9ae7d9f925a8 \
  -tfstate wvd-nodes.tfstate \
  -env sandpit \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/wvd-nodes.tfstate.tfplan \
  -a plan
```


Architecture

1. Resource Groups
* Subscription: p-wvd 
  * Resource Group: p-wvd-network
    * Virtual Network: p-wvd-network
      * Subnet: wvdHostsSubnet
      * Peering:
        * p-wvd-network to addsSubnet
        * addsSubnet to p-wvd-network 

  * Resource Group: p-wvd-workspace
    * Wvd Workspace: wvd_workspace
      * Diagnostics: 
        * Destionation: p-mgt-logs
        * Events: azurerm_virtual_desktop_workspace
        
  * Resource Group: p-wvd-hostpool

  * Resource Group: p-wvd-nodes
    * VM: p-wvdnodes-vm01
      * NIC: nic0
      * OSdisk: p-wvdnodes-vm01-os
      * Managed Identity: wvd_node_mi
      * Extensions
        * Domain join
        * DSC, host pool registration
        * Custom script, attach fileshare and import MSIX certificate
    * Managed Identity: wvd_node_mi
      * Role mapping: "Storage Blob Data Reader"
        * Storage Account: pmsixsa20230328