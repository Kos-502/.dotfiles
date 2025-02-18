_:

{
  # PIPEWIRE - a low-latency, graph-based, processing engine and server,
  # for interfacing with audio and video devices.

  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}
