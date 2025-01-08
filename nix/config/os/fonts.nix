{config, lib, pkgs, ... }:

{
  fonts = {
    enableFontDir = true;
    enableGhostscriptFonts = true;
    fonts = with pkgs; [
      inconsolata
      fira-mono
      ubuntu_font_family
    ];
  };
}
