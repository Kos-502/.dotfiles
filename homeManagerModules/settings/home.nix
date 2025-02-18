pkgs:

{
  # Expose home-manager to itself.
  programs.home-manager.enable = true;

  home = {
    # Declare information about the configuration.
    username = "kos";
    homeDirectory = "/home/kos";

    # Declare environment variables.
    sessionVariables = {
      EDITOR = "nvim";
    };

    # Declare user-wide installed packages.
    # packages = with pkgs; [ ]

    # !!! ----------- CAUTION ----------- !!! #

    # Set the home manager state version.
    # (Do NOT change under any circumstances!)
    # (Not even if you update home manager.)

    stateVersion = "24.11";

    # !!! ----------- CAUTION ----------- !!! #
  };
}
