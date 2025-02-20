{ ... }:

{
  # Set the Alacritty appearance settings.

  # Enable font configuration.
  fonts.fontconfig.enable = true;

  programs.alacritty = {
    window = {
      decorations = "None";
      dynamic_padding = true;
      padding = { x = 16; y = 16; };
    };
    
    cursor.style = {
      shape = "Block";
      blinking = "Never";
    };

    font = {
      size = 12;

      normal = {
        family = "JetBrainsMono Nerd Font";
        style = "Regular";
      };
    };
  };
}
