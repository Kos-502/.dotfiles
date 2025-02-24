#                 __ _             _     
#    __ ___ _ _  / _(_)__ _   _ _ (_)_ __
#   / _/ _ \ ' \|  _| / _` |_| ' \| \ \ /
#   \__\___/_||_|_| |_\__, (_)_||_|_/_\_\
#                     |___/              

{ ... }:

{
  systemd.services.greetd.serviceConfig = {
    Type = "idle";

    StandardInput = "tty";
    StandardOutput = "tty";
    StandardError = "journal";

    TTYReset = true;
    TTYVHangup = true;
    TTYVTDisallocate = true;
  };
}
