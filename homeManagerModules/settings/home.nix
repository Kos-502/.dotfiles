{ pkgs, ... }:

{
  programs.home-manager.enable = true;

  home = {
    username = "kos";
    homeDirectory = "/home/kos";

    sessionVariables = {
      EDITOR = "nvim";
    };

    packages = with pkgs; [
      ### HYPRLAND RELATED

      waybar
      rofi-wayland
      swww

      ### CUSTOM FONTS

      nerd-fonts.jetbrains-mono
    ];

    # !!! ----------- CAUTION ----------- !!! #

    # Set the home manager state version.
    # (Do NOT change under any circumstances!)
    # (Not even if you update home manager.)

    stateVersion = "24.11";

    # !!! ----------- CAUTION ----------- !!! #
  };
}
