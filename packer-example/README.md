# Packer example

This folder contains an example of how define infrastructure-as-code using [Packer](https://www.packer.io/). The
`simple-web-server.json` Packer template shows how to create an AMI containing a simple web server that you can deploy
in AWS. The AMI is built on top of Ubuntu, has Ruby on Rails installed, and contains the code from the
`example-rails-app` folder.

## Quick start

1. Install [Packer](https://www.packer.io/).
2. Add your AWS credentials as the environment variables `AWS_ACCESS_KEY_ID` and `AWS_SECRET_ACCESS_KEY`.
3. Run `packer build simple-web-server.json`.
4. When the build is done, it'll output the ID of an AMI in `us-east-2` that you can deploy. See the
   `terraform-example-full` folder for an example of how to deploy this AMI and run the Ruby on Rails app within it.
