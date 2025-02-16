{ config, lib, ... }:

{
  # Enable flakes.
  nix.settings.experimental-features = [ "nix-command" "flakes" ];

  # Configure the bootloader.
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };

  # Configure networking.
  networking = {
    hostName = "nixos";
    networkmanager.enable = true;
  };

  # Set the localization settings.
  time.timeZone = "Europe/Bucharest";
  i18n.defaultLocale = "en_US.UTF-8";

  # Remove predefined system aliases.
  environment.shellAliases = lib.mkForce { };

  # Enable sound.
  sound.enable = true;
  security.rtkit.enable = true;

  # ! ------------- CAUTION ------------- ! #

  # Set the system state version.
  # (Do NOT change under any circumstances!)

  system.stateVersion = "24.11";

  # ! ------------- CAUTION ------------- ! #
}
