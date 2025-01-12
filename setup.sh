#!/bin/bash

echo "Starting setup..."

# Update the system
sudo pacman -Syu --noconfirm

# Install packages from the official repositories
packages=(
    i3
    git
    neovim
    kitty
    polybar
    neofetch
    picom
)

echo "Installing packages from the official repositories..."
sudo pacman -S --noconfirm --needed "${packages[@]}"

echo "Installing AUR helper (yay)..."
# Install yay if not already installed
if ! command -v yay &> /dev/null; then
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay || exit
    makepkg -si --noconfirm
    cd - || exit
    rm -rf /tmp/yay
fi

# Install AUR packages
aur_packages=(
    firefox
    dmenu
)

echo "Installing AUR packages..."
yay -S --noconfirm "${aur_packages[@]}"

echo "Setup complete!"
