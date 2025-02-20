_:

{
  # Bundle all the nixos module bundles.

  imports = [
    ./services
    ./settings
    ./programs
  ];
}
