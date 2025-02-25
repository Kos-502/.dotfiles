#                  _                           _     
#    _ __  __ _ __| |____ _ __ _ ___ ___  _ _ (_)_ __
#   | '_ \/ _` / _| / / _` / _` / -_|_-<_| ' \| \ \ /
#   | .__/\__,_\__|_\_\__,_\__, \___/__(_)_||_|_/_\_\
#   |_|                    |___/                     

# PACKAGE - a namespace that organizes a set of
#           related classes and interfaces (a.k.a. a 'program')

{ pkgs, ... }:

{
  home.packages = with pkgs; [
    # Hyprland related
    waybar
    rofi-wayland
    swww

    # Custom fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code

    # CLI tools
    oh-my-zsh
    figlet
    bat
    fastfetch

    # Fun CLI apps
    tt
  ];
}
