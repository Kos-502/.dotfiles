_:

{
  # RTKIT - system service, which hands out realtime scheduling priority
  # to user processes on demand

  # For example, PulseAudio and PipeWire use this to acquire realtime priority.
  # (I.e. it is necessary for accurate sound.)

  security.rtkit.enable = true;
}
