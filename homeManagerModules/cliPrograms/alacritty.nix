{ ... }:

{
  # ALACRITTY - a modern terminal emulator that comes with sensible defaults,
  # but allows for extensive configuration.

  programs.alacritty = {
    enable = true;

    settings = {
      # Clipboard
      selection.save_to_clipboard = true;

      # Cursor
      cursor.style = {
        shape = "Block";
        blinking = "Never";
      };

      font = {
        size = 11;
        normal = {
          family = "Terminus";
          style = "Regular";
        };
      };
    };
  };
}
