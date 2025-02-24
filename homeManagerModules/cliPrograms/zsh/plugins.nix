#         _           _                _     
#    _ __| |_  _ __ _(_)_ _  ___  _ _ (_)_ __
#   | '_ \ | || / _` | | ' \(_-<_| ' \| \ \ /
#   | .__/_|\_,_\__, |_|_||_/__(_)_||_|_/_\_\
#   |_|         |___/                        

{ pkgs, ... }:

{
  programs.zsh.plugins = with pkgs; [
    {
      name = "zsh-powerlevel10k";
      src = "${zsh-powerlevel10k}/share/zsh-powerlevel10k";
      file = "share/zsh-powerlevel10k/powerlevel10k.zsh-theme";
    }
  ];
}
