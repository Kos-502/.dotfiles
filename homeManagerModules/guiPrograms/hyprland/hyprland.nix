{ config, lib, ... }:

{
  # HYPRLAND - a 100% independent, dynamic tiling Wayland compositor.

  options = {
    hyprland.enable =
      lib.mkEnableOption "enables hyprland";
  };

  config = lib.mkIf config.hyprland.enable {
    wayland.windowManager.hyprland.enable = true;
  };

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
