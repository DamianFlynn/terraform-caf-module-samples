```bash
rover \
  -lz /tf/caf/acf/platform/workloads \
  -var-folder /tf/caf/acf/landingzones/level1/mgt-landingzone \
  -tfstate_subscription_id 7f798b1d-5b09-491f-82e1-5aed7d81f8c1 \
  -target_subscription f6b3f099-986b-4a79-b829-e7a38b86b361 \
  -tfstate mgt_logs.tfstate \
  -env sandpit \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/mgt_logs.tfstate.tfplan \
  -a plan
```


Architecture


* Subscription: p-mgt
  * Resource Group: p-mgt-logs
    * 