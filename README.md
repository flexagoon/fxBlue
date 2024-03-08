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
- Replace PPD with TLP for more aggressive power saving
- Replace gnome-terminal with Wezterm
    - Replace Gnome Terminal Nautilus integration with [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal)
- Install the Fish shell
- Install wl-clipboard
- Add required udev rules for kmonad
- Remove Gnome classic session
- Change Gnome settings
  - Use adw-gtk3 by default
  - Show battery percentage
  - Enable touchpad tap to click
  - Center new windows
- Install gcc and g++
- Replace vim with neovim nightly
- Install podman-compose
- Harden the system
    - NetworkManager
        - [Randomize MAC address](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/NetworkManager/conf.d/99-random-mac.conf)
        - [Enable IPv6 privacy extensions](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/NetworkManager/conf.d/99-ipv6-privacy.conf)
    - [Use hardened kernel parameters](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/sysctl.d/90-hardening.conf)
    - [Blacklist some kernel modules to reduce attack surface](https://github.com/flexagoon/fxblue/blob/main/config/files/usr/etc/modprobe.d/blacklist.conf)
    - Use hardened boot options
        - Run `ujust sec-kargs` to enable
    - Use secure time synchronization with NTS
    - Set up [hardened_malloc](https://github.com/GrapheneOS/hardened_malloc)
        - Run `ujust harden-flatpak` to enable it for Flatpak apps
    - Configurations taken from:
        - [Madaidan's Linux hardening guide](https://madaidans-insecurities.github.io/guides/linux-hardening.html)
        - [PrivSec desktop Linux hardening guide](https://privsec.dev/posts/linux/desktop-linux-hardening)
        - [secureblue](https://github.com/secureblue/secureblue)
