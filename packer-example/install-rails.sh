#!/bin/bash
# A script that install Ruby on Rails on Ubuntu.

set -e

sudo apt-get update
sudo apt-get install -y rails libsqlite3-dev sqlite3 nodejs
rails -v