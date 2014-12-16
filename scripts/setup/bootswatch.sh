echo 'install required packages'
apt-get install -y \
        git

echo 'install node / npm'
apt-get install -y \
        nodejs npm
ln -s /usr/bin/nodejs /usr/bin/node

echo 'install grunt'
npm install -g grunt-cli

echo 'get bootswatch'
cd /opt/ && git clone https://github.com/thomaspark/bootswatch.git && cd /opt/bootswatch
npm install
