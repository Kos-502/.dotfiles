#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

{ ... }:

{
  imports = [
    ./battery.nix
  ];

  programs.waybar.settings.miniBar = {
    layer = "top";
    position = "top";

    modules-left = [
      "hyprland/mode"
      "hyprland/workspaces"
      "custom/arrow10"
      "hyprland/window"
    ];

    modules-right = [
      "custom/arrow9"
		  "pulseaudio"
		  "custom/arrow8"
		  "network"
		  "custom/arrow7"
		  "memory"
		  "custom/arrow6"
		  "cpu"
		  "custom/arrow5"
		  "temperature"
		  "custom/arrow4"
		  "battery"
		  "custom/arrow3"
		  "hyprland/language"
		  "custom/arrow2"
		  "tray"
		  "clock#date"
		  "custom/arrow1"
		  "clock#time"
    ];
  };
}
