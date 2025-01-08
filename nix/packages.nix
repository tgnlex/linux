{config, lib, pkgs, ...}:
{
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
   # editors #
     obsidian
     vscode
     neovim
     emacs
     vim
   # languages #
     purescript
     yamlscript
     python3
     jsonnet
     nodejs
     vlang
     tyson
     deno
     perl
     ruby
     php
     zig
     lua
     luau
     go
   # compilers 
     gcc     # C & C++ #
     gnumake # C & C++ #
     spago   # Purescript #
     purenix # Purescript #
   # package managers # 
     apt
     pipx
     conda
     zimfw
     cargo
     luarocks
   # shells & shell frameworks #
     zsh
     ksh
     oil
     bash
     tcsh
     fish
     xonsh
     elvish
     nushell
     powershell
     shellify 
     shellspec
   # databases #
     postgresql
     sqlite
     redis 
   # tools #
     neofetch
     figlet
     degit
     git
     tree
     mu
     cacert
     pass
     blueman
     ghostscript
     gimp
     cloc
     elfutils
     file
     glib
     gnupg
     htop
     jq
     mpv
     mupdf
     nmap
     netcat
     gnutls
     nitrogen
     openssl
     p7zip
     rxvt_unicode
     scrot
     sxiv
     unzip
     wget
     xscreensaver
     xsel
     neo
     fzf
     gzip
     gparted
     qtox
     leiningen
     sbt
     stumpwm
     curl
     docker
     salt
     steam
     # node packages # 
     nodePackages.typescript
     nodePackages.prettier
     nodePackages.gulp
     nodePackages.jake
     nodePackages.sass
     nodePackages.pm2
     nodePackages.ts-node
  ];
 }
