_:

{
  # Bundle all the defined settings.

  imports = [
    ./bootloader.nix
    ./networking.nix
    ./localization.nix
    ./environment.nix
    ./user.nix
    ./miscellaneous.nix
  ];
}
