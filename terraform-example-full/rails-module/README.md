# Rails Module

These Terraform templates show an example of how to define a
[Terraform Module](https://www.terraform.io/intro/getting-started/modules.html). This module shows an example of how
to:

1. Take the AMI created in the `packer-example` folder.
2. Deploy it on an EC2 instance in AWS.
3. Run the Ruby on Rails app within the AMI.

## How to use this module

* See the [Using Modules documentation](https://www.terraform.io/docs/modules/usage.html) on how to use modules in your
  code.
* See [vars.tf](./vars.tf) for the parameters you need to pass to this module.
* See [terraform-example-full](../) for an example.
