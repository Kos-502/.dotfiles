{ ... }:

{
  # Define every used keybind.

  wayland.windowManager.hyprland.settings = {
    "$mod" = "SUPER";

    "$terminal" = "alacritty";
    "$menu" = "rofi -show drun -show-icons";
    "$fileManager" = "lf";

    bind = [
      ### HYPRLAND

      # Exit the current session.
      "$mod, M, exit"

      ### WINDOW
      
      # Actions:
      "$mod, C, killactive"
      "$mod, V, togglefloating"

      # Dwindle-specific actions:
      "$mod, J, togglesplit"
      "$mod, P, pseudo"

      # Move to another window.
      "$mod, left, movefocus, l"
      "$mod, right, movefocus, r"
      "$mod, up, movefocus, u"
      "$mod, down, movefocus, d"

      ### APPLICATIONS

      "$mod, Q, exec, $terminal"
      "$mod, R, exec, $menu"
      "$mod, F, exec, $fileManager"

      ### WORKSPACES

      # Move to another workspace.
      "$mod, 1, workspace, 1"
      "$mod, 2, workspace, 2"
      "$mod, 3, workspace, 3"
      "$mod, 4, workspace, 4"
      "$mod, 5, workspace, 5"

      # Move a window to another workspace.
      "$mod SHIFT, 1, movetoworkspace, 1"
      "$mod SHIFT, 2, movetoworkspace, 2"
      "$mod SHIFT, 3, movetoworkspace, 3"
      "$mod SHIFT, 4, movetoworkspace, 4"
      "$mod SHIFT, 5, movetoworkspace, 5"

      # Special workspace
      # (A workspace where you can move windows that
      # you regularly access but don't want to waste
      # an entire workspace for.)
      "$mod, S, togglespecialworkspace, magic"
      "$mod SHIFT, S, movetoworkspace, special:magic"
    ];

    bindm = [
      ### WINDOW

      # Actions:
      "$mod, mouse:272, movewindow"
      "$mod, mouse:273, resizewindow"
    ];
  };
}
