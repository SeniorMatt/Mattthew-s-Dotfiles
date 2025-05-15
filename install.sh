#!/bin/bash

apps=(
  firefox
  nvim
  discord
  telegram-desktop
  obsidian
  github-desktop-bin
  qbittorrent
  steam
  zoom
  aseprite
)

# List of packages
packages=(
  # Packages
  xwaylandvideobridge
  # sof-firmware
  cups
  pipewire
  zoxide
  yay

  # System Packages
  hyprland
  ly
  kitty
  waybar
  rofi-lbonn-wayland-git
  rofi-calc
  rofi-emoji
  waypaper
  swaync
  hyprpaper
  hyrpsunset
  xdg-desktop-portal-hyprland
  wl-clipboard
  hyprlock
  udiskie
  wlogout
  python-pywal16
  # betterdiscord-installer
  nwg-look

  # Useful Utilities
  nautilus
  baobab
  eog
  evince
  decibels
  blueberry
  pavucontrol
  nm-connection-editor
  kooha
  htop
  power-profiles-daemon

  # Themes
  bibata-cursor-theme
  adw-gtk-theme

  # Fonts
  ttf-jetbrains-mono
  awesome-terminal-fonts
  otf-font-awesome

  # Terminal Stuff
  neofetch
  cmatrix
  cava
  pipes.sh
  asciiquarium
  sl
  lolcat
  cbonsai
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
