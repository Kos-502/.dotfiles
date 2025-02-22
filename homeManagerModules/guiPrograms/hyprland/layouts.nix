#    _                    _             _     
#   | |__ _ _  _ ___ _  _| |_ ___  _ _ (_)_ __
#   | / _` | || / _ \ || |  _(_-<_| ' \| \ \ /
#   |_\__,_|\_, \___/\_,_|\__/__(_)_||_|_/_\_\
#           |__/                              

{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    dwindle = {
      pseudotile = true;
      preserve_split = true;
    };

    master = {
      new_status = "master";
    };
  };
}
