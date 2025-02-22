#         _                  _                _     
#    _ __(_)_ __  _____ __ _(_)_ _ ___   _ _ (_)_ __
#   | '_ \ | '_ \/ -_) V  V / | '_/ -_)_| ' \| \ \ /
#   | .__/_| .__/\___|\_/\_/|_|_| \___(_)_||_|_/_\_\
#   |_|    |_|                                      

# PIPEWIRE - a low-latency, graph-based, processing
#            engine and server for interfacing with
#            audio and video devices

{ ... }:

{
  services.pipewire = {
    enable = true;
    alsa.enable = true;
    alsa.support32Bit = true;
    pulse.enable = true;
    jack.enable = true;
  };
}
