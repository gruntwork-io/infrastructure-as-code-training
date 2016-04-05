# Terraform example

This folder contains an example of how define infrastructure-as-code using [Terraform](https://www.terraform.io/). The
Terraform templates in this folder are the "Hello, World" of Terraform, showing how to create a single EC2 instance.

## Quick start

Note: these Terraform templates create real resources in your AWS account. The resources are part of the [AWS Free
Tier](https://aws.amazon.com/free/), but if you've used up all your credits, they may cost you money.

1. Install [Terraform](https://www.terraform.io/).
2. Add your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
3. Run `terraform plan`.
4. If the plan looks good, run `terraform apply`.

## Cleaning up

To clean up the resources created by these templates, just run `terraform destroy`.