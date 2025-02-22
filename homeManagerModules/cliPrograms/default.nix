#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# CLI programs module bundles

{ ... }:

{
  imports = [
    ./zsh
    ./nvim
    ./git.nix
    ./lf.nix
  ];

  ### DEFAULT ENABLE STATE

  # (These can be turned off, if needed, in
  # other hosts' configurations.) 

  zsh.enable = true;
  git.enable = true;
  lf.enable = true;
  nvim.enable = true;
}
