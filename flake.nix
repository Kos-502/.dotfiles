#     __ _      _              _     
#    / _| |__ _| |_____   _ _ (_)_ __
#   |  _| / _` | / / -_)_| ' \| \ \ /
#   |_| |_\__,_|_\_\___(_)_||_|_/_\_\

{
  description = "This is Kos-502's NixOS configuration flake.";

  outputs = { nixpkgs, ... } @ inputs:
  {
    nixosConfigurations."MUUN" = nixpkgs.lib.nixosSystem {
      specialArgs = { inherit inputs; };
      modules = [ ./hosts/MUUN/configuration.nix ];
    };
  };

  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs?ref=nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    hyprland.url = "github:hyprwm/Hyprland";

    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
}
