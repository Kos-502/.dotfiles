#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# SPICETIFY - a customizable spotify client
                                           
{ config, lib, pkgs, inputs, ... }:

{
  options = {
    spicetify.enable =
      lib.mkEnableOption "enables spicetify";
  };

  config = lib.mkIf config.spicetify.enable {
    programs.spicetify = let
      spicePkgs = inputs.spicetify-nix.legacyPackages.${pkgs.system};
    in
    {
      enable = true;
      theme = spicePkgs.themes.gruvbox;
    };
  };

  imports = [
    inputs.spicetify-nix.homeManagerModules.default
  ];
}
