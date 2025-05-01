#!/bin/bash

echo "Updating system"
yay -Syu
flatpak update

echo "Clearing pacman cache"
pacman_cache_space_used="$(du -sh /var/cache/pacman/pkg/)"
paccache -r
echo "Space saved: $pacman_cache_space_used"

echo "Removing orphan packages"
yay -Qdtq | yay -Rns -

# echo "Clearing ~/.cache"
# home_cache_used="$(du -sh ~/.cache)"
# rm -rf ~/.cache/
# echo "Space saved: $home_cache_used"

echo "Clearing system logs"
journalctl --vacuum-time=7d
