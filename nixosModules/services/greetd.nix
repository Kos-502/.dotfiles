{ pkgs, ... }: 

{
  # GREETD - a system login and authentication daemon
  # designed for Wayland display managers.

  services.greetd = {
    enable = true;

    settings = {
      default_session = let
        tuigreet = "${pkgs.greetd.tuigreet}/bin/tuigreet";
        timeFormat = "[%B %Y, %A %d ##### %I:%M %p]";
        greeting = "Welcome! If you are not the owner of this laptop, please leave it alone. =]";
        session = "Hyprland";
      in
      {
        command = "${tuigreet} --time --time-format '${timeFormat}' --greeting '${greeting}' --cmd ${session}";
        user = "greeter";
      };
    };
  };
}
