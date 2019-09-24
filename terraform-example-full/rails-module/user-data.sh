#!/bin/bash
# A script that runs the Ruby on Rails app. It expects certain variables to be set via Terraform interpolation.

set -e

# Send the log output from this script to user-data.log, syslog, and the console
# From: https://alestic.com/2010/12/ec2-user-data-output/
exec > >(tee /var/log/user-data.log|logger -t user-data -s 2>/dev/console) 2>&1

echo "Starting Ruby on Rails app on port ${port} and piping all log output to syslog"
cd /home/ubuntu/example-rails-app
export RAILS_ENV=production
nohup rails s --port=${port} --binding=0.0.0.0 2>&1 | logger &
