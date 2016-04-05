provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example_rails_app" {
  ami = "${var.ami}"
  instance_type = "t2.micro"
  security_groups = ["${aws_security_group.example_rails_app.name}"]
  user_data = "${template_file.user_data.rendered}"

  tags {
    Name = "Example Rails App"
  }
}

resource "template_file" "user_data" {
  template = "${file("${path.module}/user-data.sh")}"

  vars {
    port = "${var.port}"
  }
}

resource "aws_security_group" "example_rails_app" {
  name = "example_rails_app"
  description = "A Security Group for the Example Rails App"

  # Inbound HTTP from anywhere
  ingress {
    from_port = "${var.port}"
    to_port = "${var.port}"
    protocol = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Outbound everything
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}