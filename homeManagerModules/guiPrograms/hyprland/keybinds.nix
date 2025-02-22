{ ... }:

{
  wayland.windowManager.hyprland.settings = let
    mod = "SUPER";

    terminal = "alacritty";
    menu = "rofi -show drun -show-icons";
  in
  {
    bind = [
      ### HYPRLAND

      # Exit the current session.
      "${mod}, M, exit"

      ### WINDOW
      
      # Actions:
      "${mod}, Q, killactive"
      "${mod}, F, togglefloating"

      # Dwindle-specific actions:
      "${mod}, S, togglesplit"
      "${mod}, P, pseudo"

      # Move to another window.
      "${mod}, J, movefocus, l"
      "${mod}, SEMICOLON, movefocus, r"
      "${mod}, L, movefocus, u"
      "${mod}, K, movefocus, d"

      ### APPLICATIONS

      "${mod}, C, exec, ${terminal}"
      "${mod}, R, exec, ${menu}"

      ### WORKSPACES

      # Move to another workspace.
      "${mod}, 1, workspace, 1"
      "${mod}, 2, workspace, 2"
      "${mod}, 3, workspace, 3"
      "${mod}, 4, workspace, 4"
      "${mod}, 5, workspace, 5"

      # Move a window to another workspace.
      "${mod} SHIFT, 1, movetoworkspace, 1"
      "${mod} SHIFT, 2, movetoworkspace, 2"
      "${mod} SHIFT, 3, movetoworkspace, 3"
      "${mod} SHIFT, 4, movetoworkspace, 4"
      "${mod} SHIFT, 5, movetoworkspace, 5"
    ];

    bindm = [
      ### WINDOW

      # Actions:
      "${mod}, mouse:272, movewindow"
      "${mod}, mouse:273, resizewindow"
    ];
  };
}
