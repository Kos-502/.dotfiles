#           _                   _     
#    __ ___| |___ _ _ ___  _ _ (_)_ __
#   / _/ _ \ / _ \ '_(_-<_| ' \| \ \ /
#   \__\___/_\___/_| /__(_)_||_|_/_\_\
                                  
{ ... }:

{
  programs.waybar.style = ''
    @define-color black	#282828;
    @define-color red	#cc241d;
    @define-color green	#98971a;
    @define-color yellow	#d79921;
    @define-color blue	#458588;
    @define-color purple	#b16286;
    @define-color aqua	#689d6a;
    @define-color gray	#a89984;

    @define-color brgray	#928374;
    @define-color brred	#fb4934;
    @define-color brgreen	#b8bb26;
    @define-color bryellow	#fabd2f;
    @define-color brblue	#83a598;
    @define-color brpurple	#d3869b;
    @define-color braqua	#8ec07c;
    @define-color white	#ebdbb2;

    @define-color bg2	#504945;

    @define-color warning 	@bryellow;
    @define-color critical	@red;
    @define-color mode	@black;
    @define-color unfocused	@bg2;
    @define-color focused	@braqua;
    @define-color inactive	@purple;
    @define-color sound	@brpurple;
    @define-color network	@purple;
    @define-color memory	@braqua;
    @define-color cpu	@green;
    @define-color temp	@brgreen;
    @define-color layout	@bryellow;
    @define-color battery	@aqua;
    @define-color date	@black;
    @define-color time	@white;
  '';
}
