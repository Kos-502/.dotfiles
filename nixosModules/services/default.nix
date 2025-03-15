#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# Services module bundle

{ ... }:

{
  imports = [
    ./greetd
    ./rtkit.nix
    ./pipewire.nix
    ./blueman.nix
  ];
}
