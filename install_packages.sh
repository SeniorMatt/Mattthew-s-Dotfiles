#!/bin/bash

# List of packages
packages=(
  hyprland-git
  ly
  kitty
  waybar
  waypaper
  swaync
  hyprpaper
  hyprsunset
  hyprlock
  udiskie
  wlogout
  python-pywal16
  nwg-look
  rofi-lbonn-wayland-git
  rofi-calc
  rofi-emoji
  github-desktop-bin
  zoom
  aseprite
  pipes.sh
  firefox
  nvim
  discord
  telegram-desktop
  obsidian
  steam
  nautilus
  eog
  evince
  decibels
  blueberry
  pavucontrol
  network-manager-applet
  neofetch
  cmatrix
  cava
  asciiquarium
  sl
  lolcat
  bibata-cursor-theme
  adw-gtk-theme
)

sudo pacman -Sy --noconfirm

# Install packages
for pkg in "${packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

echo "All packages installed."
