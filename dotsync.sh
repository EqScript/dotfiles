#!/usr/bin/env bash
mkdir -p ~/dotfiles/{waybar,sway,foot,wofi,bash}

rsync -avh --delete ~/.config/waybar/ ~/dotfiles/waybar/
rsync -avh --delete ~/.config/sway/ ~/dotfiles/sway/
rsync -avh --delete ~/.config/foot/ ~/dotfiles/foot/
rsync -avh --delete ~/.config/wofi/ ~/dotfiles/wofi/
rsync -avh --delete ~/.bashrc ~/dotfiles/bash/.bashrc
rsync -avh --delete ~/.config/starship.toml ~/dotfiles/starship.toml

