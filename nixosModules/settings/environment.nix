#                _                            _          _     
#    ___ _ ___ _(_)_ _ ___ _ _  _ __  ___ _ _| |_   _ _ (_)_ __
#   / -_) ' \ V / | '_/ _ \ ' \| '  \/ -_) ' \  _|_| ' \| \ \ /
#   \___|_||_\_/|_|_| \___/_||_|_|_|_\___|_||_\__(_)_||_|_/_\_\

{ lib, pkgs, ... }:

{
  environment = {
    shellAliases = lib.mkForce { };

    systemPackages = with pkgs; [
      # NixOS related
      home-manager

      # Development tools
      python3
      gcc
    ];
  };
}
