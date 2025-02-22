{ config, lib, ... }:

{
  # GIT - a distributed version control system that tracks versions of files.
  # (Can be used in conjunction with the popular website GitHub.)

  options = {
    git.enable =
      lib.mkEnableOption "enables git";
  };

  config = lib.mkIf config.git.enable {
    programs.git.enable = true;
  };
}
