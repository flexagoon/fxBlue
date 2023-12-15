# fxBlue

This is my custom image for Fedora Silverblue based on [uBlue](https://universal-blue.org).

It sets up the uBlue Nvidia image with the following changes:

- Replace firefox with Flatpak version
- Remove unneeded packages
    - Gnome Tour
    - Gnome Help
    - Htop
    - Nvtop
- Replace gnome-terminal with Blackbox
    - Replace Gnome Terminal Nautilus integration with Nautilus-Python to use with [nautilus-open-any-terminal](https://github.com/Stunkymonkey/nautilus-open-any-terminal)
- Install the Fish shell
- Add required udev rules for kmonad
- Harden kernel parameters
- Randomize MAC address
- Remove Gnome classic session
