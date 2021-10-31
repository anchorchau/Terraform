# Terraform
What I've learnt with Terraform

## Pre-requisite
1. Install Terraform CLI
2. Install [Terragrunt](https://terragrunt.gruntwork.io/)(I will explain why at below)
3. Configure Cloud Provider CLI Crendential(E.g: AWS CLI Credential)

## DRY Principles
In order to achieve DRY principles in coding, we have to install Terraform Wrapper like [Terragrunt](https://terragrunt.gruntwork.io/) or [tfwrapper](https://github.com/claranet/terraform-wrapper). The only thing we need this is because of **Terraform Backend Configuration blocks do not allow variables**.

## Utilise Public Registry Modules
The only thing I need to remind myself or highly recommend for new beginner, is to fully utilise the [public registry module](https://registry.terraform.io/browse/modules). The reason being they are battle-tested and production ready. Imagine the module has been installed and used by thousand of developers. Furthermore, you can fix the bug of the module if you find it. Indirectly, you will become the contributor and increase your reputation in the Github.

You can also customise it if you really want to. They are certain approach:
1. Clone the module, amend and put into your repo.
2. Clone the module, copy and paste into your repo. Then, add other resource blocks based on your needs.
3. Add the feature/fix the bug and create a PR for that particular module.

## Create Your Own Private Module into Seperate Repos.
I think this approach has certain benefits:
- Reusable by different team.
- Versioning.
- Easy for documentation.
- Contribute by publishing your module.
