#    _                       _     
#   | |_ _  _ _ __ _ _  _ _ (_)_ __
#   | ' \ || | '_ \ '_|| ' \| \ \ /
#   |_||_\_, | .__/_|(_)_||_|_/_\_\
#        |__/|_|                   

{ ... }:

{
  programs.waybar.settings.miniBar = {
    "hyprland/mode" = {
      format = "{}";
      tooltip = false;
    };

    "hyprland/workspaces" = {
      "disable-scroll-wraparound" = true;
      "enable-bar-scroll" = true;
      "smooth-scrolling-threshold" = 4;

      tooltip = "{name}";
    };

    "hyprland/window" = {
      format = "{}";
      "max-length" = 30;

      tooltip = false;
    };
  };
}
