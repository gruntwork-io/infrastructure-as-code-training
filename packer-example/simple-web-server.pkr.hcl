variable "region" {
  description = "The AWS Region to launch the AMI builder in"
  default     = "us-east-2"
}

source "amazon-ebs" "ubuntu" {
  ami_name        = "gruntwork-packer-training-rails-hcl-{{isotime | clean_resource_name}}"
  ami_description = "An Ubuntu AMI that has Ruby on RIls installed"
  region          = var.region
  instance_type   = "t2.micro"

  source_ami_filter {
    filters = {
      virtualization-type = "hvm"
      architecture        = "x86_64"
      name                = "*ubuntu-xenial-16.04-amd64-server-*"
      root-device-type    = "ebs"
    }
    owners      = ["099720109477"]
    most_recent = true
  }
  communicator = "ssh"
  ssh_username = "ubuntu"
}

build {
  sources = ["source.amazon-ebs.ubuntu"]

  provisioner "shell" {
    inline = [
      "echo 'Sleeping for 30 seconds to give Ubuntu enough time to initialize (otherwise, packages may fail to install).'",
      "sleep 30"
    ]
  }

  provisioner "shell" {
    # TODO: Use `template_dir` once implemented for HCL:
    # https://github.com/hashicorp/packer/issues/9176
    script = "./install-rails.sh"
  }

  provisioner "file" {
    # TODO: Use `template_dir` once implemented for HCL:
    # https://github.com/hashicorp/packer/issues/9176
    source = "../example-rails-app"
    destination = "/home/ubuntu"
  }

  provisioner "shell" {
    inline = [
      "cd /home/ubuntu/example-rails-app",
      "bundle install"
    ]
  }
}
