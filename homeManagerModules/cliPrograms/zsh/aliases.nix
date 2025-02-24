#         _ _                        _     
#    __ _| (_)__ _ ___ ___ ___  _ _ (_)_ __
#   / _` | | / _` (_-</ -_|_-<_| ' \| \ \ /
#   \__,_|_|_\__,_/__/\___/__(_)_||_|_/_\_\
                                       
# ALIAS - a replacement string that references a Linux command

{ ... }:

{
  programs.zsh.shellAliases = let
    flakePath = "/home/kos/.dotfiles";
    batTheme = "gruvbox-dark";
  in
  {
    nixos-rbs = ''
      nixos-rebuild switch \
      --flake ${flakePath} \
      --use-remote-sudo
    '';

    ls = "ls --group-directories-first --color=auto";
    ll = "ls --group-directories-first --color=auto -l";
    la = "ls --group-directories-first --color=auto -lA";

    cat = "bat --theme ${batTheme}";
  };
}
