{ ... }:

{
  # Define the input options on Hyprland.

  wayland.windowManager.hyprland.settings = {
    input = {
      # Set the keyboard layout.
      kb_layout = "us";

      # Turn off window focus on mouse.
      follow_mouse = 0;

      touchpad.natural_scroll = true;
    };
  };
}
