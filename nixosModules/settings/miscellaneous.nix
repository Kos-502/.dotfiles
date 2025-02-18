lib:

{
  # Enable nix flakes.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # !!! ----------- CAUTION ----------- !!! #

  # Set the system state version.
  # (Do NOT change under any circumstances!)

  system.stateVersion = "24.11";

  # !!! ----------- CAUTION ----------- !!! #
}
