{ config, pkgs, inputs, ... }:

{
  # Enable home manager.
  programs.home-manager.enable = true;

  # Declare information about the user.
  home.username = "kos";
  home.homeDirectory = "/home/kos";
  
  # Declare installed packages.
  home.packages = with pkgs; [ ];

  # Link files to home directory.
  home.file = { };

  # Declare environment variables.
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  programs.neovim =
  let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {
    enable = true;

    extraPackages = with pkgs; [
      wl-clipboard

      luajitPackages.lua-lsp
      rnix-lsp
    ];

    plugins = with pkgs.vimPlugins; [
      # Line commenter plugin
      {
        plugin = comment-nvim;
        config = toLua "require(\"Comment\").setup()";
      }

      # LSP
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./nvim/plugin/lsp.lua;
      }
      
      # Gruvbox colorscheme
      {
        plugin = gruvbox-nvim;
        config = "colorscheme gruvbox";
      }

      # Lualine (better vim line)
      lualine-nvim
      nvim-web-devicons

      neodev-nvim

      # Code completion
      {
        plugin = nvim-cmp;
        config = toLuaFile ./nvim/plugin/cmp.lua;
      }

      cmp_luasnip
      cmp-nvim-lsp

      # Code snippets
      luasnip
      friendly-snippets

      # Telescope
      {
        plugin = telescope-nvim;
        config = toLuaFile ./nvim/plugin/telescope.lua;
      }

      vim-nix
      
      # Treesitter
      (nvim-treesitter.withPlugins (p: [
        p.tree-sitter-nix
        p.tree-sitter-vim
        p.tree-sitter-bash
        p.tree-sitter-lua
        p.tree-sitter-python
        p.tree-sitter-json
      ]))
    ];

    extraLuaConfig = ''
      ${builtins.readFile ./nvim/options.lua}
    '';
  };

  # ! ------------- CAUTION ------------- ! #

  # (Do NOT change under any circumstances!)
  # (Not even if you update home manager.)

  home.stateVersion = "24.11";

  # ! ------------- CAUTION ------------- ! #
}
