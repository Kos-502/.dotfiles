#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# ZSH modules bundle

# ZSH - an extended version of
#       the Bourne Shell (sh)

{ config, lib, ... }:

{
  options = {
    zsh.enable =
      lib.mkEnableOption "enables zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh.enable = true;
  };

  imports = [
    ./prompt.nix
    ./aliases.nix
    ./plugins.nix
  ];
}
