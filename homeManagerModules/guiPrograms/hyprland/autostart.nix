#              _          _            _          _     
#    __ _ _  _| |_ ___ __| |_ __ _ _ _| |_   _ _ (_)_ __
#   / _` | || |  _/ _ (_-<  _/ _` | '_|  _|_| ' \| \ \ /
#   \__,_|\_,_|\__\___/__/\__\__,_|_|  \__(_)_||_|_/_\_\

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
