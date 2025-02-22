{ pkgs, ... }:

{
  programs.neovim.extraPackages = with pkgs; [
    wl-clipboard
    luajitPackages.lua-lsp
    nil
  ];
}
