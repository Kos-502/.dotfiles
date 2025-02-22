{ config, lib, ... }:

{
  # LF - a terminal file manager written in Go
  # with a heavy inspiration from ranger.

  options = {
    lf.enable =
      lib.mkEnableOption "enables lf";
  };

  config = lib.mkIf config.lf.enable {
    programs.lf.enable = true;
  };
}
