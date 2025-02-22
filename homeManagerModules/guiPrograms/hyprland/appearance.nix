{ ... }:

{
  imports = [ ./layouts.nix ];

  wayland.windowManager.hyprland.settings = let
    gruvbox = {
      green_bright = "b8bb26";
      bg_1 = "3c3836";
    };
  in
  {
    general = {
      layout = "dwindle";

      gaps_in = 10;
      gaps_out = 20;

      border_size = 3;

      "col.active_border" = "rgb(${gruvbox.green_bright})";
      "col.inactive_border" = "rgb(${gruvbox.bg_1})";

      allow_tearing = false;
    };

    decoration.rounding = 0;

    misc = {
      force_default_wallpaper = true;
      disable_hyprland_logo = true;
    };
  };
}
