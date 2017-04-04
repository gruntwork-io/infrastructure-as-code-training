# Configure the Terraform backend
terraform {
  backend "s3" {
    bucket = "gruntwork-iac-training"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

variable "ec2_name" {
  description = "name of my EC2 Instance"
  type        = "string"
  default     = "josh"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux AMI 2016.03.0 (HVM)
  ami           = "ami-08111162"
  instance_type = "t2.micro"

  tags {
    Name = "${var.ec2_name}"
  }
}
