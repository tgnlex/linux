{ config, lib, pkgs, ... }:
{
  imports =
    [ # Include the results of the hardware scan.
      ./config/boot/hardware-configuration.nix
      ./config/boot/system.nix
      ./config/boot/loader.nix
      ./config/os/i18n.nix
      ./config/os/devices.nix
      ./config/os/fonts.nix
      ./config/os/console.nix
      ./config/server/networking.nix
      ./config/server/services.nix
      ./config/server/programs.nix
      ./config/server/users.nix
      ./packages.nix
    ];

  time.timeZone = "NorthAmerica/NewYork";
  nix = {
    package = pkgs.nixVersions.latest;
    trustedBinaryCaches = [ 
      "http://cache.nixos.org" 
    ];
    binaryCaches = [
      "http://cache.nixos.org"
    ];
    gc.automatic = false;
  };

}
