#!/bin/bash
# A script that runs the Ruby on Rails app. It expects certain variables to be set via Terraform interpolation.

set -e

cd /home/ubuntu/example-rails-app
nohup rails s --port=${port} 2>&1

