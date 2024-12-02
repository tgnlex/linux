{config, lib, pkgs, ... }: 
{
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    grub.device="/dev/nvme0n1";
  };
}
