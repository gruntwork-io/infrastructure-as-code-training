# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux AMI 2018.03.0 (HVM)
  ami           = "ami-00eb20669e0990cb4"
  instance_type = "t3.micro"

  tags = {
    Name = "example"
  }
}

