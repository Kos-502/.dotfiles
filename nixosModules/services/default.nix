_:

{
  # Bundle all the defined services.

  imports = [
    ./greetd.nix
    ./rtkit.nix
    ./pipewire.nix
  ];
}
