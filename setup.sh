u="$USER"


#programming-----------------------------------------------------------
sudo snap install code --classic

##NodeJS
curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
sudo apt-get install -y nodejs

<<comment
asbru(ssh,command...)
curl -1sLf 'https://dl.cloudsmith.io/public/asbru-cm/release/cfg/setup/bash.deb.sh' | sudo -E bash
sudo apt install asbru-cm -y
comment

sudo snap install snowflake

##Docker
sudo apt-get update -y
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg \
    lsb-release -y
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg
 echo \
  "deb [arch=amd64 signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update -y
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

##Virtual Box
wget https://download.virtualbox.org/virtualbox/6.1.26/virtualbox-6.1_6.1.26-145957~Ubuntu~eoan_amd64.deb
sudo dpkg -i virtualbox-6.1_6.1.26-145957~Ubuntu~eoan_amd64.deb
rm virtualbox-6.1_6.1.26-145957~Ubuntu~eoan_amd64.deb
sudo apt --fix-broken install


#adon----------------------------------------------------------------
sudo snap install brave
sudo apt-get install autokey-gtk -y

sudo snap install tusk ##evernote
sudo snap install mailspring

##anydesk
sudo apt update -y
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update -y
sudo apt install anydesk -y

#gnome-extension------------------------------------------------------
ext="/home/$u/.local/share/gnome-shell/extensions"

git clone https://github.com/oae/gnome-shell-extensions-sync.git
mv gnome-shell-extensions-sync $ext/extensions-sync@elhan.io


#social media------------------------------------------------------------
sudo snap install telegram-desktop
sudo snap install walc
sudo snap install discord


#need restart of all

