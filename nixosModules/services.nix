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

    # Enable pipewire.
    pipewire = {
      enable = true;
      alsa.enable = true;
      alsa.support32Bit = true;
      pulse.enable = true;
      jack.enable = true;
    };
  };
}
