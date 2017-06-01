# Configure the Terraform backend
terraform {
  backend "s3" {
    # Be sure to change this bucket name and region to match an S3 Bucket you have already created!
    bucket = "gruntwork-iac-training"
    region = "us-west-2"
    key    = "terraform.tfstate"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Get the latest Amazon Linux AMI
data "aws_ami" "amzn_linux" {
  most_recent = true

  filter {
    name = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name = "root-device-type"
    values = ["ebs"]
  }

  filter {
    name = "name"
    values = ["amzn-ami-hvm-*"]
  }
}

# Create an EC2 instance
resource "aws_instance" "example" {
  ami = "${data.aws_ami.amzn_linux.image_id}"
  instance_type = "t2.micro"
  key_name = "${var.key_pair_name}"

  tags {
    Name = "${var.ec2_name}"
  }
}
