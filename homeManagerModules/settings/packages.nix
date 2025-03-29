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
    ### DAEMONS

    dunst # Notification daemon
    swww  # Wallpaper daemon

    ### FONTS

    nerd-fonts.fira-code

    ### CLI

    oh-my-zsh # ZSH prompt
    figlet    # ASCII font art
    bat       # Better cat
    tree      # File tree displayer
    epy       # Ebook reader
    eza       # Better ls
    tt        # Touch typing practice
    tomato-c  # Pomodoro timer

    ### GUI

    sway-contrib.grimshot # Screenshot tool
    rofi-wayland          # Applications menu
    vesktop               # Better discord
  ];
}
