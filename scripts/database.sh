#!/bin/bash
## ⚠️ Script should be launched as "root" using su (sudo not required)

# Install dependencies
apt-get update
apt-get install postgresql curl acl  iptables iptables-persistent -y

# Enable Postgresql service
systemctl enable postgresql
systemctl start postgresql

# Fetch Demeter Postgresql init script
curl "https://raw.githubusercontent.com/Eduardo-Cerqueira/demeter/staging/init.sql" > /tmp/init.sql

# Execute the init script
su postgres -c "psql -U postgres -c '\i /tmp/init.sql'"

# Get postgresql version
postgres_version="$(su postgres -c 'ls ~/')"

echo listen_addresses = '192.168.56.102' >> "/etc/postgresql/$postgres_version/main/postgresql.conf"

echo host    demeter     	app     192.168.56.102/24       md5 >> "/etc/postgresql/$postgres_version/main/pg_hba.conf"

systemctl restart postgresql 

# Open postgresql port for API ip
/sbin/iptables -A INPUT -p tcp --dport 5432 -s 192.168.56.102 -j ACCEPT

# Save iptables config
/sbin/iptables-save > /etc/iptables/rules.v4

# Restart network
systemctl restart networking