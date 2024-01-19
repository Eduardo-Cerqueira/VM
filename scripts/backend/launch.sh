

# Get the project back-end

git clone https://github.com/Eduardo-Cerqueira/demeter.git

cd demeter

git checkout staging

touch .env

echo 'DATABASE_HOST=192.168.56.101' >> .env
echo 'DATABASE_PORT=5432' >> .env
echo 'DATABASE_NAME=demeter' >> .env
echo 'DATABASE_USER=app' >> .env
echo 'DATABASE_PASSWORD=app' >> .env

pip3.10 install -r requirements.txt

# Launch project

cd app

granian --interface asgi --host 192.168.56.102 main:app