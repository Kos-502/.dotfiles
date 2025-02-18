{ inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nixosModules/default.nix

    inputs.home-manager.nixosModules.home-manager
  ];

  programs.hyprland.enable = true;

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users.kos = import ./home.nix;
  };
}
