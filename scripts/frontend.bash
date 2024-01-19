# Install dependencies
apt install git
apt install curl -y
curl https://raw.githubusercontent.com/creationix/nvm/master/install.sh | bash
source ~/.bashrc
nvm install node
npm i -g pm2

# Clone Demeter Frontend 
git clone https://github.com/ValzM/VM-Demeter-Frontend.git

# Install app dependencies
cd vitesse
npm install

# Build app
npm run build

# Create a process for the app
pm2 serve dist 3000 --name "demeter-build"
pm2 save

# Start process at launch
pm2 startup systemd