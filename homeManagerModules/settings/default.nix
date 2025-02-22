#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# Home-manager settings module bundle

{ ... }:

{
  imports = [
    ./home.nix
    ./variables.nix
    ./packages.nix
  ];
}
