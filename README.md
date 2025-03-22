# My Hyprland Configuration

This repository contains my configuration files for Hyprland, Waybar, and Wofi.

## Screenshots
### Desktop
![Desktop Screenshot](desktop.png)

### Wofi
![Wofi Screenshot](wofi.png)

### Terminal
![Terminal Screenshot](terminal.png)

## Installation
To use this configuration, simply copy the files into your `~/.config/` directory:

```bash
cp -r .config/* ~/.config/
```

## Dependencies
Make sure the following packages are installed:
- `starship`
- `wofi`
- `waybar`
- `hyprpaper`
- `hyprlock`
- `hypridle`
- `hyprshot`

### Install Missing Dependencies
If any of these packages are missing, install them using your package manager:

#### Arch Linux (Pacman)
```bash
sudo pacman -S starship wofi waybar hyprpaper hyprlock hypridle hyprshot
```

#### Debian/Ubuntu (if available via apt)
```bash
sudo apt install starship wofi waybar hyprpaper hyprlock hypridle hyprshot
```

#### NixOS (if using Nix)
```bash
nix-env -iA nixpkgs.starship nixpkgs.wofi nixpkgs.waybar nixpkgs.hyprpaper nixpkgs.hyprlock nixpkgs.hypridle nixpkgs.hyprshot
```

## Reference
The Waybar configuration was adapted from [mechabar](https://github.com/sejjy/mechabar.git).


