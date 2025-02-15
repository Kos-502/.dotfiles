{ config, lib, pkgs, ... }:

{
  programs = {

    # Enable the neovim text editor.
    neovim = {
      enable = true;
      
      defaultEditor = true;
      viAlias = true;
      vimAlias = true;
    };

    # Enable the hyprland window manager.
    hyprland.enable = true;

    # Enable the firefox browser.
    firefox.enable = true;

    # Enable the git version manager.
    git.enable = true;
  };
}
