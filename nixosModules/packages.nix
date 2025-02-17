{ config, lib, pkgs, ... }:

{
  # Define the installed system packages.
  environment.systemPackages = with pkgs; [
    # Nixos related:
    home-manager

    # Hyprland related:
    waybar
    rofi-wayland
    swww

    # Development:
    kitty
    gcc
  ];
}
