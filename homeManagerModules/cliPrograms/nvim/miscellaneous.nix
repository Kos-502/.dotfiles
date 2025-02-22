{ ... }:

{
  programs.neovim.extraLuaConfig = ''
    ${builtins.readFile ./options.lua}
  '';
}
