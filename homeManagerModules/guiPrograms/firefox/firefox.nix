{ config, lib, ... }:

{
  # FIREFOX - a free and open source web browser.

  options = {
    firefox.enable =
      lib.mkEnableOption "enables firefox";
  };

  config = lib.mkIf config.firefox.enable {
    programs.firefox.enable = true;
  };
}
