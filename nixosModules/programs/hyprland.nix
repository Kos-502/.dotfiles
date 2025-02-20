{ pkgs, inputs, ... }:

{
  # Hyprland is enabled in home-manager for the purposes of
  # exposing it to it's configuration space. This is where
  # it should be enabled originally.

  programs.hyprland = {
    enable = true;
    package = inputs.hyprland.packages."${pkgs.system}".hyprland;
  };
}
