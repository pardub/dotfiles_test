#!/bin/bash -xev

# Zsh
sudo dnf -y install zsh
sudo dnf -y install util-linux-user

# zsh default shell
# sudo chsh -s /bin/zsh marc ## replaced by the command below
sudo chsh -s $(which zsh) $USER
cd $HOME
if [ -e "$HOME"/.zshenv ]
then rm "$HOME"/.zshenv
fi

if [ ! -e "$HOME"/.cache/zsh/history ]
then 
mkdir -p "$HOME"/.cache/zsh || exit
touch "$HOME"/.cache/zsh/history
fi

# Download .zshenv
cd "$HOME" || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/.zshenv

# Download .zshrc
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/.zshrc

# Download .aliases
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/.aliases

# Downlaod zsh-functions
cd "$HOME"/.config/zsh || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/zsh-functions

# Downlaod init.viv
cd "$HOME"/.config/nvim || exit
wget https://raw.githubusercontent.com/pardub/dotfiles_test/main/init.vim

#sudo reboot


############## script 3 ##############

# Install pluging zsh-syntax-highlighting
#mkdir -p "$ZDOTDIR/plugins" || exit
#cd "$ZDOTDIR/plugins" || exit
#sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

# Install pluging zsh-autosuggestions
#cd "$ZDOTDIR/plugins" || exit
#sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git

#sudo reboot
