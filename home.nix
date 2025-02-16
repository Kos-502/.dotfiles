{ config, pkgs, ... }:

{
  # Enable home manager.
  programs.home-manager.enable = true;

  # Declare information about the user.
  home.username = "kos";
  home.homeDirectory = "/home/kos";
  
  # Declare installed packages.
  home.packages = with pkgs; [ ];

  # Link files to home directory.
  home.file = { };

  # Declare environment variables.
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # ! ------------- CAUTION ------------- ! #

  # (Do NOT change under any circumstances!)
  # (Not even if you update home manager.)

  home.stateVersion = "24.11";

  # ! ------------- CAUTION ------------- ! #
}
