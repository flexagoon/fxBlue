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
- Replace gnome-terminal with Wezterm
    - Replace Gnome Terminal Nautilus integration with [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal)
- Install the Fish shell
- Install wl-clipboard
- Add required udev rules for kmonad
- Harden kernel parameters
- Randomize MAC address
- Remove Gnome classic session
- Change Gnome settings
  - Use adw-gtk3 by default
  - Show battery percentage
  - Enable touchpad tap to click
  - Center new windows
- Install gcc and g++
- Replace vim with neovim nightly
- Install podman-compose
