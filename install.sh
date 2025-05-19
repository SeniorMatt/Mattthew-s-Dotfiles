#!/bin/bash

# List of packages
applications=(
  firefox  # Browser
  nvim     # Text editor
  obsidian # Note taking app
  steam
  zoom
  aseprite
  github-desktop-bin
  telegram-desktop
  discord
  qbittorrent
)

default_applications=(
  nautilus             # File manager
  eog                  # Image viewer
  evince               # Document viewer
  decibels             # Media player
  baobab               # Disk analyzer
  gnome-software       # Browse apps
  blueberry            # Bluetooth control
  nm-connection-editor # WiFi control
  pavucontrol          # Audio control
  kooha                # Video record
  ffmpeg               # Convertor
  htop                 # Process viewer
)

additional_packages=(
  xwaylandvideobridge   # Screen sharing
  sof-firmware          # Sound for Intel latest CPUs
  cups                  # Printers
  pipewire              # Sound server
  power-profiles-daemon # Power profiles switcher
  zoxide                # Makes moving in terminal much easier
  yay                   # AUR
  python-pywal16        # Color generator
)

packages=(
  hyprland                    # WM
  ly                          # LM
  kitty                       # Terminal
  waybar                      # Status waybar
  tofi                        # App launcher
  waypaper                    # GUI Wallpaper manager
  hyprpaper                   # Wallpaper backend
  swaync                      # Notifications
  wl-clipboard                # Clipboard manager
  hyprlock                    # Lock manager
  hypridle                    # Idle manager
  wlogout                     # Logout menu
  nwg-look                    # GTK Themer
  udiskie                     # Removable media
  hyprsunset                  # Blue light filter
  hyprpicker                  # Color picker
  hyprpolkitagent             # Authentication daemon
  xdg-desktop-portal-hyprland # Screen sharing Hyprland
)

fonts=(
  ttf-jetbrains-mono     # System font
  noto-fonts-emoji       # Emoji font
  awesome-terminal-fonts # Better align icons
)

themes=(
  bibata-cursor-theme # Cursor theme
  adw-gtk-theme       # GTK3 theme
)

terminal_packages=(
  neofetch
  cmatrix
  cava
  pipes.sh
  asciiquarium
  sl
  lolcat
  cbonsai
)

# Update the systemc
sudo pacman -Sy --noconfirm

# Install packages
for pkg in "${applications[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${default_applications[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${additional_packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${fonts[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${themes[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

for pkg in "${terminal_packages[@]}"; do
  echo "Installing $pkg..."
  if ! pacman -Qq "$pkg" &>/dev/null; then
    yay -S --noconfirm --needed "$pkg"
  fi
  echo "$pkg is already installed"
done

echo "All packages installed."
