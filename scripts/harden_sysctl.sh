#!/bin/bash

set -e

echo "Applying kernel hardening settings..."
cat <<EOF > /etc/sysctl.d/99-custom.conf
net.ipv4.ip_forward = 0
net.ipv4.conf.all.send_redirects = 0
net.ipv4.conf.default.send_redirects = 0
net.ipv4.conf.all.accept_source_route = 0
net.ipv4.conf.default.accept_source_route = 0
EOF

sysctl --system
