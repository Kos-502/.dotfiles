#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\
                                           
# WAYBAR - GTK status bar made specifically for
#          wlroots compositors and supports Hyprland by default

{ config, lib, ... }:

{
  options = {
    waybar.enable =
      lib.mkEnableOption "enables waybar";
  };

  config = lib.mkIf config.waybar.enable {
    programs.waybar.enable = true;
  };

  imports = [
    ./settings
    ./style
  ];
}
