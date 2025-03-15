#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# System settings module bundle

{ ... }:

{
  imports = [
    ./bootloader.nix
    ./system.nix
    ./networking.nix
    ./localization.nix
    ./nix.nix
    ./environment.nix
    ./user.nix
    ./bluetooth.nix
  ];
}
