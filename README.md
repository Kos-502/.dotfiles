# .dotfiles

These are my system configuration files for NixOS.
I use home-manager and flakes.

Currently, my file structure is split into  regular NixOS modules and home-manager modules.
Both types of modules are bundled in module bundles labled `default.nix` and imported implicitly in `confiuration.nix`.
`confiuration.nix` is itself being imported in the flake that builds the system.
