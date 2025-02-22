#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# Hyprland modules bundle

# HYPRLAND - a 100% independent, dynamic tiling Wayland compositor.

{ config, lib, ... }:

{
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
