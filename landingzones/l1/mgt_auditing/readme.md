
# Management Automation and Auditing



## Configuration

|Workload|level|subscription|state file|key|folder|
|---|---|---|---|---|---|
|management automation + auditing|1|p-mgt|management|management|l0\management|

# Depends

L0 - State Management


## Deployment

Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t InnoNorgeHack3.onmicrosoft.com -s f6b3f099-986b-4a79-b829-e7a38b86b361

rover \
  -lz /tf/caf/acf/platform/workloads \
  -var-folder /tf/caf/acf/landingzones/l1/mgt_auditing \
  -tfstate_subscription_id b4e6ba46-404a-408e-a3f3-475b5f0f482d \
  -target_subscription f6b3f099-986b-4a79-b829-e7a38b86b361 \
  -tfstate management.tfstate \
  -env orion \
  -level level1 \
  -w tfstate \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan
```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
