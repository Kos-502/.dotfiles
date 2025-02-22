#                                                         _     
#    __ _ _ __ _ __  ___ __ _ _ _ __ _ _ _  __ ___   _ _ (_)_ __
#   / _` | '_ \ '_ \/ -_) _` | '_/ _` | ' \/ _/ -_)_| ' \| \ \ /
#   \__,_| .__/ .__/\___\__,_|_| \__,_|_||_\__\___(_)_||_|_/_\_\
#        |_|  |_|                                               

{ ... }:

{
  fonts.fontconfig.enable = true;

  programs.alacritty.settings = {
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
