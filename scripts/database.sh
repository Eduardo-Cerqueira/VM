#!/bin/bash
## ⚠️ Script should be launched as "root" using su (sudo not required)

# Install dependencies
apt-get update
apt-get install postgresql curl acl

# Enable Postgresql service
systemctl enable postgresql
systemctl start postgresql

# Fetch Demeter Postgresql init script
curl -O https://raw.githubusercontent.com/Eduardo-Cerqueira/demeter/staging/init.sql

# Switch to user postgres
su postgres

# Execute the init script
psql -c '\i ./init.sql'