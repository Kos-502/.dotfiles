#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# ROFI - an X11 pop-up window switcher, run dialog,
#        dmenu replacement, and more
                                           
{ config, lib, ... }:

{
  options = {
    rofi.enable =
      lib.mkEnableOption "enables rofi";
  };

  config = lib.mkIf config.rofi.enable {
    programs.rofi.enable = true;
  };

  imports = [
    ./plugins.nix
  ];
}
