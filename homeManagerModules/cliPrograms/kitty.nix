{ pkgs, ... }:

{
  # KITTY - a fast, feature-rich, GPU based terminal emulator.

  # Enable this feature for access to font customization.
  fonts.fontconfig.enable = true;

  programs.kitty = {
    enable = true;

    shellIntegration.enableZshIntegration = true;

    font = {
      name = "Terminus (TTF)";
      package = pkgs.terminus_font_ttf;
      size = 14;
    };

    settings = {
      # Window
      window_padding_width = 0;

      # Cursor
      cursor_shape = "underline";
      cursor_shape_unfocused = "underline";
      cursor_underline_thickness = 2;
      cursor_blink_interval = 0;
      cursor_trail = 1;
      cursor_trail_decay = "0.1 0.4";

      # Mouse
      mouse_hide_wait = 1;

      # History
      update_check_interval = 0;
      scrollback_lines = 100000;

      # Miscellaneous
      enable_audio_bell = false;
      confirm_os_window_close = 0;
    };
  };
}
