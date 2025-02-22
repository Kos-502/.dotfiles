#    _  __       _     
#   | |/ _| _ _ (_)_ __
#   | |  _|| ' \| \ \ /
#   |_|_|(_)_||_|_/_\_\

# LF - a terminal file manager written
#      in Go with a heavy inspiration from ranger

{ config, lib, ... }:

{
  options = {
    lf.enable =
      lib.mkEnableOption "enables lf";
  };

  config = lib.mkIf config.lf.enable {
    programs.lf.enable = true;
  };
}
