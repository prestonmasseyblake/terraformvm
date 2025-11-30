#!/bin/bash

set -e

echo "Configuring UFW firewall..."
apt-get update && apt-get install -y ufw
ufw default deny incoming
ufw default allow outgoing
ufw allow ssh
ufw --force enable
