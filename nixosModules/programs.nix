{ config, lib, pkgs, ... }:

{
  programs = {
    # Enable the hyprland window manager.
    hyprland.enable = true;

    # Enable the firefox browser.
    firefox.enable = true;

    # Enable the git version manager.
    git.enable = true;
  };
}
