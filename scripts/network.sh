#!/bin/bash
## ⚠️ Script should be launched as "root" using su (sudo not required)
## Don't forget to edit interfaces.example before

# Copy interfaces example
cp interfaces.example /etc/network/interfaces

# Copy resolv.conf example
cp resolv.conf.example /etc/resolv.conf

# Restart network
systemctl restart networking