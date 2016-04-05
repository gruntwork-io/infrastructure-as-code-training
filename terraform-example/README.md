# Terraform example

This folder contains an example of how define infrastructure-as-code using [Terraform](https://www.terraform.io/). The
Terraform templates in this folder show how to:

1. Take the AMI created by the `packer-example`.
2. Deploy it on an EC2 instance in AWS.
3. Run the Ruby on Rails app within the AMI.

## Quick start

Note: these Terraform templates create real resources in your AWS account. The resources are part of the [AWS Free
Tier](https://aws.amazon.com/free/), but if you've used up all your credits, they may cost you money.

1. Install [Terraform](https://www.terraform.io/).
2. Rename `terraform.tfvars.sample` to `terraform.tfvars` and follow the instructions in the file to set up variables.
3. Run `terraform plan`.
4. If the plan looks good, run `terraform apply`.
5. After the templates have been applied, Terraform will output a URL. Once the server is up and running (which can
   take 1-2 minutes), visit this URL to test the Rails app. You should see the text "Hello, World".

## Cleaning up

To clean up the resources created by these templates, just run `terraform destroy`.