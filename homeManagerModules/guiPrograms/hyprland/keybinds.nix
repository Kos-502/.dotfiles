{ ... }:

{
  wayland.windowManager.hyprland.settings = let
    mod = "SUPER";
    terminal = "alacritty";
    menu = "rofi -show drun -show-icons";
  in
  {
    bindm = [
      # Terminal
      "${mod}, Q, exec, ${terminal}"
      
      # Window
      "${mod}, C, killactive"
      "${mod}, V, togglefloating"

      "${mod}, left, movefocus, l"
      "${mod}, right, movefocus, r"
      "${mod}, up, movefocus, u"
      "${mod}, down, movefocus, d"

      # Hyprland
      "${mod}, M, exit"

      # Menu
      "${mod}, R, exec, ${menu}"
    ];
  };
}
