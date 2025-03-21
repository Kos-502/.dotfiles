#             _                  _          _     
#    _ _  ___| |___ __ _____ _ _| |__  _ _ (_)_ __
#   | ' \/ -_)  _\ V  V / _ \ '_| / /_| ' \| \ \ /
#   |_||_\___|\__|\_/\_/\___/_| |_\_(_)_||_|_/_\_\
                                              
{ ... }:

{
  programs.waybar.settings.miniBar.network = {
    interval = 5;

    format-wifi = " {essid} ({signalStrength}%)";
		format-ethernet = " {ifname}";
		format-disconnected = "No connection";
		format-alt = " {ipaddr}/{cidr}";
    
    tooltip = false;
  };
}
