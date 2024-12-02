{config, lib, pkgs, ... }:
{
  programs = {
    zsh.enable = true;
    xonsh.enable = true;
    mtr.enable = true;
    gnupg.agent = {
      enable = true;
      enableSSHSupport = true;
    };
  };
}
