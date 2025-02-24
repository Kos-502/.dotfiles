#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# GREETD - a system login and authentication
#          daemon designed for Wayland
#          display managers

{ ... }: 

{
  services.greetd.enable = true;

  imports = [
    ./config.nix
    ./greeter.nix
  ];
}
