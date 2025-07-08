#!/bin/bash

# Get the directory of the current script
SCRIPT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Source helper file
source $SCRIPT_DIR/helper.sh

log_message "Installation started for prerequisites section"
print_info "\nStarting prerequisites setup..."

run_command "echo repository=https://raw.githubusercontent.com/Makrennel/hyprland-void/repository-x86_64-glibc | sudo tee /etc/xbps.d/hyprland-void.conf" "Add the third party Void Linux Hyprland repository (Required)" "yes"

run_command "sudo xbps-install -Syu" "Update package database and upgrade packages (Recommended)" "yes" # no

run_command "sudo xbps-install -Su pipewire wireplumber pamixer brightnessctl" "Configuring audio and brightness (Recommended)" "yes" 

run_command "sudo xbps-install -Su nerd-fonts-ttf" "Installing Nerd Fonts and Symbols (Recommended)" "yes" 

run_command "sudo xbps-install -Su alacritty" "Install Alacritty (Recommended)" "yes"

run_command "sudo xbps-install -Su neovim" "Install neovim" "yes"

run_command "git clone https://github.com/NvChad/starter ~/.config/nvim && nvim" "Install NvChad (for themes and coding LSP)" "yes"

run_command "sudo xbps-install -Su tar" "Install tar for extracting files (Must)/needed for copying themes" "yes"

echo "------------------------------------------------------------------------"
