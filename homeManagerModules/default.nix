_:

{
  # Bundle all the home-manager module bundles.

  imports = [
    ./cliPrograms
    ./guiPrograms
    ./settings/home.nix
  ];
}
