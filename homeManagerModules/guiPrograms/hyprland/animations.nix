#              _            _   _                    _     
#    __ _ _ _ (_)_ __  __ _| |_(_)___ _ _  ___  _ _ (_)_ __
#   / _` | ' \| | '  \/ _` |  _| / _ \ ' \(_-<_| ' \| \ \ /
#   \__,_|_||_|_|_|_|_\__,_|\__|_\___/_||_/__(_)_||_|_/_\_\

{ ... }:

{
  wayland.windowManager.hyprland.settings.animations = {
    enabled = true;

    bezier = "easeOutQuart, 0.190, 0.91, 0.37, 1";

    animation = [
      "windowsIn, 1, 5, easeOutQuart, popin 0%"
      "windowsOut, 1, 5, easeOutQuart, popin 60%"
      "windowsMove, 1, 5, easeOutQuart, popin 60%"
      "windows, 1, 5, easeOutQuart"

      "layers, 1, 5, easeOutQuart, popin 70%"

      "fadeIn, 1, 5, easeOutQuart"
      "fadeOut, 1, 5, easeOutQuart"
      "fadeSwitch, 0, 5, easeOutQuart"
      "fadeShadow, 0, 5, easeOutQuart"
      "fadeDim, 1, 5, easeOutQuart"
      "fadeLayers, 1, 5, easeOutQuart"
      "fade, 1, 5, easeOutQuart"

      "border, 0, 5, easeOutQuart"
      "borderangle, 0, 5, easeOutQuart"

      "specialWorkspace, 1, 5, easeOutQuart, slidevert"
      "workspaces, 1, 5, easeOutQuart, slide"
    ];
  };
}
