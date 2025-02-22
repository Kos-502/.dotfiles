#       _      __           _ _          _     
#    __| |___ / _|__ _ _  _| | |_   _ _ (_)_ __
#   / _` / -_)  _/ _` | || | |  _|_| ' \| \ \ /
#   \__,_\___|_| \__,_|\_,_|_|\__(_)_||_|_/_\_\

# Home-manager module bundles

{ ... }:

{
  imports = [
    ./cliPrograms
    ./guiPrograms
    ./settings
  ];
}
