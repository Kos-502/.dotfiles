{ ... }:

{
  # HYPRLAND - a 100% independent, dynamic tiling Wayland compositor.

  wayland.windowManager.hyprland.enable = true;

  # Import the custom hyprland nix modules.
  import = [
    ./autostart.nix
    ./monitor.nix
    ./appearance.nix
    ./keybinds.nix
  ];
}
