#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# Regular 'enable' options program bundles
#
# (Most of the time they are enabled to prevent other
# programs/modules from breaking.)

{ ... }:

{
  imports = [
    ./hyprland.nix
    ./zsh.nix
    ./steam.nix
  ];
}
