u="$USER"
#adon----------------------------------------------------------------
sudo snap install brave
sudo apt-get install autokey-gtk -y

sudo snap install tusk ##evernote


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

<<comment
use "Extensions Sync"


sudo apt install gnome-tweaks -y
sudo apt-get install chrome-gnome-shell -y

wget https://github.com/GSConnect/gnome-shell-extension-gsconnect/releases/download/v47/gsconnect@andyholmes.github.io.zip
gnome-extensions install --force gsconnect@andyholmes.github.io.zip
gnome-extensions enable gsconnect@andyholmes.github.io

wget https://github.com/zagortenay333/timepp__gnome/archive/master.zip
unzip master.zip
rm master.zip
mv timepp__gnome-master $ext/timepp@zagortenay333


sudo add-apt-repository ppa:gnome-shell-extensions
sudo apt-get update
sudo apt-get install gnome-shell-extension-weather
gnome-extensions enable openweather-extension@jenslody.de

git clone https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator.git $ext/clipboard-indicator@tudmotu.com
gnome-extensions enable clipboard-indicator@tudmotu.com

comment
#social media------------------------------------------------------------
sudo snap install telegram-desktop
sudo snap install walc
sudo snap install discord


sudo snap install mailspring

#programming-----------------------------------------------------------
sudo snap install code --classic

##asbru(ssh,command...)
###curl -1sLf 'https://dl.cloudsmith.io/public/asbru-cm/release/cfg/setup/bash.deb.sh' | sudo -E bash
###sudo apt install asbru-cm -y

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


#need restart of all


