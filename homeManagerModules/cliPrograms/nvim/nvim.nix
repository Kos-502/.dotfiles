{ config, lib, ... }:

{
  # NEOVIM - a Vim-based text editor engineered for extensibility and usability.

  options = {
    nvim.enable =
      lib.mkEnableOption "enables neovim";
  };

  config = lib.mkIf config.nvim.enable {
    programs.neovim.enable = true;

    imports = [
      ./settings.nix
      ./extraPackages.nix
      ./plugins.nix
      ./miscellaneous.nix
    ];
  };
}
