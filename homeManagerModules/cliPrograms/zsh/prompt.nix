#                            _          _     
#    _ __ _ _ ___ _ __  _ __| |_   _ _ (_)_ __
#   | '_ \ '_/ _ \ '  \| '_ \  _|_| ' \| \ \ /
#   | .__/_| \___/_|_|_| .__/\__(_)_||_|_/_\_\
#   |_|                |_|                    

{ ... }:

{
  programs.zsh = {
    enableCompletion = true;
    autosuggestion.enable = true;
    syntaxHighlighting.enable = true;

    # ohMyZsh = {
    #   enable = true;
    #   theme = "robbyrussell";
    # };
  };
}
