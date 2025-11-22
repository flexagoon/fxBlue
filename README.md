# fxBlue

This is my custom image for Fedora Silverblue based on [BlueBuild](https://blue-build.org/) and [uBlue](https://universal-blue.org).

It sets up the uBlue Nvidia image with the following changes:

- Replace firefox with Zen Browser
- Remove unneeded packages
    - Gnome Tour
    - Gnome Help
    - Gnome Tweaks
    - Gnome Extensions
    - Htop
    - Nvtop
- Install Gnome extensions
    - [Blur My Shell](https://github.com/aunetx/blur-my-shell)
    - [Alphabetical App Grid](https://github.com/stuarthayhurst/alphabetical-grid-extension)
    - [Clipboard Indicator](https://github.com/Tudmotu/gnome-shell-extension-clipboard-indicator)
    - [Focused Window D-Bus](https://github.com/flexagoon/focused-window-dbus)
    - [Rounded Window Corners Reborn](https://github.com/flexagoon/rounded-window-corners)
    - [Tiling Assistant](https://github.com/Leleat/Tiling-Assistant)
- Replace Ptyxis with Ghostty
    - Install [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal)
- Replace Gnome System Monitor with [Mission Center](https://missioncenter.io/)
- Install the [Fish shell](https://fishshell.com/)
- Install [wl-clipboard](https://github.com/bugaevc/wl-clipboard)
- Install android-tools
- Add required udev rules for kmonad and Flipper Zero
- Remove [Gnome classic session](https://docs.redhat.com/en/documentation/red_hat_enterprise_linux/7/html/desktop_migration_and_administration_guide/what-is-gnome-classic)
- Change Gnome settings
  - Use [adw-gtk3](https://github.com/lassekongo83/adw-gtk3) by default
  - Show battery percentage
  - Enable touchpad tap to click
  - Center new windows
- Install packages which are needed for some neovim plugins:
  - [gcc and g++](https://gcc.gnu.org/)
  - [libcurl-devel](https://packages.fedoraproject.org/pkgs/curl/libcurl-devel/)
  - [lua](https://lua.org/)
  - [luajit-devel](https://packages.fedoraproject.org/pkgs/luajit/luajit-devel/)
- Replace vim with [neovim nightly](https://github.com/neovim/neovim/tree/nightly)
- Install [podman-compose](https://docs.podman.io/en/v5.1.1/markdown/podman-compose.1.html) and [podman-docker](https://podman.io/)
- Harden the system
    - NetworkManager
        - [Randomize MAC address](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/NetworkManager/conf.d/99-random-mac.conf)
        - [Enable IPv6 privacy extensions](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/NetworkManager/conf.d/99-ipv6-privacy.conf)
    - [Use hardened kernel parameters](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/sysctl.d/90-hardening.conf)
    - [Blacklist some kernel modules to reduce attack surface](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/modprobe.d/blacklist.conf)
    - Use hardened boot options
    - Use secure time synchronization with NTS
    - Use local authselect profile
    - Configurations taken from:
        - [Madaidan's Linux hardening guide](https://madaidans-insecurities.github.io/guides/linux-hardening.html)
        - [PrivSec desktop Linux hardening guide](https://privsec.dev/posts/linux/desktop-linux-hardening)
        - [secureblue](https://github.com/secureblue/secureblue)
- Install [Homebrew](https://brew.sh/)
- Automatically install [my dotfiles](https://github.com/flexagoon/dotfiles)
- Install some apps that don't work as a Flatpak
    - [wireshark](https://www.wireshark.org/) (with the required group created)
    - [gnome-boxes](https://apps.gnome.org/Boxes/)
- Install Inter and a few nerd fonts
