#!/bin/sh


# WARN: Linking base configs
folders=("nvim" "alacritty" "fish" "mako" "sway" "tmux" "waybar" "zathura" "wofi" "wlogout")

for folder in "${folders[@]}"; do
  if [ -L ~/.config/$folder ]; then
    echo "Already linked: $folder"
  else
  echo "Linking: $folder"
  ln -s ~/Documents/dotfiles/$folder ~/.config/
  fi
done



# WARN: Linking modprobe.d

modules=("bluetooth_headset.conf" "hid_apple.conf" "iwlwifi.conf")

for module in "${modules[@]}"; do
  if [ -L /etc/modprobe.d/$module ]; then
    echo "Already linked: $module"
  else
  echo "Linking: $module"
  sudo ln -s ~/Documents/dotfiles/modprobe.d/$module /etc/modprobe.d/
  fi
done

# WARN: Linking dotfiles in home dir

files=(".gitconfig" ".fonts")

for file in "${files[@]}"; do
  if [ -L ~/$file ]; then
    echo "Already linked: $file"
  else
  echo "Linking: $file"
  ln -s ~/Documents/dotfiles/$file ~/
  fi
done
