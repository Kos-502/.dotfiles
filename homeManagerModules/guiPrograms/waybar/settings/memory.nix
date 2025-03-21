#                                        _     
#    _ __  ___ _ __  ___ _ _ _  _   _ _ (_)_ __
#   | '  \/ -_) '  \/ _ \ '_| || |_| ' \| \ \ /
#   |_|_|_\___|_|_|_\___/_|  \_, (_)_||_|_/_\_\
#                            |__/              

{ ... }:

{
  programs.waybar.settings.miniBar.memory = {
    interval = 5;

    states = {
      warning = 70;
      critical = 90;
    };

    format = " {used:0.1f}G/{total:0.1f}G";

    tooltip = false;
  };
}
