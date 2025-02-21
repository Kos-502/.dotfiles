{ lib, ... }:

{
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
}
