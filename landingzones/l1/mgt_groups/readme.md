## Plan

```bash
rover \
  -lz /tf/caf/acf/platform/workloads \
  -var-folder /tf/caf/acf/landingzones/l1/mgt_groups \
  -tfstate_subscription_id b4e6ba46-404a-408e-a3f3-475b5f0f482d \
  -target_subscription 7f798b1d-5b09-491f-82e1-5aed7d81f8c1 \
  -tfstate mgt_groups.tfstate \
  -env orion \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/mgt_groups.tfstate.tfplan \
  -a plan
```

## Apply

```bash
rover \
  -lz /tf/caf/acf/platform/workloads \
  -var-folder /tf/caf/acf/landingzones/level1/adds-vm-landingzone \
  -tfstate_subscription_id 7f798b1d-5b09-491f-82e1-5aed7d81f8c1 \
  -target_subscription 0a85b8e1-4dac-411d-8683-a79145faed19 \
  -tfstate adds.tfstate \
  -env sandpit \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/adds.tfstate.tfplan \
  -a apply
```
Architecture

* Subscriptions
  * resource Groups: p-we1dc
    * Keyvault: p-we1dc-20230323-kv
    * Virtual Machine: p-we1dc-adds-01
      * NIC
      * OSDisk
  * resource Groups: p-we1dc-network
    * virtual network: p-we1dc-network-vnet
      * subnet: frontend

