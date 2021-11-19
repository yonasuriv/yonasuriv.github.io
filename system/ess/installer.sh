# -Packages-
sudo apt-get install npm  
sudo apt-get install snapd

# -Necessary programs-
# Discover Software Center
sudo apt-get install plasma-discover -f

# Brave Browser
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt-get install brave-browser -f

# Guake Terminal
sudo apt-get install guake -f

# Spotify
sudo apt install dirmngr && curl -sS https://download.spotify.com/debian/pubkey_0D811D58.gpg | gpg --dearmor | sudo tee /usr/share/keyrings/repository-spotify-com-keyring.gpg >/dev/null && echo deb [signed-by=/usr/share/keyrings/repository-spotify-com-keyring.gpg] http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list && sudo apt update && sudo apt install spotify-client -f

# Stremio
sudo dpkg -i strmtor.deb
wget http://archive.ubuntu.com/ubuntu/pool/universe/x/x264/libx264-152_0.152.2854+gite9a5903-2_amd64.deb
sudo dpkg -i libx264-152_0.152.2854+gite9a5903-2_amd64.deb

# Virtual Box
sudo apt-get install virtualbox -f

# ZSH P10K theme
#!/bin/bash

sudo apt-get install cowsay -f
sudo apt-get install lolcat -f

read -p "Before continuing, we recommend you to install the recommended fonts; 
They are optional, but HIGHLY recommended, if you choose yes, you will be asked to save the 4 fonts, install them. (y/n)" reply

choice=$(echo $reply|sed 's/(.*)/L1/')

if [ "$choice" = 'y' ] 
	then
	echo "You selected to install the recommended fonts, save them and install them. Opening your browser...";
sleep 3;
echo Go to ~/Main/yonasuriv.github.io-master/system/ess/fonts and install them
# MesloLGS NF Regular.ttf
# xdg-open https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf
# MesloLGS NF Bold.ttf
# xdg-open https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf
# MesloLGS NF Italic.ttf
# xdg-open https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf
# MesloLGS NF Bold Italic.ttf
# xdg-open https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf
# echo "InitializeSandbox() error ignored, chromium-based browser detected, everything is normal" | lolcat
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zshpower
echo 'source ~/.zshpower/powerlevel10k.zsh-theme' >>~/.zshrc

## Upgrades all packages
sudo apt full-upgrade
sudo cp .zshrc ~/
echo Running sudo apt --fix-broken install 
sudo apt --fix-broken install
cowsay If you see a rainbow cow talking, then you are good... or no | lolcat
echo  
echo Remember to add the command 'exec zsh' at the beggining of your  .bashrc file in ~/ 'exec zsh' to make zsh your default shell, 
echo Otherwise everytime you close your terminal, configuration wizard will launch and you will be asked to configure your theme over and over.
codium README.MD
echo Run 'p10k configure' to configure your theme. | lolcat

elif [ "$choice" = 'n'  ]
then

echo "You selected 'no', theme will be installed without the recommended fonts";
sleep 3
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.zshpower
echo 'source ~/.zshpower/powerlevel10k.zsh-theme' >>~/.zshrc

## Upgrades all packages
sudo apt full-upgrade
sudo cp .zshrc ~/
echo Running sudo apt --fix-broken install 
sudo apt --fix-broken install
echo Installing Visual Studio Code extensions to VSCodium...
cp -r ~/Main/yonasuriv.github.io-master/system/vsc/* ~/.vscode-oss/
sleep 2;
cowsay If you see a rainbow cow talking, then you are good... or no | lolcat
echo  
echo Remember to add the command 'exec zsh' at the beggining of your  .bashrc file in ~/ 'exec zsh' to make zsh your default shell, 
echo Otherwise everytime you close your terminal, configuration wizard will launch and you will be asked to configure your theme over and over.
codium README.MD
echo Run 'p10k configure' to configure your theme. | lolcat
exit 0
else
	echo "invalid answer, type yes or no";
fi


