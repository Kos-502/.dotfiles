{ inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nixosModules
    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."kos" = import ./homeManagerModules;
  };
}
