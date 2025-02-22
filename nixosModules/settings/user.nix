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
