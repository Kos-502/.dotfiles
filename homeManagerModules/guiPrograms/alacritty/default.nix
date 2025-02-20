{ ... }:

{
  # ALACRITTY - a modern terminal emulator that comes with sensible defaults,
  # but allows for extensive configuration.

  programs.alacritty.enable = true;

  # Import the custom Alacritty nix modules.
  imports = [
    ./appearance.nix
    ./theme.nix
    ./miscellaneous.nix
  ];
}
