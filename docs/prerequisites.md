# Prerequisites 🚀
This guide assumes understanding of Linux systems, particularly [Void Linux](https://voidlinux.org/). The following prerequisites are essential for the seamless installation and setup of Hyprland on your system.

## Base System 💻
**Void Linux:**  A minimal Arch Linux Installation is required. It's assumed that you're well-versed with the [Void installation process]((https://docs.voidlinux.org/installation/index.html)) and have a functional base system ready for Hyprland integration.

## Toolbox Essentials 🧰
1. **Third party repository:** A [Hyprland repository](https://github.com/Makrennel/hyprland-void) provides very easy access to hyprland, and the various hyprland products to Void Linux.

    ```
    echo repository=https://raw.githubusercontent.com/Makrennel/hyprland-void/repository-x86_64-glibc | sudo tee /etc/xbps.d/hyprland-void.conf
    ```

2. **Audio Stack:** Install and configure [Pipewire](https://voidlinux.org/packages/?arch=x86_64&q=pipewire) and [Wireplumber](https://voidlinux.org/packages/?arch=x86_64&q=wireplumber) for audio management. This modern audio setup will replace traditional systems like PulseAudio, providing better performance and flexibility.

    ```
    sudo xbps-install -Su pipewire wireplumber
    ```

3. **Nerd Fonts:** Install Nerd Fonts for enhanced glyph support and aesthetics:

    ```
    sudo xbps-install -Su nerd-fonts-ttf
    ```

4. **Display Manager:** tty is a very simple option to login to Hyprland. You can separately install a display manager such as [SDDM](https://voidlinux.org/packages/?arch=x86_64&q=sddm), if you desire. To automatically log in from the starting tty1, run the following command. **NOTE**: Change to your preferred profile such as .bashprofile, if you don't use zsh

    ```
    echo [ "$(tty)" = "/dev/tty1" ] && ! pidof -s hyprland >/dev/null 2>&1 && exec hyprland | sudo tee ~/.zprofile
    ```

    5. **Web Browser:** [Firefox](https://voidlinux.org/packages/?arch=x86_64&q=firefox) Firefox will be used (until [Ladybird](https://github.com/LadybirdBrowser/ladybird) gets here) for accessing configuration resources and this guide. Install via:

    ```
    sudo xbps-install -Su firefox
    ```

6. **Terminal Emulator:** [Alacritty](https://voidlinux.org/packages/?arch=x86_64&q=alacritty) is a powerful and light resource intensive terminal. If you prefer an alternative, be prepared to modify the config accordingly.

    ```
    sudo xbps-install -Su alacritty
    ```

7. **Text/Code Editor:** Any text editor or IDE will suffice. This guide will use NeoVim, but feel free to use your editor of choice (vim, emacs, etc.).

    ```
    sudo xbps-install -Su neovim
    ```

8. **tar:** The [tar](https://www.baeldung.com/linux/tar-command) command is a utility for archiving and extracting files. It will be essential for managing various archives throughout the installation process.

    ```
    sudo xbps-install -Su tar
    ```

## Assumed Competencies 🧠
*  **Basic Linux Command Line Knowledge:** You'll be spending some quality time in the terminal, so make sure you're comfortable with the command line.

*  **Package Management:** Understanding how to install and manage packages using xbps is a must.

*  **Configuration Editing:** Ability to edit configuration files using a text editor, including understanding basic syntax and structure.

*  **Troubleshooting:** Some hiccups may occur along the way, so basic troubleshooting skills will come in handy.

## Additional Recommendations 📌
*  **Backup Your Data:** Ensure you have backups of any important data before embarking on this journey.

*  **Update Your System:** Keep your system up to date before starting the installation to avoid any potential conflicts.

With these prerequisites in place, you're primed to delve into the intricacies of the Simple Hyprland guide and craft a cool, tiling-based environment on your Void Linux system.

**Next:** [Core Installation](installation_Hypr.md) 👉
