#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# STEAM - games

{ config, lib, ... }:

{
  options = {
    steam.enable =
      lib.mkEnableOption "enables steam";
  };

  config = lib.mkIf config.steam.enable {
    programs.steam.enable = true;
  };
}
