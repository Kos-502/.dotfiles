{ pkgs, inputs }:

{
  # Expose home-manager to itself.
  programs.home-manager.enable = true;

  # Declare information about the user.
  home.username = "kos";
  home.homeDirectory = "/home/kos";
  
  # Declare installed packages.
  # home.packages = with pkgs; [ ];

  # Link files to home directory.
  home.file = { };

  # Declare environment variables.
  home.sessionVariables = {
    EDITOR = "nvim";
  };

  # Configure Neovim
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
      nil
    ];

    plugins = with pkgs.vimPlugins; [
      # Line commenter
      {
        plugin = comment-nvim;
        config = toLua "require(\"Comment\").setup()";
      }

      # LSP
      {
        plugin = nvim-lspconfig;
        config = toLuaFile ./nvim/plugin/lsp.lua;
      }
      
      # Neovim setup for init.lua
      neodev-nvim

      # Support for writing nix expressions in neovim
      vim-nix

      # Gruvbox colorscheme
      {
        plugin = gruvbox-nvim;
        config = "colorscheme gruvbox";
      }

      # Lualine (better vim line)
      lualine-nvim
      nvim-web-devicons

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

  programs.git.enable = true;
  programs.firefox.enable = true;

  wayland.windowManager.hyprland = {
    enable = true;
    package = inputs.hyprland.packages."${pkgs.system}".hyprland;
  };

  # !!! ----------- CAUTION ----------- !!! #

  # Set the home manager state version.
  # (Do NOT change under any circumstances!)
  # (Not even if you update home manager.)

  home.stateVersion = "24.11";

  # !!! ----------- CAUTION ----------- !!! #
}
