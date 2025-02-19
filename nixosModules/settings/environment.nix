{ lib, pkgs, ... }:

{
  environment = {
    # Reset any system aliases.
    shellAliases = lib.mkForce { };

    # Declare installed system-wide packages.
    systemPackages = with pkgs; [
      home-manager

      waybar
      rofi-wayland
      swww

      kitty
      gcc
    ];
  };
}
