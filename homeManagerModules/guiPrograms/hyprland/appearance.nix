{ ... }:

{
  # Import the available layouts.
  imports = [ ./layouts.nix ];

  # Define the appearance of Hyprland.

  wayland.windowManager.hyprland.settings = let
    gruvbox = {
      green_bright = "b8bb26";
      bg_1 = "3c3836";
    };
  in
  {
    general = {
      # Set the layout of windows.
      layout = "dwindle";

      # Set the gaps between windows.
      gaps_in = 10;
      gaps_out = 20;

      # Set the border thickness.
      border_size = 3;

      # Set the colors of the border.
      "col.active_border" = "rgb(${gruvbox.green_bright})";
      "col.inactive_border" = "rgb(${gruvbox.bg_1})";

      # Disable window tearing.
      allow_tearing = false;
    };

    decoration = {
      # Set the rounding of a window.
      rounding = 0;
    };

    # This is to get rid of those
    # default wallpapers Hyprland comes with.
    misc = {
      force_default_wallpaper = true;
      disable_hyprland_logo = true;
    };
  };
}
