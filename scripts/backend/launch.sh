# Get the roject back-end

git clone https://github.com/Eduardo-Cerqueira/demeter.git

cd demeter

git checkout staging

pip3.10 install -r requirements.txt

# Launch project

cd app

granian --interface asgi --host 192.168.1.22 main:app