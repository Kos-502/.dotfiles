{ lib, pkgs, ... }:

{
  environment = {
    # Reset any system aliases.
    shellAliases = lib.mkForce { };

    # Declare installed system-wide packages.
    systemPackages = with pkgs; [
      # NixOS related:
      home-manager

      # Hyprland related:
      waybar
      rofi-wayland
      swww

      # Necessary for building:
      gcc
    ];
  };
}
