{ ... }:

{
  imports = [
    ./alacritty/alacritty.nix
    ./firefox/firefox.nix
    ./hyprland/hyprland.nix
  ];

  alacritty.enable = true;
  firefox.enable = true;
  hyprland.enable = true;
}
