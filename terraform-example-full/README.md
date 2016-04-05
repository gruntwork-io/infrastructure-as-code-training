# Terraform example

This folder contains an example of how define infrastructure-as-code using [Terraform](https://www.terraform.io/). The
Terraform templates in this folder show how to use the Terraform module defined in the [rails-module
folder](./rails-module) to take the AMI created in the `packer-example folder`, deploy it on an EC2 instance, and run
the Ruby on Rails app within the AMI.

## Quick start

Note: these Terraform templates create real resources in your AWS account. The resources are part of the [AWS Free
Tier](https://aws.amazon.com/free/), but if you've used up all your credits, they may cost you money.

1. Install [Terraform](https://www.terraform.io/).
2. Rename `terraform.tfvars.sample` to `terraform.tfvars` and follow the instructions in the file to set up variables.
3. Run `terraform get`.
4. Run `terraform plan`.
5. If the plan looks good, run `terraform apply`.
6. After the templates have been applied, Terraform will output a URL. Once the server is up and running (which can
   take 1-2 minutes), visit this URL to test the Rails app. You should see the text "Hello, World".

## Cleaning up

To clean up the resources created by these templates, just run `terraform destroy`.