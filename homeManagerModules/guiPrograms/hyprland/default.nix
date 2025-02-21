{ ... }:

{
  # HYPRLAND - a 100% independent, dynamic tiling Wayland compositor.

  wayland.windowManager.hyprland.enable = true;

  # Import the custom hyprland nix modules.
  imports = [
    ./autostart.nix
    ./monitor.nix
    ./appearance.nix
    ./input.nix
    ./keybinds.nix
    ./miscellaneous.nix
    ./animations.nix
  ];
}
