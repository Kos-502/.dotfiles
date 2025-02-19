pkgs:

{
  programs.kitty = {
    enable = true;

    font = {
      package = pkgs.terminus_font;
      name = "Terminus";
      size = 12;
    };

    settings = {
      enable_audio_bell = false;
    };
  };
}
