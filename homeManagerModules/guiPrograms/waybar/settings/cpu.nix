#                        _     
#    __ _ __ _  _   _ _ (_)_ __
#   / _| '_ \ || |_| ' \| \ \ /
#   \__| .__/\_,_(_)_||_|_/_\_\
#      |_|                     

{ ... }:

{
  programs.waybar.settings.miniBar.cpu = {
    interval = 5;

    states = {
			warning = 70;
			critical = 90;
    };

    format = " {usage}%";
		format-alt = " {load}";

    tooltip = false;
  };
}
