{ config, lib, pkgs, ... }:

{
  # Define the installed system packages.
  environment.systemPackages = with pkgs; [
    # Hyprland related:
    waybar
    rofi-wayland
    swww

    # Development:
    kitty
  ];
}
