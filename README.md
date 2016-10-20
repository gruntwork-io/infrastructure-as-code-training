# Infrastructure-as-code Training

This repo contains materials for learning how to use infrastructure-as-code practices, including:

1. An [example Ruby on Rails app](/example-rails-app) used for demonstration purposes.
1. A [Packer example](/packer-example) that shows how to create an AMI that has Ruby on Rails installed and contains
   the code from the example Rails app.
1. A [Docker example](/docker-example) that shows how to create a Docker container that has Node.js installed and
   runs a simple Node "Hello, World" web server.
1. A [basic Terraform example](/terraform-example-basic) that shows an intro to Terraform.
1. A [full Terraform example](/terraform-example-full) that shows more advanced Terraform usage, including how to take
   the AMI created by the Packer example, deploy it on AWS, and run the example Rails app.

Note: all the code in this repo is used only for demonstration and teaching purposes and should not be used in
production. If you need help using Packer, Terraform, or any other DevOps tools in production, reach out to us at
[Gruntwork](http://www.gruntwork.io/).
