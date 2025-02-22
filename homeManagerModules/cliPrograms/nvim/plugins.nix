#         _           _                _     
#    _ __| |_  _ __ _(_)_ _  ___  _ _ (_)_ __
#   | '_ \ | || / _` | | ' \(_-<_| ' \| \ \ /
#   | .__/_|\_,_\__, |_|_||_/__(_)_||_|_/_\_\
#   |_|         |___/                        

{ pkgs, ... }:

{
  programs.neovim.plugins = let
    toLua = str: "lua << EOF\n${str}\nEOF\n";
    toLuaFile = file: "lua << EOF\n${builtins.readFile file}\nEOF\n";
  in with pkgs.vimPlugins;
  [
    {
      plugin = comment-nvim;
      config = toLua "require(\"Comment\").setup()";
    }

    {
      plugin = nvim-lspconfig;
      config = toLuaFile ./plugin/lsp.lua;
    }
      
    neodev-nvim
    vim-nix

    {
      plugin = gruvbox-nvim;
      config = toLuaFile ./plugin/gruvbox.lua;
    }

    lualine-nvim
    nvim-web-devicons

    {
      plugin = nvim-cmp;
      config = toLuaFile ./plugin/cmp.lua;
    }

    cmp_luasnip
    cmp-nvim-lsp
    luasnip
    friendly-snippets

    {
      plugin = telescope-nvim;
      config = toLuaFile ./plugin/telescope.lua;
    }
      
    (nvim-treesitter.withPlugins (p: [
      p.tree-sitter-nix
      p.tree-sitter-vim
      p.tree-sitter-bash
      p.tree-sitter-lua
      p.tree-sitter-python
      p.tree-sitter-json
    ]))
  ];
}
