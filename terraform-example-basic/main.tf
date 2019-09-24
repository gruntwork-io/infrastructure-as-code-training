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

