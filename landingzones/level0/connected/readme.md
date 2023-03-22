
### Generate launchpad credentials

```bash
# For manual bootstrap:
# Login to the subscription p-mgt with the user damian.flynn_innofactor.com#EXT#@InnoNorgeHack3.onmicrosoft.com
rover login -t InnoNorgeHack3.onmicrosoft.com

rover \
  -lz /tf/caf/acf/platform/workloads \
  -var-folder /tf/caf/acf/landingzones/level0/connected \
  -tfstate_subscription_id 7f798b1d-5b09-491f-82e1-5aed7d81f8c1 \
  -target_subscription f6b3f099-986b-4a79-b829-e7a38b86b361 \
  -tfstate connected.tfstate \
  -env sandpit \
  -level level0 \
  -w tfstate \
  -p ${TF_DATA_DIR}/connected.tfstate.tfplan \
  -a plan

```

If the plan is not successfull you need to come back to the yaml ignite.yaml, fix the values, re-execute the rover ignite and then rover plan.


```bash 
# On success plan, execute

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/platform/configuration/level0/credentials \
  -tfstate_subscription_id f6b3f099-986b-4a79-b829-e7a38b86b361 \
  -target_subscription f6b3f099-986b-4a79-b829-e7a38b86b361 \
  -tfstate launchpad_credentials.tfstate \
  -launchpad \
  -env contoso \
  -level level0 \
  -p ${TF_DATA_DIR}/launchpad_credentials.tfstate.tfplan \
  -a apply

```

```bash
# On success, re-execute the rover ignite

ansible-playbook $(readlink -f ./landingzones/templates/ansible/ansible.yaml) \
  -e base_folder=$(pwd) \
  -e rover_bootstrap=false \
  -e topology_file=$(readlink -f ./platform/definition/ignite.yaml) \
  --extra-vars "@$(readlink -f ./platform/definition/ignite.yaml)"

```

Now if you refresh the readme of the credentials deployment, you will notice the rover command has been updated to impersonate the execution of the rover based on the credentials that have just been created and stored in the keyvault. The goal here is to execute the deployment steps using the same privileges that will be used later when using a pipeline.

Just re-execute the plan/apply command as above and you will notice the rover will login as the identity service principal. When executed, execute a rover logout as the next step will be executed under a different security context.

# Next steps

When you have successfully deployed the launchpad you can  move to the next step.

 [Deploy the subscription services](../../level1/subscriptions/readme.md)
