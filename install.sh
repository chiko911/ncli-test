#!/bin/bash
sudo apt update
sudo apt install -y xfce4 xfce4-goodies
sudo apt-get install autocutsel
curl -sL https://deb.nodesource.com/setup_16.x -o nodesource_setup.sh
sudo bash nodesource_setup.sh
sudo apt install nodejs
sudo npm install -g near-cli
export NEAR_ENV=mainnet 
sudo apt install -y firefox
sudo apt install tightvncserver
vncserver
cd ~
mv $HOME/.vnc/xstartup ~/.vnc/xstartup.bak
bash -c "cat > $HOME/.vnc/xstartup<<EOF
xrdb $HOME/.Xresources
startxfce4 &
autocutsel -fork
EOF"
chmod +x ~/.vnc/xstartup
vncserver -kill :1
vncserver
sudo update-alternatives --config x-terminal-emulator
