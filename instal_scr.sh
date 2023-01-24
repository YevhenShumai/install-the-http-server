#!/bin/bash

# Install the Apache HTTP server
sudo apt-get update
sudo apt-get install apache2 -y

# Start the Apache server
sudo service apache2 start

# Read the log file and check for 4xx and 5xx errors
tail -f /var/log/apache2/access.log | awk '{ if ($9 ~ /4..|5../) { print $0 } }'
