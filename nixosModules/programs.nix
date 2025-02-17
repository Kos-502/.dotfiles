{ config, lib, pkgs, inputs, ... }:

{
  programs = {
    # Enable the hyprland window manager.
    hyprland = {
      enable = true;
      package = inputs.hyprland.packages."${pkgs.system}".hyprland;
    };

    # Enable the firefox browser.
    firefox.enable = true;

    # Enable the git version manager.
    git.enable = true;
  };
}
