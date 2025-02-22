_:

{
  imports = [
    ./zsh.nix
    ./starship.nix
    ./git.nix
    ./lf.nix
    ./nvim/nvim.nix
  ];

  zsh.enable = true;
  starship.enable = true;
  git.enable = true;
  lf.enable = true;
  nvim.enable = true;
}
