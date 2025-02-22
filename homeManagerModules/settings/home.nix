#    _                         _     
#   | |_  ___ _ __  ___   _ _ (_)_ __
#   | ' \/ _ \ '  \/ -_)_| ' \| \ \ /
#   |_||_\___/_|_|_\___(_)_||_|_/_\_\

{ ... }:

{
  programs.home-manager.enable = true;

  home = {
    username = "kos";
    homeDirectory = "/home/kos";

    # !!! ----------- CAUTION ----------- !!! #

    # Do NOT change under any circumstances!
    # (Not even if you update home manager.)

    stateVersion = "24.11";

    # !!! ----------- CAUTION ----------- !!! #
  };
}
