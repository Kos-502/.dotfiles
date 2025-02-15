{ config, lib, pkgs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nixosModules/default.nix
  ];
}
