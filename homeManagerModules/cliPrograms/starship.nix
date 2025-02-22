{ config, lib, ... }:

{
  options = {
    starship.enable =
      lib.mkEnableOption "enables starship";
  };

  config = lib.mkIf config.starship.enable {
    programs.starship = {
      enable = true;

      settings = {
        add_newline = true;

        format = lib.strings.concatStrings [
          "$directory"
          "$git_branch"
          "$git_status"

          "$python"
          "$jobs"
          "$cmd_duration"

          "$character"
        ];
      };
    };
  };
}
