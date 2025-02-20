{ ... }:

{
  # HYPRLAND - a 100% independent, dynamic tiling Wayland compositor.

  wayland.windowManager.hyprland.enable = true;

  import = [
    ./autostart.nix

  ];
}
