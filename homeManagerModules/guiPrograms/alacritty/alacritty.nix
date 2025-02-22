{ config, lib, ... }:

{
  # ALACRITTY - a modern terminal emulator that comes with sensible defaults,
  # but allows for extensive configuration.

  options = {
    alacritty.enable =
      lib.mkEnableOption "enables alacritty";
  };

  config = lib.mkIf config.alacritty.enable {
    programs.alacritty.enable = true;

    imports = [
      ./appearance.nix
      ./theme.nix
      ./miscellaneous.nix
    ];
  };
}
