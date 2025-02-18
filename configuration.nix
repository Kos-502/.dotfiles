{ inputs, ... }:

{
  imports = [
    ./hardware-configuration.nix
    ./nixosModules/default.nix

    inputs.home-manager.nixosModules.home-manager
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."kos" = {
      modules = [
        ./home.nix
        ./homeManagerModules/default.nix
      ];
    };
  };
}
