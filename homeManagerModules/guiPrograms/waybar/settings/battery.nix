#    _          _   _                       _     
#   | |__  __ _| |_| |_ ___ _ _ _  _   _ _ (_)_ __
#   | '_ \/ _` |  _|  _/ -_) '_| || |_| ' \| \ \ /
#   |_.__/\__,_|\__|\__\___|_|  \_, (_)_||_|_/_\_\
#                               |__/              

{ ... }:

{
  programs.waybar.settings.miniBar.battery = {
    interval = 10;

    states = {
      warning = 30;
      critical = 15;
    };

		format = "{icon} {capacity}% ({time})";
    format-time = "{H}:{M:02}";
		format-charging = " {capacity}% ({time})";
		format-charging-full = " {capacity}%";
		format-full = "{icon} {capacity}%";
		format-alt = "{icon} {power}W";
		format-icons= [
			""
			""
			""
			""
			""
		];

		tooltip = false;
  };
}
