{ pkgs, ... }:

{
  wayland.windowManager.hyprland.settings = let
    startupScript = pkgs.pkgs.writeShellScriptBin "start" ''
      waybar &
      swww-daemon &
      swww restore
    '';
  in
  {
    exec-once = ''${startupScript}/bin/start'';
  };
}
