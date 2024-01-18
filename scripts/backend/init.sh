#!/bin/bash
## ⚠️ Script should be launched as "root" using su (sudo not required)

# Install dependencies
apt-get update && apt-get upgrade -y

apt-get install git -y
apt-get install curl -y
apt-get install libpq-dev -y
apt-get install wget -y

apt-get install build-essential zlib1g-dev libncurses5-dev libgdbm-dev
libnss3-dev libssl-dev libreadline-dev libffi-dev libsqlite3-dev wget libbz2-dev -y

# Install python 3.10.13

wget https://www.python.org/ftp/python/3.10.13/Python-3.10.13.tgz

tar -xf Python-3.10.13.tgz

cd Python-3.10.13

./configure --enable-optimizations

make altinstall

cd ../