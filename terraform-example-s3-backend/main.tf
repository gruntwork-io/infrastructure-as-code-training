terraform {
  # This module is now only being tested with Terraform 0.14.x. However, to make upgrading easier, we are setting
  # 0.12.26 as the minimum version, as that version added support for required_providers with source URLs, making it
  # forwards compatible with 0.14.x code.
  required_version = ">= 0.12.26"

  # Configure the Terraform backend
  backend "s3" {
    # Be sure to change this bucket name and region to match an S3 Bucket you have already created!
    bucket = "gruntwork-iac-training"
    region = "us-west-2"
    key    = "terraform.tfstate"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-2"
}

# Get the latest Amazon Linux AMI
data "aws_ami" "amzn_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name   = "name"
    values = ["amzn-ami-hvm-*"]
  }
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami           = data.aws_ami.amzn_linux.image_id
  instance_type = "t3.micro"
  key_name      = var.key_pair_name

  tags = {
    Name = var.ec2_name
  }
}
