# Testing Notes

## Prepaire Starter Project

The platform starter project is an empty environment that get you started with your initial configuration files and create a coherent stack. The [platform starter project is here](https://github.com/Azure/caf-terraform-landingzones-platform-starter).

Launch Github and locate the [Starter Repository](https://github.com/Azure/caf-terraform-landingzones-platform-starter). From here click the option **Use Template**, and follow the wizard to create a copy of this repository in you github organisation

Once ready, clone in your starter project (of grab from the original template at [Starter Template](https://github.com/Azure/caf-terraform-landingzones-platform-starter))

```bash
git clone https://github.com/DamianFlynn/caf-terraform.git caf-terraform
cd caf-terraform
git checkout submodules
```

## Launch VS Code 

```bash
code .
```

If requested, trust the repository. and ensure that you have **Remote - Containers** extension for VS Code installed.

VS Code will prompt to have the repository reopened in a DevContainer. This is strongly recommended, as the container includes a number of supporting scripts and tools. These include Terraform, Terragrunt, Anisble, and a set of bash scripts that pass arguements into Terraform, and the Azure CLI.

You can choose to not use the container, but the instructions here are created based on using this aid, which is called Rover. Later when we get a much better understanding of how this framework functions, we can use our knowledge to make decisions which are relevant to your requirements.

First time you choose to use the container, go grab a coffee, as it needs to download, and get cached for you, which will take some time. 

> [!important]
> Remember to keep an eye on the terminal windows, VS Code will start installing the extensions which are defined as part of the container, so do not forget to allow time for this to also complete!

## Grab the Landing Zones

With VS Code ready, we next need to get the landing zones architecture helper.

Launch a new Terminal window in VS Code, with the container running, and then enter the following commands

```bash
# In the current container, this command is automatically executed, so we can skip it
git clone https://github.com/DamianFlynn/terraform-caf-module-samples.git acf

# We do need to set the branch we will be working with - default is INT-5.6.0
cd acf
git checkout mvp

```

