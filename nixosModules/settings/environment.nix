{ lib, pkgs, ... }:

{
  environment = {
    shellAliases = lib.mkForce { };

    systemPackages = with pkgs; [
      ### NIXOS RELATED

      home-manager

      ### BUILD TOOLS

      gcc
    ];
  };
}
