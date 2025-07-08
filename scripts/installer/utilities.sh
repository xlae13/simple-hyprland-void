#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for utilities section"
print_info "\nStarting utilities setup..."

run_command "sudo xbps-install -Su Waybar" "Install Waybar - Status Bar" "yes"
run_command "cp -r /home/$SUDO_USER/simple-hyprland-void/configs/waybar /home/$SUDO_USER/.config/" "Copy Waybar config" "yes" "no"

run_command "sudo xbps-install -Su tofi" "Install Tofi - Application Launcher" "yes" "no"
run_command "cp -r /home/$SUDO_USER/simple-hyprland-void/configs/tofi /home/$SUDO_USER/.config/" "Copy Tofi config(s)" "yes" "no"

run_command "sudo xbps-install -Su cliphist" "Install Cliphist - Clipboard Manager" "yes"

run_command "sudo xbps-install -Su swww" "Install SWWW for wallpaper management" "yes" "no"
run_command "mkdir -p /home/$SUDO_USER/.config/assets/backgrounds && cp -r /home/$SUDO_USER/simple-hyprland-void/assets/backgrounds /home/$SUDO_USER/.config/assets/" "Copy sample wallpapers to assets directory (Recommended)" "yes" "no"

run_command "sudo xbps-install -Su hyprpicker" "Install Hyprpicker - Color Picker" "yes" "no"

run_command "sudo xbps-install -Su hyprlock" "Install Hyprlock - Screen Locker (Must)" "yes" "no"
run_command "cp -r /home/$SUDO_USER/simple-hyprland-void/configs/hypr/hyprlock.conf /home/$SUDO_USER/.config/hypr/" "Copy Hyprlock config" "yes" "no"

run_command "sudo xbps-install -Su wlogout" "Install Wlogout - Session Manager" "yes" "no"
run_command "cp -r /home/$SUDO_USER/simple-hyprland-void/configs/wlogout /home/$SUDO_USER/.config/ && sudo cp -r /home/$SUDO_USER/simple-hyprland-void/assets/wlogout /usr/share/wlogout/assets/" "Copy Wlogout config and assets" "yes" "no"

run_command "sudo xbps-install -Su grimshot" "Install Grimshot - Screenshot tool" "yes" "no"

run_command "sudo xbps-install -Su hypridle" "Install Hypridle for idle management (Must)" "yes" "no"
run_command "cp -r /home/$SUDO_USER/simple-hyprland-void/configs/hypr/hypridle.conf /home/$SUDO_USER/.config/hypr/" "Copy Hypridle config" "yes" "no"

echo "------------------------------------------------------------------------"
