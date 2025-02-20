{ ... }:

{
  # ALACRITTY - a modern terminal emulator that comes with sensible defaults,
  # but allows for extensive configuration.

  # Import the custom Alacritty nix modules.
  imports = [
    ./appearance.nix
    ./theme.nix
  ];

  programs.alacritty = {
    enable = true;

    settings = {
      selection.save_to_clipboard = true;
      mouse.hide_when_typing = true;
    };
  };
}
