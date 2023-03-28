```bash
rover \
  -lz /tf/caf/acf/platform/workloads \
  -var-folder /tf/caf/acf/landingzones/level1/wvd-msix-reqs \
  -tfstate_subscription_id 7f798b1d-5b09-491f-82e1-5aed7d81f8c1 \
  -target_subscription 955bb80c-1a11-4c68-ae00-9ae7d9f925a8 \
  -tfstate wvd-msix-reqs.tfstate \
  -env sandpit \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/wvd-msix-reqs.tfstate.tfplan \
  -a plan
```


Architecture

1. Resource Groups
* Subscription: p-wvd 
  * Resource Group: p-wvd-msix-reqs
    * Storage Account: pmsixsa20230328
      * Container: scripts
      * File share: msix-files
    * Key vault: p-wvd-msix-20230328-kv