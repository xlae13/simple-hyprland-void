#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for hypr section"
print_info "\nStarting hypr setup..."
print_info "\nEverything is recommended to INSTALL"

run_command "sudo xbps-install -Su hyprland" "Install hyprland-void (Must)" "yes"
run_command "mkdir -p /home/$SUDO_USER/.config/hypr/ && cp -r /home/$SUDO_USER/simple-hyprland-void/configs/hypr/hyprland.conf /home/$SUDO_USER/.config/hypr/" "Copy hyprland config (Must)" "yes" "no" 

run_command "sudo xbps-install -Su xdg-desktop-portal-hyprland" "Install XDG desktop portal for hyprland-void" "yes"

run_command "sudo xbps-install -Su polkit-kde-agent" "Install KDE Polkit agent for authentication dialogs" "yes"

run_command "sudo xbps-install -Su dunst" "Install Dunst notification daemon" "yes"
run_command "cp -r /home/$SUDO_USER/simple-hyprland-void/configs/dunst /home/$SUDO_USER/.config/" "Copy dunst config" "yes" "no"

run_command "sudo xbps-install -Su qt5-wayland qt6-wayland" "Install QT support on wayland" "yes"

echo "------------------------------------------------------------------------"
