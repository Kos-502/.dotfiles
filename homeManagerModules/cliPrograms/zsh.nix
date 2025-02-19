{ ... }:

{
  programs.zsh = {
    enable = true;
    enableCompletion = true;

    sessionVariables = {
      EDITOR = "nvim";
    };

    shellAliases = {
      nixos-rbs = "nixos-rebuild switch --flake /home/kos/.dotfiles --use-remote-sudo";

      ls = "ls --group-directories-first --color=auto";
      ll = "ls -l --group-directories-first --color=auto";
      la = "ls -lA --group-directories-first --color=auto";
    };
  };
}
