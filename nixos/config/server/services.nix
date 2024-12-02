{config, lib, pkgs, ...}:
{
  systemd.services.xe-daemon.enable = false;
 
  services = {
    ntp.enable = true;
    nscd.enable = true;
    printing.enable = true;
    libinput.enable = true;
    openssh.enable = true;
    xserver = {
      enable = true;      
      videoDrivers = [ "intel" ];
      xkb = {
        layout = "us";
        options = "eurosign:e,caps:escape";
      };
    };
    desktopManager.plasma6.enable = true;
    displayManager = {
      defaultSession = "plasma";
      sddm = {
        enable = true;
      };
    };
  };
}
