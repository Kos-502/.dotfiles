#                           _     
#    _  _ ___ ___ _ _  _ _ (_)_ __
#   | || (_-</ -_) '_|| ' \| \ \ /
#    \_,_/__/\___|_|(_)_||_|_/_\_\

{ pkgs, ... }:

{
  users.users.kos = {
    isNormalUser = true;
    description = "Kos";
    home = "/home/kos";
    shell = pkgs.zsh;
    extraGroups = [ "wheel" "networkmanager" ];
  };
}
