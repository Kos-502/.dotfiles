{ config, ... }:

{
  imports = [
    ./system_settings.nix
    ./services.nix
    ./programs.nix
    ./user.nix
    ./packages.nix
  ];
}
