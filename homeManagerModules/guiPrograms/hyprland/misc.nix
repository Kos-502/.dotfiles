#          _               _     
#    _ __ (_)___ __   _ _ (_)_ __
#   | '  \| (_-</ _|_| ' \| \ \ /
#   |_|_|_|_/__/\__(_)_||_|_/_\_\

{ ... }:

{
  wayland.windowManager.hyprland.settings = {
    env = [
      "XCURSOR_SIZE, 24"
      "HYPRCURSOR_SIZE, 24"
    ];

    windowrulev2 = [
      "suppressevent maximize, class:.*"
      "nofocus,class:^$,title:^$,xwayland:1,floating:1,fullscreen:0,pinned:0"
    ];
  };
}
