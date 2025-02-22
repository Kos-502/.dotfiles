#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# Neovim modules bundle

# NEOVIM - a Vim-based text editor engineered
#          for extensibility and usability

{ config, lib, ... }:

{
  options = {
    nvim.enable =
      lib.mkEnableOption "enables neovim";
  };

  config = lib.mkIf config.nvim.enable {
    programs.neovim.enable = true;
  };

  imports = [
    ./settings.nix
    ./packages.nix
    ./plugins.nix
    ./luaConfig.nix
  ];
}

