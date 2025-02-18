pkgs: 

{
  # GREETD - a system login and authentication daemon
  # designed for Wayland display managers.

  services.greetd = {
    enable = true;

    settings = {
      default_session = let
        session = "Hyprland";
      in
      {
        command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd ${session}";
        user = "greeter";
      };
    };
  };
}
