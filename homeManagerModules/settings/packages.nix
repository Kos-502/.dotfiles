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
    rofi-wayland
    swww
    hyprshot

    # Custom fonts
    nerd-fonts.jetbrains-mono
    nerd-fonts.fira-code

    # CLI tools
    oh-my-zsh
    figlet
    bat
    tree

    # Fun CLI apps
    tt

    # Desktop apps
    vesktop
  ];
}
