# fxBlue

This is my custom image for Fedora Silverblue based on [BlueBuild](https://blue-build.org/) and [uBlue](https://universal-blue.org).

It sets up the uBlue Nvidia image with the following changes:

- Replace firefox with Flatpak version
- Remove unneeded packages
    - Gnome Tour
    - Gnome Help
    - Gnome Tweaks
    - Gnome Extensions
    - Htop
    - Nvtop
- Install Gnome extensions
    - Blur My Shell
    - Alphabetical App Grid
    - Clipboard Indicator
    - Focused Window D-Bus
    - Rounded Window Corners Reborn
    - Tiling Assistant
- Replace Ptyxis with Kitty
    - Install [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal)
- Replace Gnome System Monitor with Mission Center
- Install the Fish shell
- Install wl-clipboard
- Install zenity
- Install android-tools
- Add required udev rules for kmonad and Flipper Zero
- Remove Gnome classic session
- Change Gnome settings
  - Use adw-gtk3 by default
  - Show battery percentage
  - Enable touchpad tap to click
  - Center new windows
- Install packages which are needed for some neovim plugins:
  - gcc and g++
  - libcurl-devel
  - lua
  - luajit-devel
- Replace vim with neovim nightly
- Install podman-compose and podman-docker
- Harden the system
    - NetworkManager
        - [Randomize MAC address](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/NetworkManager/conf.d/99-random-mac.conf)
        - [Enable IPv6 privacy extensions](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/NetworkManager/conf.d/99-ipv6-privacy.conf)
    - [Use hardened kernel parameters](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/sysctl.d/90-hardening.conf)
    - [Blacklist some kernel modules to reduce attack surface](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/modprobe.d/blacklist.conf)
    - Use hardened boot options
        - Run `ujust sec-kargs` to enable
    - Use secure time synchronization with NTS
    - Use local authselect profile
    - Configurations taken from:
        - [Madaidan's Linux hardening guide](https://madaidans-insecurities.github.io/guides/linux-hardening.html)
        - [PrivSec desktop Linux hardening guide](https://privsec.dev/posts/linux/desktop-linux-hardening)
        - [secureblue](https://github.com/secureblue/secureblue)
- Install [Homebrew](https://brew.sh/)
- Automatically install [my dotfiles](https://github.com/flexagoon/dotfiles)
