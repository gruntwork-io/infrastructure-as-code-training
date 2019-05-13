# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create an EC2 instance
resource "aws_instance" "example" {
  # AMI ID for Amazon Linux 2018.03.0 (HVM)
  ami           = "ami-0cd3dfa4e37921605"
  instance_type = "t2.micro"

  tags {
    Name = "example"
  }
}
