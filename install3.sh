#!/bin/zsh -xev


############# This script is necessary if the script 2 has been launched ##############

# Install pluging zsh-syntax-highlighting
mkdir -p "$ZDOTDIR/plugins" || exit
cd "$ZDOTDIR/plugins" || exit
sudo git clone https://github.com/zsh-users/zsh-syntax-highlighting.git

# Install pluging zsh-autosuggestions
cd "$ZDOTDIR/plugins" || exit
sudo git clone https://github.com/zsh-users/zsh-autosuggestions.git

sudo reboot
