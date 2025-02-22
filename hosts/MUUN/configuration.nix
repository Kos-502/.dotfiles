# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #
#                                                          #
#       ████     ████ ██     ██ ██     ██ ████     ██      #
#      ░██░██   ██░██░██    ░██░██    ░██░██░██   ░██      #
#      ░██░░██ ██ ░██░██    ░██░██    ░██░██░░██  ░██      #
#      ░██ ░░███  ░██░██    ░██░██    ░██░██ ░░██ ░██      #
#      ░██  ░░█   ░██░██    ░██░██    ░██░██  ░░██░██      #
#      ░██   ░    ░██░██    ░██░██    ░██░██   ░░████      #
#      ░██        ░██░░███████ ░░███████ ░██    ░░███      #
#      ░░         ░░  ░░░░░░░   ░░░░░░░  ░░      ░░░       #
#                                                          #
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #
#
#      Deutsch --- Modulare Universelle Umfeld auf NixOS
#      English --- Modular Universal Environment on NixOS



#                 __ _                    _   _                 _     
#    __ ___ _ _  / _(_)__ _ _  _ _ _ __ _| |_(_)___ _ _    _ _ (_)_ __
#   / _/ _ \ ' \|  _| / _` | || | '_/ _` |  _| / _ \ ' \ _| ' \| \ \ /
#   \__\___/_||_|_| |_\__, |\_,_|_| \__,_|\__|_\___/_||_(_)_||_|_/_\_\
#                     |___/                                           

{ inputs, ... }:

{
  networking.hostName = "MUUN";

  imports = [
    inputs.home-manager.nixosModules.home-manager

    ./hardware-configuration.nix
    ../../nixosModules
  ];

  home-manager = {
    extraSpecialArgs = { inherit inputs; };
    users."kos" = import ../../homeManagerModules;
  };
}
