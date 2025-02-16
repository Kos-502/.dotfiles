{ config, lib, pkgs, ... }:

{
  users.users = {
    # Define the main user.
    kos = {
      isNormalUser = true;
      home = "/home/kos";
      description = "Kos";
      extraGroups = [ "wheel" "networkmanager" ];
    };
  };
}
