{ pkgs, ... }:

{
  programs.neovim = let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in
  {
    enable = true;

    # Declare the packages installed alongside neovim.
    extraPackages = with pkgs; [
      wl-clipboard
      luajitPackages.lua-lsp
      nil
    ];

    # Declare the plugins that neovim uses.
    plugins = with pkgs.vimPlugins; [
      # Line commenter
      {
        plugin = comment-nvim;
        config = toLua "require(\"Comment\").setup()";
      }

      # LSP
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./plugin/lsp.lua;
      }
      
      # Neovim setup for init.lua
      neodev-nvim

      # Support for writing nix expressions in neovim
      vim-nix

      # Gruvbox colorscheme
      {
        plugin = gruvbox-nvim;
        config = toLuaFile ./plugin/gruvbox.lua;
      }

      # Lualine (better vim line)
      lualine-nvim
      nvim-web-devicons

      # Code completion
      {
        plugin = nvim-cmp;
        config = toLuaFile ./plugin/cmp.lua;
      }

      cmp_luasnip
      cmp-nvim-lsp

      # Code snippets
      luasnip
      friendly-snippets

      # Telescope
      {
        plugin = telescope-nvim;
        config = toLuaFile ./plugin/telescope.lua;
      }
      
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

    # Include the options neovim uses.
    extraLuaConfig = ''
      ${builtins.readFile ./options.lua}
    '';
  };
}
