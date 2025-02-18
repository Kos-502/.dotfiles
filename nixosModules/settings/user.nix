_:

{
  # Define the main system user.
  users.users.kos = {
    isNormalUser = true;
    description = "Kos";
    home = "/home/kos";

    extraGroups = [
      "wheel"          # Allows access to sudo commands.
      "networkmanager" # Allows access to networking configuration.
    ];
  };
}
