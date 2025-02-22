#        _   _   _ _          _     
#    _ _| |_| |_(_) |_   _ _ (_)_ __
#   | '_|  _| / / |  _|_| ' \| \ \ /
#   |_|  \__|_\_\_|\__(_)_||_|_/_\_\

# RTKIT - system service that hands out realtime
#         scheduling priority to user processes on demand
#
#       - for example, it is used by PulseAudio and PipeWire to
#         acquire realtime priority (i.e. accurate sound)

{ ... }: { security.rtkit.enable = true; }
