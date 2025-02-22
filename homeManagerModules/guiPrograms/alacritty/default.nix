#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# Alacritty modules bundle

# ALACRITTY - a modern terminal emulator that comes with 
#             sensible defaults, but allows for
#             extensive configuration

{ config, lib, ... }:

{
  options = {
    alacritty.enable =
      lib.mkEnableOption "enables alacritty";
  };

  config = lib.mkIf config.alacritty.enable {
    programs.alacritty.enable = true;
  };

  imports = [
    ./appearance.nix
    ./theme.nix
    ./misc.nix
  ];
}
