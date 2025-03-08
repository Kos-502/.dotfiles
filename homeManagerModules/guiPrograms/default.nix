#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# GUI programs module bundle

{ ... }:

{
  imports = [
    ./alacritty
    ./firefox
    ./hyprland
    ./waybar
    ./spicetify
  ];

  ### DEFAULT ENABLE STATE

  # (These can be turned off, if needed, in
  # other hosts' configurations.) 

  alacritty.enable = true;
  firefox.enable = true;
  hyprland.enable = true;
  waybar.enable = true;
  spicetify.enable = true;
}
