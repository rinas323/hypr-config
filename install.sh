#!/bin/bash

# List of required dependencies
dependencies=(starship wofi waybar hyprpaper hyprlock hypridle hyprshot kitty)

# Function to check and install missing dependencies
install_dependencies() {
    missing=()
    for pkg in "${dependencies[@]}"; do
        if ! command -v "$pkg" &> /dev/null; then
            missing+=("$pkg")
        fi
    done
    
    if [ ${#missing[@]} -ne 0 ]; then
        echo "Installing missing dependencies: ${missing[*]}"
        sudo pacman -S --needed "${missing[@]}"
    else
        echo "All dependencies are already installed."
    fi
}

# Backup and copy function
backup_and_copy() {
    local src=$1
    local dest=$2
    
    if [ -e "$dest" ]; then
        mkdir -p ~/.config/backup
        mv "$dest" ~/.config/backup/
        echo "Backup created for $dest"
    fi
    
    cp -r "$src" ~/.config/
    echo "Copied $src to ~/.config/"
}

# Ensure .config directory exists
mkdir -p ~/.config

# Install dependencies
install_dependencies

# Copy configuration files with backup
backup_and_copy "hyprland" "~/.config/hyprland"
backup_and_copy "waybar" "~/.config/waybar"
backup_and_copy "wofi" "~/.config/wofi"
backup_and_copy "starship.toml" "~/.config/starship.toml"
backup_and_copy "kitty" "~/.config/kitty"
# Copy wallpaper to .config root
cp cosmic.jpg ~/.config/
echo "Wallpaper copied to ~/.config/cosmic.jpg"

echo "Installation complete!"

