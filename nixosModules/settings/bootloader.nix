#    _              _   _              _               _     
#   | |__  ___  ___| |_| |___  __ _ __| |___ _ _  _ _ (_)_ __
#   | '_ \/ _ \/ _ \  _| / _ \/ _` / _` / -_) '_|| ' \| \ \ /
#   |_.__/\___/\___/\__|_\___/\__,_\__,_\___|_|(_)_||_|_/_\_\

# BOOTLOADER - a program that loads an operating system (os)
#              when a computer is turned on

{ ... }:

{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
}
