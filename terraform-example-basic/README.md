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

## Making changes

Try making some changes to the template to learn about basic Terraform features, as described in the following sections.

### Use a variable

Variables make your templates configurable. To become familiar with variables, try defining one in `main.tf`:

```hcl
variable "name" {
  description = "The name of the EC2 instance"
}
```

Next, use that variable in the `tags` of the `aws_instance`:

```hcl
resource "aws_instance" "example" {
  // ...

  tags {
    Name = "${var.name}"
  }
}
```

Try running `terraform plan` and `terraform apply` to see what happens.

### Use dependencies

Terraform resources can depend on each other. Terraform will automatically build a dependency graph and ensure the
resources get created in the right order. For example, to add an IP address to the EC2 instance, you can define an
`aws_eip` resource:

```hcl
resource "aws_eip" "example" {
  instance = "${aws_instance.example.id}"
}
```

Notice how the `instance` parameter is set to `"${aws_instance.example.id}"`. This is dependency on the `id` attribute
of the `aws_instance` you've already created. Terraform now knows that when you `apply` these templates, it needs to
create the `aws_instance` first, pull out its `id`, and then it can create the `aws_eip`.

## Cleaning up

To clean up the resources created by these templates, just run `terraform destroy`.