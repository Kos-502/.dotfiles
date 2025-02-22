#                  _                           _     
#    _ __  __ _ __| |____ _ __ _ ___ ___  _ _ (_)_ __
#   | '_ \/ _` / _| / / _` / _` / -_|_-<_| ' \| \ \ /
#   | .__/\__,_\__|_\_\__,_\__, \___/__(_)_||_|_/_\_\
#   |_|                    |___/                     

{ pkgs, ... }:

{
  programs.neovim.extraPackages = with pkgs; [
    wl-clipboard
    luajitPackages.lua-lsp
    nil
  ];
}
