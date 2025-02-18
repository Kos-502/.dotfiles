_:

{
  # BOOTLOADER - a program that loads an operating system
  # when a computer is turned on.

  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
  };
}
