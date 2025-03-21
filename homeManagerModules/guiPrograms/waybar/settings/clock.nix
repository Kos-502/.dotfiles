#       _         _          _     
#    __| |___  __| |__  _ _ (_)_ __
#   / _| / _ \/ _| / /_| ' \| \ \ /
#   \__|_\___/\__|_\_(_)_||_|_/_\_\

{ ... }:

{
  programs.waybar.settings.miniBar = {
    "clock#time" = {
      interval = 10;
      format = "{:%H:%M}";
      tooltip = false;
    };

    "clock#date" = {
      interval = 20;
      format = "{:%e %b %Y}";
      tooltip = false;
    };
  };
}
