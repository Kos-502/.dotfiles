{ config, lib, pkgs, ... }:

{
  # ZSH - an extended version of the Bourne Shell (sh).

  options = {
    zsh.enable =
      lib.mkEnableOption "enables zsh";
  };

  config = lib.mkIf config.zsh.enable {
    programs.zsh = {
      enable = true;
      enableCompletion = true;

      shellAliases = let
        flakePath = "/home/kos/.dotfiles/";
      in
      {
        nixos-rbs = "nixos-rebuild switch --flake ${flakePath} --use-remote-sudo";

        ls = "ls --group-directories-first --color=auto";
        ll = "ls -l --group-directories-first --color=auto";
        la = "ls -lA --group-directories-first --color=auto";

        ".." = "cd ..";
        "..." = "cd ../..";
        "...." = "cd ../../..";
      };

      initExtra = ''eval "$(${pkgs.starship}/bin/starship init zsh)"'';
    };
  };
}
