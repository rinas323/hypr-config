# Hyprland Configuration

This is my Hyprland configuration, including Waybar and Wofi.

## Screenshots

### Desktop
![Desktop](desktop.png)

### Wofi
![Wofi](wofi.png)

### Terminal
![Terminal](terminal.png)

## Installation

To install this configuration, use the provided install script.

### Steps:
1. Clone this repository:
   ```sh
   git clone https://github.com/rinas323/hypr-config.git
   cd hypr-config
   ```
2. Make the install script executable:
   ```sh
   chmod +x install.sh
   ```
3. Run the install script:
   ```sh
   ./install.sh
   ```

The script will:
- Check and install required dependencies.
- Backup existing configurations to `~/.config/backup/`.
- Copy the new configuration files to `~/.config/`.
- Copy the wallpaper to `~/.config/hyprland/`.

## Dependencies

Ensure you have the following dependencies installed (the script will install them if missing):
- `starship`
- `wofi`
- `waybar`
- `hyprpaper`
- `hyprlock`
- `hypridle`
- `hyprshot`
- `kitty`

## Reference
The Waybar configuration was adapted from [MechaBar](https://github.com/sejjy/mechabar.git).


## Note  
This script supports **Arch**, **Debian**, and **Red Hat-based** systems.  
It will automatically detect your package manager and install the required dependencies.  

If you encounter issues, you can manually copy the configuration files using:  
```sh
cp -r waybar hypr wofi starship.toml kitty ~/.config/

