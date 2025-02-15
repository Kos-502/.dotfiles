{ config, lib, pkgs, ... }:

{
  services = {

    # Enable the greetd service (TUIgreet).
    greetd = {
      enable = true;

      settings = {
        default_session =
        let
          session = "Hyprland";
        in
        {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --time --cmd ${session}";
          user = "greeter";
        };
      };
    };
  };
}
