#!/bin/bash
## ⚠️ Script should be launched as "root" using su (sudo not required)

# Copy interfaces example
cp interfaces.example /etc/network/interfaces

# Set automatic iptables ipv4 save at install (remove interaction)
debconf-set-selections <<EOF
iptables-persistent iptables-persistent/autosave_v4 boolean true
iptables-persistent iptables-persistent/autosave_v6 boolean true
EOF

# Install dependencies (iptables if not installed)
apt-get -y install iptables iptables-persistent

# Activate port fowarding by adding line in /etc/sysctl.conf
echo 'net.ipv4.ip_forward=1' >> /etc/sysctl.conf

# Persist changes
sysctl -p

iptables -t nat -A POSTROUTING -o enp0s3 -j MASQUERADE