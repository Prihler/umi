#!/bin/sh

#curl -LO https://raw.githubusercontent.com/Prihler/umi/main/umi.sh
#chmod +x umi.sh
#./umi.sh

cd ~








# Updating system
sudo pacman -Syu --noconfirm

# Installing needed packages for the script
sudo pacman -S base-devel git --needed --noconfirm
sudo pacman -S wget --noconfirm

# Installing Paru
#git clone https://aur.archlinux.org/paru.git
#cd paru
#makepkg -si --noconfirm
#cd ~

# Installing dash
sudo pacman -S dash --noconfirm
sudo ln -sfT /bin/dash /bin/sh
cd /usr/share/libalpm/hooks/
sudo wget https://raw.githubusercontent.com/Prihler/dotfiles/main/bash-update.hook
cd ~

# Installing zsh
paru -S zsh zsh-syntax-highlighting zsh-theme-powerlevel10k-git --noconfirm
mkdir -p ~/.cache/zsh
wget https://raw.githubusercontent.com/Prihler/dotfiles/main/.zshenv
mkdir -p ~/.config/zsh/
cd ~/.config/zsh
wget https://raw.githubusercontent.com/Prihler/dotfiles/main/.zshrc
wget https://raw.githubusercontent.com/Prihler/dotfiles/main/.p10k.zsh
cd ~

# aliases
cd ~/.config
wget https://raw.githubusercontent.com/Prihler/dotfiles/main/aliasrc

# Alacritty config & Picom
sudo pacman -S picom --noconfirm
mkdir -p ~/.config/alacritty/
cd ~/.config/alacritty/
wget https://raw.githubusercontent.com/Prihler/dotfiles/main/alacritty.yml
cd ~


# Awesome config
mkdir -p ~/.config/awesome/
cd ~/.config/awesome
wget https://raw.githubusercontent.com/Prihler/dotfiles/main/rc.lua
cd ~

# Installing Lightdm



# Installing fonts
#paru -S ttf-ms-fonts --noconfirm
paru -S nerd-fonts-mononok --noconfirm
paru -S nerd-fonts-jetbrains-mono --noconfirm

# removing unwanted packages
sudo pacman -R xterm --noconfirm

# Installing packages
paru -S lf neovim man fzf --noconfirm

# removing the script
cd ~
rm umi.sh
