#         _ _          _     
#    __ _(_) |_   _ _ (_)_ __
#   / _` | |  _|_| ' \| \ \ /
#   \__, |_|\__(_)_||_|_/_\_\
#   |___/                    

# GIT - a distributed version control system
#       that tracks versions of files

{ config, lib, ... }:

{
  options = {
    git.enable =
      lib.mkEnableOption "enables git";
  };

  config = lib.mkIf config.git.enable {
    programs.git.enable = true;
  };
}
