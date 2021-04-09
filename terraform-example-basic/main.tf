terraform {
  # This module is now only being tested with Terraform 0.14.x. However, to make upgrading easier, we are setting
  # 0.12.26 as the minimum version, as that version added support for required_providers with source URLs, making it
  # forwards compatible with 0.14.x code.
  required_version = ">= 0.12.26"
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux AMI 2018.03.0 (HVM)
  ami           = "ami-0c64dd618a49aeee8"
  instance_type = "t3.micro"

  tags = {
    Name = "example"
  }
}

