#!/bin/bash

set -e

echo "Creating users..."
# This should be dynamically templated via Terraform if needed
useradd -m adminuser
mkdir -p /home/adminuser/.ssh
echo "ssh-rsa AAAAB3..." > /home/adminuser/.ssh/authorized_keys
chown -R adminuser:adminuser /home/adminuser/.ssh
chmod 700 /home/adminuser/.ssh
chmod 600 /home/adminuser/.ssh/authorized_keys
