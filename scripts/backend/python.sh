# Install python 3.10.13

wget https://www.python.org/ftp/python/3.10.13/Python-3.10.13.tgz

tar -xf Python-3.10.13.tgz

cd Python-3.10.13

./configure --enable-optimizations

make altinstall

cd ../